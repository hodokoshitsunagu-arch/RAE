import pathlib,json,zipfile,struct,re,hashlib
root=pathlib.Path(__file__).parent;apk=root.parents[1]/'apks/baibian-6.45.2.apk'
with zipfile.ZipFile(apk) as z:
 b=z.read('resources.arsc');pos=struct.unpack_from('<H',b,2)[0];kind,hs,size=struct.unpack_from('<HHI',b,pos)
 assert kind==1 and pos+size<=len(b)
 u=lambda off:struct.unpack_from('<I',b,off)[0]
 count=u(pos+8);flags=u(pos+16);base=pos+u(pos+20);utf8=bool(flags&256)
 def length(p):
  if utf8:
   v=b[p];p+=1
   if v&128:v=((v&127)<<8)|b[p];p+=1
  else:
   v=struct.unpack_from('<H',b,p)[0];p+=2
   if v&32768:v=((v&32767)<<16)|struct.unpack_from('<H',b,p)[0];p+=2
  return v,p
 strings=[]
 for i in range(count):
  offset=base+u(pos+hs+i*4);n,p=length(offset)
  if utf8:n,p=length(p)
  strings.append({'index':i,'offset':offset,'value':b[p:p+n*(1 if utf8 else 2)].decode('utf-8' if utf8 else 'utf-16-le',errors='surrogatepass').encode('utf-16-le',errors='surrogatepass').decode('utf-16-le',errors='surrogatepass')})
 obj={'method':'ordinary shell Android resource global string-pool parsing; no resolved resource ID or usage proof','member':'resources.arsc','member_sha256':hashlib.sha256(b).hexdigest(),'strings':strings}
 (root/'resource-strings.json').write_text(json.dumps(obj,ensure_ascii=False,indent=2))
 focus=[s for s in strings if re.search(r'剧本|线索|搜证|投票|复盘|阶段|房主|角色|重连|断线|语音|公聊|私聊|DM|剧透',s['value'])]
 (root/'resource-focus.json').write_text(json.dumps(focus,ensure_ascii=False,indent=2))
 names=[n for n in z.namelist() if n.startswith('res/layout') and re.search(r'gaming|clue|vote|playbook|stage|scene|reading|room|dm_|role',n,re.I)]
 (root/'layout-candidates.json').write_text(json.dumps(names,indent=2))
 print(count,len(focus),len(names));print('\n'.join(f"{s['index']}: {s['value']}" for s in focus if len(s['value'])<140)[:14000])
