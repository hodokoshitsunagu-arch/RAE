from pathlib import Path
import json
root=Path(__file__).parent
ns={'__file__':str(root.parent/'render_proto.py')}
exec((root.parent/'render_proto.py').read_text().split('f=wire(raw)')[0],ns)
raw=(root/'im.descriptor.bin').read_bytes();f=ns['wire'](raw)
lines=['// Reconstructed from the exact packaged FileDescriptorProto.','// Original source comments/formatting are unavailable.','syntax = "'+ns['text'](f,12)+'";','']
for v in f.get(3,[]):lines.append('import '+json.dumps(v.decode())+';')
o=ns['wire'](f[8][0]);lines+=['','option java_package = '+json.dumps(ns['text'](o,1))+';','option java_multiple_files = true;','option go_package = '+json.dumps(ns['text'](o,11))+';','option objc_class_prefix = '+json.dumps(ns['text'](o,36))+';','']
for m in f.get(4,[]):lines+=ns['message'](m)+['']
for e in f.get(5,[]):lines+=ns['enum'](e,0)+['']
(root/'im.proto').write_text('\n'.join(lines))
validation=(root.parent/'render_proto.py').read_text().split('def canonical')[1].split("if (root/'recompiled.pb').exists():")[0]
exec('def canonical'+validation,ns)
compiled=ns['wire']((root/'recompiled.pb').read_bytes())[1][0]
match=ns['canonical'](raw,'file')==ns['canonical'](compiled,'file')
(root/'descriptor-validation.json').write_text(json.dumps({'compiler':'libprotoc 35.1','dependency':'../draw-something.proto','compilation':'passed','semantic_descriptor_match':match,'comparison':'Entire descriptor recursively compared; field order normalized by field number and modern synthesized json_name ignored.'},indent=2))
assert match
print('Exact im.proto schema semantic match confirmed')
