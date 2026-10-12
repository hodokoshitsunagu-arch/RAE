"""Offline extraction of packaged protobuf descriptor and writer evidence."""
import pathlib,json,zipfile,struct,hashlib
root=pathlib.Path(__file__).resolve().parents[1]
src=(root/'extract_gameplay_schemas.py').read_text().split("with zipfile.ZipFile(root/'base.apk') as z:")[0]
ns={'__file__':str(root/'extract_gameplay_schemas.py')};exec(src,ns)
with zipfile.ZipFile(root/'base.apk') as z:b=z.read('classes8.dex')
d=ns['parse'](b,'classes8.dex')
out=[]
for c in d['classes']:
 if c['name'].startswith('Lcom/soul/game/protos/'):
  for m in c['methods']:
   if m['name'] in ('writeTo','<clinit>'):
    r=ns['references'](b,m,d)
    out.append({'class':c['name'],'method':m['name'],'code_offset':m['code_offset'],**r})
(root/'drawsomething/writer-evidence.json').write_text(json.dumps({'dex_sha256':hashlib.sha256(b).hexdigest(),'methods':out},ensure_ascii=False,indent=2))
for m in out:
 if m['method']=='<clinit>' and any('proto' in str(r.get('value','')) for r in m['references']):
  print(m['class'],m['code_offset'],[(r['pc'],repr(r['value'])[:300]) for r in m['references'] if r['kind']=='const-string'])
for m in out:
 if m['method']=='writeTo':print(m['class'],m['code_offset'],[(r['pc'],r['name']) for r in m['references'] if r['kind']=='invoke' and ('write' in r['name'].lower() or 'serial' in r['name'].lower())])
# Java's generated descriptor string stores each serialized descriptor byte as a
# U+0000..U+00FF character. DEX strings are modified UTF-8; restore C0 80 first.
so=struct.unpack_from('<I',b,60)[0]
idx=next(i for i,s in enumerate(d['strings']) if s.startswith('\n\x14draw-something.proto'))
string_data_offset=struct.unpack_from('<I',b,so+4*idx)[0]
_,start=ns['ns']['uleb'](b,string_data_offset)
end=b.index(b'\0',start)
java_string=b[start:end].replace(b'\xc0\x80',b'\0').decode('utf-8')
raw=java_string.encode('latin1')
(root/'drawsomething/draw-something.descriptor.bin').write_bytes(raw)
# Find all uses of descriptor string index including obfuscated outer class.
refs=[]
for c in d['classes']:
 for m in c['methods']:
  if m['name']=='<clinit>':
   r=ns['references'](b,m,d)
   for ref in r['references']:
    if ref.get('kind')=='const-string' and ref.get('index')==idx:refs.append({'class':c['name'],'method':m['name'],'code_offset':m['code_offset'],**{k:v for k,v in ref.items() if k!='value'}})
(root/'drawsomething/descriptor-provenance.json').write_text(json.dumps({'apk_sha256':hashlib.sha256((root/'base.apk').read_bytes()).hexdigest(),'dex_sha256':hashlib.sha256(b).hexdigest(),'descriptor_sha256':hashlib.sha256(raw).hexdigest(),'dex_member':'classes8.dex','string_index':idx,'string_data_offset':string_data_offset,'string_payload_offset':start,'string_payload_end':end,'descriptor_bytes':len(raw),'references':refs},ensure_ascii=False,indent=2))
print('Descriptor recovered',len(raw),refs)
