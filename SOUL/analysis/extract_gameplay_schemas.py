"""Offline DEX declaration/schema and instruction reference extraction; never launches target."""
import pathlib,json,zipfile,struct,re,hashlib
root=pathlib.Path(__file__).parent
source=(root/'index_apk.py').read_text().split('with zipfile.ZipFile(p) as outer:')[0]
source=source.replace("return {'member':member", "return {'types':types,'fields':fields,'protos':protos,'member':member")
source=source.replace('methods=[]', '''protos=[]
 for i in range(u(72)):
  short,ret,params=struct.unpack_from('<III',b,u(76)+12*i)
  ps=[types[struct.unpack_from('<H',b,params+4+2*j)[0]] for j in range(u(params))] if params else []
  protos.append({'return':types[ret],'parameters':ps})
 methods=[]''')
source=source.replace("owned=[];ownedfields=[];methodanns={}","owned=[];ownedfields=[];methodanns={};paramanns={};fieldanns={};classanns=aset(u(ann)) if ann else []")
source=source.replace("if data:\n",'''if ann:
   for j in range(u(ann+4)):
    off=ann+16+8*j;fi,ao=u(off),u(off+4);fieldanns[fi]=aset(ao)
   for j in range(u(ann+12)):
    off=ann+16+8*u(ann+4)+8*u(ann+8)+8*j;mi,ao=u(off),u(off+4)
    paramanns[mi]=[aset(u(ao+4+4*k)) for k in range(u(ao))]
  if data:
''')
source=source.replace('dict(fields[idx],index=idx)', 'dict(fields[idx],index=idx,annotations=fieldanns.get(idx,[]))')
source=source.replace('annotations=methodanns.get(idx,[]))','annotations=methodanns.get(idx,[]),parameters_annotations=paramanns.get(idx,[]),prototype=protos[methods[idx]["proto_index"]])')
source=source.replace("classes.append({'name':types[c]",'''staticvals=[]
  if static:
   o=static;num,o=uleb(b,o)
   for _ in range(num):v,o=value(o);staticvals.append(v)
  for f,v in zip(ownedfields[:ns] if data else [],staticvals):f['encoded_static_value']=v
  for f in (ownedfields[:ns] if data else []):
   if 'encoded_static_value' not in f and f['type'] in ('I','J','B','S','C','Z','F','D'):f['implicit_static_default']=0
  classes.append({'annotations':classanns,'interfaces':[types[struct.unpack_from('<H',b,inter+4+2*j)[0]] for j in range(u(inter))] if inter else [],'name':types[c]''')
ns={'__file__':str(root/'index_apk.py')};exec(source,ns);parse=ns['parse']
# Dalvik standard opcode widths in 16-bit code units. Reserved/quickened opcodes fail closed.
def width(op):
 if op in [0x03,0x06,0x09,0x14,0x17,0x1b,0x24,0x25,0x26,0x2a,0x2b,0x2c] or 0x6e<=op<=0x72 or 0x74<=op<=0x78:return 3
 if op==0x18:return 5
 if op in [0x02,0x05,0x08,0x13,0x15,0x16,0x19,0x1a,0x1c,0x1f,0x20,0x22,0x23,0x29] or 0x2d<=op<=0x3d or 0x44<=op<=0x6d or 0x90<=op<=0xaf or 0xd0<=op<=0xe2:return 2
 if 0<=op<=0x12 or op in [0x1d,0x1e,0x21,0x27,0x28] or 0x7b<=op<=0x8f or 0xb0<=op<=0xcf:return 1
 return None

def references(b,m,d):
 off=m['code_offset']; refs=[]
 if not off:return {'complete':True,'references':refs}
 size=struct.unpack_from('<I',b,off+12)[0];units=struct.unpack_from('<'+'H'*size,b,off+16);pc=0
 while pc<size:
  unit=units[pc];op=unit&255;w=width(op)
  if op==0 and unit>>8:
   kind=unit>>8
   if kind==1:w=4+2*units[pc+1]
   elif kind==2:w=2+4*units[pc+1]
   elif kind==3:w=4+(units[pc+1]*(units[pc+2]+(units[pc+3]<<16))+1)//2
   else:w=None
  if w is None or pc+w>size:return {'complete':False,'failure_pc':pc,'opcode':op,'references':refs}
  if op in [0x1a,0x1b]:
   idx=units[pc+1]+((units[pc+2]<<16) if op==0x1b else 0)
   refs.append({'pc':pc,'file_offset':off+16+pc*2,'kind':'const-string','index':idx,'value':d['strings'][idx]})
  elif 0x6e<=op<=0x72 or 0x74<=op<=0x78:
   idx=units[pc+1];refs.append({'pc':pc,'file_offset':off+16+pc*2,'kind':'invoke','index':idx,**d['methods'][idx]})
  pc+=w
 return {'complete':True,'references':refs}

with zipfile.ZipFile(root/'base.apk') as z:
 results=[]
 for name in z.namelist():
  if not re.fullmatch(r'classes\d*\.dex',name):continue
  b=z.read(name);d=parse(b,name)
  selected=[];api=[];bridge=[]
  for c in d['classes']:
   n=c['name']
   choose=n.startswith(('Lcn/soul/android/virtualparty/bean/','Lcom/soul/game/protos/')) or n in ['Lcom/soul/im/protos/MsgCommand;','Lcom/soul/im/protos/MsgCommand$Type;','Lcom/soul/im/protos/RollDiceMessage;','Lcom/soul/im/protos/FingerGuessMessage;','Lcom/soul/android/entity/flutter/FlutterPageId;','Lcom/soul/android/entity/middleware/OpenConfigInfo;','Lcom/soul/android/entity/middleware/BannerConfigInfo;']
   if choose and (not '$' in n or any(f['name'].endswith('_VALUE') for f in c['fields'])):selected.append(c)
   for m in c['methods']:
    routes=[a for a in m['annotations'] if a['type'].startswith('Lretrofit2/http/')]
    if routes and any(re.search(r'party|game|slot|dice|fruit|pocket|avatar',str(a),re.I) for a in routes):api.append(m)
   if c['super']=='Lpk/f;' or 'Lcom/soul/android/flutter/plugins/sof/SOFMethodChannelInterface;' in c['interfaces'] or (n.startswith(('Lcom/soul','Lcn/soul')) and 'flutter' in n.lower() and '/R' not in n):
    bridge.append({'class':n,'interfaces':c['interfaces'],'methods':[dict(m,decoded=references(b,m,d)) for m in c['methods']]})
  results.append({'member':name,'sha256':d['sha256'],'schemas':selected,'api_methods':api,'flutter_native_bridge':bridge})
out={'base_apk_sha256':hashlib.sha256((root/'base.apk').read_bytes()).hexdigest(),'method':'DEX format declarations/annotations/static encoded values; standard-opcode-width instruction traversal for string/invoke references, fails closed on unsupported opcode','coverage':results}
(root/'gameplay-schemas.json').write_text(json.dumps(out,ensure_ascii=False,indent=2))
print([(d['member'],len(d['schemas']),len(d['api_methods']),len(d['flutter_native_bridge'])) for d in results])
