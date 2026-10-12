import zipfile,io,json,struct,re,hashlib,pathlib
root=pathlib.Path(__file__).parent
p=next(root.parent.glob('*.xapk'))
def uleb(b,o):
 v=0;s=0
 while True:
  c=b[o];o+=1;v|=(c&127)<<s;s+=7
  if not c&128:return v,o
def parse(b,member):
 u=lambda o:struct.unpack_from('<I',b,o)[0]
 sn,so=u(56),u(60);tn,to=u(64),u(68);mn,mo=u(88),u(92);fn,fo=u(80),u(84);cn,co=u(96),u(100)
 strings=[]
 for i in range(sn):
  o=u(so+4*i);_,o=uleb(b,o);end=b.index(b'\0',o);strings.append(b[o:end].decode('utf-8','replace'))
 types=[strings[u(to+4*i)] for i in range(tn)]
 methods=[]
 for i in range(mn):
  c,pr,n=struct.unpack_from('<HHI',b,mo+8*i);methods.append({'class':types[c],'name':strings[n],'proto_index':pr})
 fields=[]
 for i in range(fn):
  c,t,n=struct.unpack_from('<HHI',b,fo+8*i);fields.append({'class':types[c],'name':strings[n],'type':types[t]})
 def value(o):
  h=b[o];o+=1;k=h&31;n=(h>>5)+1
  if k==0x1c:
   count,o=uleb(b,o);arr=[]
   for _ in range(count):v,o=value(o);arr.append(v)
   return arr,o
  if k==0x1d:return annotation(o)
  if k==0x1e:return None,o
  if k==0x1f:return bool(h>>5),o
  v=int.from_bytes(b[o:o+n],'little');o+=n
  return (strings[v] if k==0x17 else types[v] if k==0x18 else fields[v] if k in (0x19,0x1b) else v),o
 def annotation(o):
  t,o=uleb(b,o);count,o=uleb(b,o);r={'type':types[t],'values':{}}
  for _ in range(count):n,o=uleb(b,o);v,o=value(o);r['values'][strings[n]]=v
  return r,o
 def aset(o):
  return [annotation(u(o+4+4*j)+1)[0] for j in range(u(o))] if o else []
 classes=[]
 for i in range(cn):
  c,flags,sup,inter,source,ann,data,static=struct.unpack_from('<8I',b,co+32*i)
  owned=[];ownedfields=[];methodanns={}
  if ann:
   for j in range(u(ann+8)):
    off=ann+16+8*u(ann+4)+8*j;mi,ao=u(off),u(off+4);methodanns[mi]=aset(ao)
  if data:
   o=data;ns,o=uleb(b,o);ni,o=uleb(b,o);nd,o=uleb(b,o);nv,o=uleb(b,o)
   for count in (ns,ni):
    idx=0
    for j in range(count):delta,o=uleb(b,o);idx+=delta;_,o=uleb(b,o);ownedfields.append(dict(fields[idx],index=idx))
   for count in (nd,nv):
    idx=0
    for j in range(count):
     d,o=uleb(b,o);idx+=d;access,o=uleb(b,o);code,o=uleb(b,o);owned.append(dict(methods[idx],index=idx,code_offset=code,annotations=methodanns.get(idx,[])))
  classes.append({'name':types[c],'super':types[sup] if sup!=0xffffffff else None,'methods':owned,'fields':ownedfields})
 return {'member':member,'sha256':hashlib.sha256(b).hexdigest(),'classes':classes,'strings':strings,'methods':methods}
with zipfile.ZipFile(p) as outer:
 b=outer.read('com.soul.android.international.apk');(root/'base.apk').write_bytes(b)
 with zipfile.ZipFile(io.BytesIO(b)) as z:
  results=[parse(z.read(n),n) for n in z.namelist() if re.fullmatch(r'classes\d*\.dex',n)]
(root/'dex-index.json').write_text(json.dumps(results,ensure_ascii=False))
pat=re.compile(r'party|chatroom|chat_room|voiceroom|voice_room|werewolf|murder|scriptkill|jubensha|剧本|狼人|谁是卧底|桌游|ludo|guess|karaoke|singroom|game\/|\/game|agora|zego|trtc',re.I)
report=[]
for d in results:
 classes=[c for c in d['classes'] if pat.search(c['name'])]
 strings=[{'index':i,'value':s} for i,s in enumerate(d['strings']) if pat.search(s)]
 report.append({'member':d['member'],'class_count':len(d['classes']),'string_count':len(d['strings']),'classes':classes,'strings':strings})
(root/'focus-index.json').write_text(json.dumps(report,ensure_ascii=False,indent=2))
for d in report:
 print(d['member'],d['class_count'],'classes',d['string_count'],'strings',len(d['classes']),'focus classes',len(d['strings']),'focus strings')
