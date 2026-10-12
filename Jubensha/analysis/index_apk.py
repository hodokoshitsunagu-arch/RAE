import zipfile,json,struct,re,hashlib,pathlib,sys,collections
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

p=pathlib.Path(sys.argv[1]);root=pathlib.Path(sys.argv[2]);root.mkdir(parents=True,exist_ok=True)
with zipfile.ZipFile(p) as z:
 members=[{'name':i.filename,'compressed_size':i.compress_size,'size':i.file_size,'crc32':f'{i.CRC:08x}'} for i in z.infolist()]
 bad=z.testzip()
 results=[parse(z.read(n),n) for n in z.namelist() if re.fullmatch(r'classes\d*\.dex',n)]
 native=[i for i in members if i['name'].startswith('lib/')]
 assets=[i for i in members if i['name'].startswith('assets/')]
(root/'dex-index.json').write_text(json.dumps(results,ensure_ascii=False))
identity={'path':str(p.resolve()),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'md5':hashlib.md5(p.read_bytes()).hexdigest(),'size':p.stat().st_size,'zip_crc_failure':bad,'members':members,'dex':[{'member':r['member'],'sha256':r['sha256'],'classes':len(r['classes']),'strings':len(r['strings'])} for r in results],'native':native,'assets':assets}
(root/'artifact-index.json').write_text(json.dumps(identity,ensure_ascii=False,indent=2))
print(json.dumps({k:v for k,v in identity.items() if k not in ['members','assets','native']},indent=2))
for d in results:
 for c in d['classes']:
  if c['name'].startswith(('Lcom/wzf/','Lcom/mszmapp/','Lcom/mszm/')) and re.search(r'playbook|room|script|story|clue|vote|chat|voice|net|game|application',c['name'],re.I):
   print(c['name'],','.join(m['name'] for m in c['methods'][:15]))
