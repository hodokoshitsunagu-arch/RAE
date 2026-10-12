from pathlib import Path
import struct,re,json,hashlib
r=Path(__file__).parent;rec=r/'recovered';b=(r/'libapp.so').read_bytes()
# ELF64 section layout, including independent VA -> source byte mapping.
shoff=struct.unpack_from('<Q',b,40)[0];ents,n=struct.unpack_from('<HH',b,58);sections=[]
for i in range(n):
 x=struct.unpack_from('<IIQQQQIIQQ',b,shoff+i*ents)
 if x[1]!=8:sections.append((x[3],x[3]+x[5],x[4]))
def word(pc):
 for lo,hi,off in sections:
  if lo<=pc<hi:return struct.unpack_from('<I',b,off+pc-lo)[0],off+pc-lo
 raise ValueError(hex(pc))
pp={}
for l in (rec/'text/pp.txt').read_text(errors='replace').splitlines():
 m=re.match(r'\[pp\+(0x[0-9a-f]+)\] String: (.*)',l)
 if m:
  try:pp[int(m[1],16)]=json.loads(m[2])
  except ValueError:pass
functions={}
for l in (rec/'text/functions.txt').read_text().splitlines():
 cols=l.split('\t')
 if len(cols)>=4:functions[int(cols[0],16)]={'library':cols[1],'class':cols[2],'method':cols[3]}
scopes=['api$api_service','api$game_api_service','api$party_api_service','model$game_fruit_model','model$game_pk_model','model$party_model','biz$game','biz$pkGame','common$plugins$virtual_party']
out=[]
for file in (rec/'asm').iterdir():
 if not any(t in file.name for t in scopes):continue
 text=file.read_text();starts=list(re.finditer(r'// \*\* addr: (0x[0-9a-f]+), size: (0x[0-9a-f]+)',text))
 for i,m in enumerate(starts):
  start,size=int(m[1],16),int(m[2],16);block=text[m.start():starts[i+1].start() if i+1<len(starts) else len(text)]
  record=dict(functions.get(start,{}),address=hex(start),size=size,asm_file=str(file.resolve()),pool_loads=[],calls=[])
  lastadd=None
  for pc in range(start,start+size,4):
   w,off=word(pc)
   # Direct BL instruction, independently decoded from original bytes.
   if w&0xfc000000==0x94000000:
    imm=w&0x3ffffff;imm=imm-(1<<26) if imm&(1<<25) else imm;target=pc+imm*4
    record['calls'].append({'pc':hex(pc),'target':hex(target),**functions.get(target,{})})
   # LDR Xt unsigned immediate, PP=x27, or immediately preceding ADD from PP.
   if w&0xffc00000==0xf9400000:
    rn=(w>>5)&31;delta=((w>>10)&4095)*8;pool=delta if rn==27 else (lastadd[2]+delta if lastadd and lastadd[0]==pc-4 and lastadd[1]==rn else None)
    if pool is not None and pool in pp:record['pool_loads'].append({'pc':hex(pc),'file_offset':off,'instruction_hex':hex(w),'pool_offset':hex(pool),'value':pp[pool]})
   if w&0xff000000==0x91000000 and (w>>5)&31==27:
    lastadd=(pc,w&31,((w>>10)&4095)*(4096 if w&(1<<22) else 1))
   else:lastadd=None
  out.append(record)
(r/'flutter-game-schemas.json').write_text(json.dumps({'analyzer':'dae v0.1.13','snapshot_profile':'dart/3.6.1 unverified','engine_version':'3.6.0','libapp_sha256':hashlib.sha256(b).hexdigest(),'method':'Pool association from analyzer; selected loads and BL targets independently decoded from ELF bytes. No wire types inferred.','functions':out},ensure_ascii=False,indent=2))
for f in out:
 if 'fromJson' in f.get('method','') or f.get('library','').endswith(('game_api_service','party_api_service')):
  literals=list(dict.fromkeys(v['value'] for v in f['pool_loads']));http=[c for c in f['calls'] if c.get('method') in ['postSimple','getSimple']]
  if literals:print(f['address'],f.get('class'),f.get('method'),literals,[h.get('method') for h in http])
