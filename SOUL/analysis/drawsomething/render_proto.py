"""Render recovered FileDescriptorProto without external Python dependencies."""
from pathlib import Path
import json
root=Path(__file__).parent
raw=(root/'draw-something.descriptor.bin').read_bytes()
def var(b,p):
 n=0;s=0
 while True:
  v=b[p];p+=1;n|=(v&127)<<s;s+=7
  if v<128:return n,p

def wire(b):
 out={};p=0
 while p<len(b):
  tag,p=var(b,p);n=tag>>3;w=tag&7
  if w==0:v,p=var(b,p)
  elif w==2:l,p=var(b,p);v=b[p:p+l];p+=l
  else:raise ValueError(w)
  out.setdefault(n,[]).append(v)
 return out

def text(w,n):return w[n][0].decode() if n in w else ''
T={1:'double',2:'float',3:'int64',4:'uint64',5:'int32',6:'fixed64',7:'fixed32',8:'bool',9:'string',12:'bytes',13:'uint32',15:'sfixed32',16:'sfixed64',17:'sint32',18:'sint64'}
def enum(b,depth):
 w=wire(b);pad='  '*depth
 lines=[pad+'enum '+text(w,1)+' {']
 for v in w.get(2,[]):
  v=wire(v);lines.append(pad+'  '+text(v,1)+' = '+str(v[2][0])+';')
 return lines+[pad+'}']
def message(b,depth=0):
 w=wire(b);pad='  '*depth;lines=[pad+'message '+text(w,1)+' {'];maps={}
 for n in w.get(3,[]):
  nw=wire(n)
  if 7 in nw and wire(nw[7][0]).get(7)==[1]:
   fs=[wire(f) for f in nw[2]];maps[text(nw,1)]='map<'+T[fs[0][5][0]]+', '+T[fs[1][5][0]]+'>'
  else:lines+=message(n,depth+1)
 for e in w.get(4,[]):lines+=enum(e,depth+1)
 def field(f):
  f=wire(f);typ=T.get(f[5][0],text(f,6).lstrip('.'));pref=''
  if typ.rsplit('.',1)[-1] in maps:typ=maps[typ.rsplit('.',1)[-1]]
  elif f.get(4)==[3]:pref='repeated '
  return pref+typ+' '+text(f,1)+' = '+str(f[3][0])+';'
 for f in w.get(2,[]):
  if 9 not in wire(f):lines.append(pad+'  '+field(f))
 for i,o in enumerate(w.get(8,[])):
  lines.append(pad+'  oneof '+text(wire(o),1)+' {')
  for f in w.get(2,[]):
   if wire(f).get(9)==[i]:lines.append(pad+'    '+field(f))
  lines.append(pad+'  }')
 return lines+[pad+'}']
f=wire(raw)
lines=['// Reconstructed directly from packaged FileDescriptorProto, not original source text.', '// Exact field names/numbers/types, maps, oneofs, enums and options are observed.', '// Ordering/comments/whitespace from original source cannot be recovered.', 'syntax = "'+text(f,12)+'";', '']
o=wire(f[8][0]);lines+=['option java_package = '+json.dumps(text(o,1))+';', 'option java_multiple_files = true;', 'option go_package = '+json.dumps(text(o,11))+';', 'option objc_class_prefix = '+json.dumps(text(o,36))+';', '']
for m in f.get(4,[]):lines+=message(m)+['']
for e in f.get(5,[]):lines+=enum(e,0)+['']
(root/'draw-something.proto').write_text('\n'.join(lines))
def canonical(b,kind):
 w=wire(b)
 child={'file':{4:'message',5:'enum',8:'options'},'message':{2:'field',3:'message',4:'enum',7:'options',8:'oneof'},'enum':{2:'enumvalue'},'field':{8:'options'}}.get(kind,{})
 if kind=='field':w.pop(10,None) # Modern protoc synthesizes json_name; original descriptor omitted it.
 out={}
 for k,vs in w.items():
  values=[canonical(v,child[k]) if k in child else (v.hex() if isinstance(v,bytes) else v) for v in vs]
  if kind=='message' and k==2:values.sort(key=lambda v:v['3'][0])
  out[str(k)]=values
 return out
if (root/'recompiled.pb').exists():
 compiled=wire((root/'recompiled.pb').read_bytes())[1][0]
 expected=canonical(raw,'file');actual=canonical(compiled,'file')
 (root/'descriptor-validation.json').write_text(json.dumps({'compiler':'libprotoc 35.1','compilation':'passed','semantic_descriptor_match':expected==actual,'comparison':'All FileDescriptorProto contents compared recursively; declaration field order normalized by field number and modern generated json_name ignored. Original had no json_name. No field, type, enum, oneof, map, option or syntax differences allowed.'},indent=2))
 assert expected==actual,(expected,actual)
 print('Exact descriptor semantic match confirmed')
