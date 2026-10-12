"""Offline, format-aware Android resource and AXML parser; not a REA operation."""
import struct,json,zipfile,pathlib,hashlib,re
ROOT=pathlib.Path(__file__).parent
APK=ROOT.parents[2]/'apks/baibian-6.45.2.apk'
PARENT='ev_9852a76aaae2440b39b4ae7f452177ab0776dc387aa8611051bc6f61fc4f8113'
def u(b,p):return struct.unpack_from('<I',b,p)[0]
def h(b,p):return struct.unpack_from('<H',b,p)[0]
def chunks(b,p,end):
 while p<end:
  t,hs,s=struct.unpack_from('<HHI',b,p)
  assert s>=hs>=8 and p+s<=end,(p,t,hs,s,end)
  yield p,t,hs,s
  p+=s
 assert p==end

def pool(b,p):
 hs=h(b,p+2);cnt=u(b,p+8);utf=bool(u(b,p+16)&256);base=p+u(b,p+20);out=[]
 def length(p):
  if utf:
   n=b[p];p+=1
   if n&128:n=((n&127)<<8)|b[p];p+=1
  else:
   n=h(b,p);p+=2
   if n&32768:n=((n&32767)<<16)|h(b,p);p+=2
  return n,p
 for i in range(cnt):
  off=base+u(b,p+hs+i*4);n,q=length(off)
  if utf:n,q=length(q)
  s=b[q:q+n*(1 if utf else 2)].decode('utf-8' if utf else 'utf-16-le',errors='surrogatepass')
  s=s.encode('utf-16-le',errors='surrogatepass').decode('utf-16-le',errors='surrogatepass')
  out.append({'index':i,'offset':off,'value':s})
 return out
z=zipfile.ZipFile(APK);b=z.read('resources.arsc');globalpool=None;records=[]
for p,t,hs,sz in chunks(b,h(b,2),len(b)):
 if t==1:globalpool=pool(b,p)
 if t!=0x200:continue
 package=u(b,p+8);types=pool(b,p+u(b,p+268));keys=pool(b,p+u(b,p+276))
 for q,tt,hh,ss in chunks(b,p+hs,p+sz):
  if tt!=0x201:continue
  tid=b[q+8];flags=b[q+9];count=u(b,q+12);entries=q+u(b,q+16);config=b[q+20:q+hh].hex()
  assert flags==0,'Sparse/offset16 unsupported: explicit limitation'
  for i in range(count):
   rel=u(b,q+hh+i*4)
   if rel==0xffffffff:continue
   ep=entries+rel;es=h(b,ep);ef=h(b,ep+2);key=u(b,ep+4)
   rid=(package<<24)|(tid<<16)|i
   r={'id':f'0x{rid:08x}','type':types[tid-1]['value'],'name':keys[key]['value'],'entry_offset':ep,'config_hex':config,'complex':bool(ef&1)}
   if not ef&1:
    vp=ep+es;dt=b[vp+3];v=u(b,vp+4);r.update(value_type=dt,raw_value=v,value_offset=vp)
    if dt==3:r.update(value=globalpool[v]['value'],string_index=v,string_offset=globalpool[v]['offset'])
   records.append(r)
lookup={}
for r in records:lookup.setdefault(r['id'],[]).append(r)
def resolve(dt,v):
 if dt==3:return {'kind':'string','value':sp[v]['value'],'string_index':v,'string_offset':sp[v]['offset']}
 if dt in (1,2):
  rid=f'0x{v:08x}';rr=lookup.get(rid,[]);return {'kind':'reference' if dt==1 else 'attribute','id':rid,'targets':[{'type':r['type'],'name':r['name'],'value':r.get('value'),'entry_offset':r['entry_offset'],'string_offset':r.get('string_offset')} for r in rr]}
 if dt==18:return {'kind':'boolean','value':bool(v)}
 if dt in (28,29,30,31):return {'kind':'color','value':f'#{v:08x}'}
 return {'kind':'typed','type':dt,'data':v}
def decode(name):
 global sp
 bb=z.read(name);sp=[];nodes=[];stack=[]
 for p,t,hs,sz in chunks(bb,h(bb,2),len(bb)):
  if t==1:sp=pool(bb,p)
  if t==0x102:
   ext=p+hs;ni=u(bb,ext+4);start=h(bb,ext+8);astride=h(bb,ext+10);cnt=h(bb,ext+12)
   ns=u(bb,ext);node={'element':sp[ni]['value'],'namespace':None if ns==0xffffffff else sp[ns]['value'],'offset':p,'depth':len(stack),'attributes':[]}
   for i in range(cnt):
    a=ext+start+i*astride;an=u(bb,a+4);raw=u(bb,a+8);dt=bb[a+15];v=u(bb,a+16)
    ans=u(bb,a);node['attributes'].append({'namespace':None if ans==0xffffffff else sp[ans]['value'],'name':sp[an]['value'],'offset':a,'raw':None if raw==0xffffffff else sp[raw]['value'],'value':resolve(dt,v)})
   nodes.append(node);stack.append(ni)
  if t==0x103:stack.pop()
 return {'member':name,'sha256':hashlib.sha256(bb).hexdigest(),'nodes':nodes,'rea_parent_evidence_id':PARENT}
# Resource keys remain original despite obfuscated archive paths.
pat=re.compile(r'gaming|game_|clue|vote|playbook|reading|prepare|stage|note|role|wait|character',re.I)
selected=[r for r in records if r['type']=='layout' and pat.search(r['name']) and 'value'in r]
layouts=[]
for name in dict.fromkeys(r['value'] for r in selected):
 try:layouts.append(decode(name))
 except Exception as e:layouts.append({'member':name,'error':str(e)})
for l in layouts:l['resource_names']=[r['name'] for r in selected if r['value']==l['member']]
(ROOT/'resource-table.json').write_text(json.dumps({'method':'ordinary shell format-aware parser; not REA Evidence','rea_parent_evidence_id':PARENT,'member':'resources.arsc','sha256':hashlib.sha256(b).hexdigest(),'records':records},ensure_ascii=False,indent=2))
(ROOT/'layouts.json').write_text(json.dumps(layouts,ensure_ascii=False,indent=2))
print('resources',len(records),'selected layouts',len(layouts));print('\n'.join(','.join(l['resource_names'])+' '+l['member'] for l in layouts))
