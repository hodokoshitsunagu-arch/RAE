from pathlib import Path
import sys,struct,re,io,json,hashlib,os
sys.path.insert(0,str(Path(os.environ.get('HERMES_DEC_ROOT','/tmp/soulcn-hermes-dec'))/'src'))
from hermes_dec.parsers.hbc_file_parser import HBCReader
root=Path(__file__).resolve().parents[1]/'rn'
b=(root/'soul_rn_club_party/soul_rn_club_party.bundle').read_bytes();pos=0;rows=[]
out=root/'modules';out.mkdir(exist_ok=True);gaps=[]
while pos<len(b):
 while pos<len(b) and b[pos] in b'\r\n \t':pos+=1
 if pos==len(b):break
 match=re.search(rb'/\*(\d+)\*/'+re.escape(bytes.fromhex('c61fbc03c103191f')),b[pos:])
 if not match:
  gaps.append({'offset':pos,'length':len(b)-pos,'sha256':hashlib.sha256(b[pos:]).hexdigest()});pos=len(b);break
 prefix=pos+match.start()
 if prefix>pos:gaps.append({'offset':pos,'length':prefix-pos,'sha256':hashlib.sha256(b[pos:prefix]).hexdigest()})
 name=match[1].decode();start=pos+match.end()-8;pos=prefix
 size=struct.unpack_from('<I',b,start+32)[0];raw=b[start:start+size];assert len(raw)==size
 reader=HBCReader();reader.read_whole_file(io.BytesIO(raw))
 p=out/(name+'.hbc');p.write_bytes(raw)
 rows.append({'module_id':int(name),'carrier_prefix_offset':pos,'hbc_offset':start,'length':size,'sha256':hashlib.sha256(raw).hexdigest(),'version':reader.header.version,'functions':len(reader.function_headers),'strings':reader.strings})
 pos=start+size
(root/'unparsed-carrier-ranges.json').write_text(json.dumps(gaps,indent=2)+'\n')
(root/'module-index.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2)+'\n')
pat=re.compile(r'CreateRoomPage|playTypeConfigList|roomBasicConfig|派对类型|输入派对|创建房间|privateStatus|defaultDisplayTabCode')
selected=[r for r in rows if any(pat.search(s) for s in r['strings'])]
(root/'selected-modules.json').write_text(json.dumps(selected,ensure_ascii=False,indent=2)+'\n')
print('examined carrier bytes',pos,'of',len(b),'HBC bytes',sum(r['length'] for r in rows),'unparsed carrier bytes',sum(r['length'] for r in gaps),'modules',len(rows),'functions',sum(r['functions'] for r in rows),'selected',len(selected))
for r in selected:print(r['module_id'],r['functions'],[s for s in r['strings'] if pat.search(s)][:12])
