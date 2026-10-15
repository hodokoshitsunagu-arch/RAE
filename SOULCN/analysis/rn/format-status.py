from pathlib import Path
import hashlib,json,re
base=Path(__file__).parent
src=base/'soul_rn_room_status_setting/soul_rn_room_status_setting.bundle'
data=src.read_bytes(); text=data.decode('utf8')
code,footer=text.split('/*module*/',1)
# The Metro carrier's M<id>,offset,length index and numeric trailer are not JS.
# Preserve all registered module text; indent only the five feature modules.
parts=[]
for line in code.splitlines():
    match=re.match(r'/\*(\d+)\*/',line)
    if not match or int(match.group(1))<600000090:
        parts.append(line);continue
    line=re.sub(r'\\u([0-9a-fA-F]{4})',lambda m:chr(int(m[1],16)) if 0x80<=int(m[1],16)<=0xffff else m[0],line)
    result=[];buf='';indent=0;quote=None;escape=False
    def flush():
        global buf
        if buf.strip():result.append('  '*indent+buf.strip())
        buf=''
    for ch in line:
        if quote:
            buf+=ch
            if escape:escape=False
            elif ch=='\\':escape=True
            elif ch==quote:quote=None
            continue
        if ch in ('\"',"'"):
            quote=ch;buf+=ch
        elif ch in '{[':
            buf+=ch;flush();indent+=1
        elif ch in '}]':
            flush();indent=max(0,indent-1);buf+=ch
        elif ch in ',;':
            buf+=ch;flush()
        else:buf+=ch
    flush();parts.append('\n'.join(result))
out='/* Generated readability copy. Helper modules 0..89 kept verbatim. Feature modules 90..94 indented; non-ASCII Unicode escapes decoded. Carrier index retained in status-format.json. Never executed. */\n'+'\n'.join(parts)+'\n'
(base/'status-readable.js').write_text(out)
(base/'status-format.json').write_text(json.dumps({'source':str(src),'source_sha256':hashlib.sha256(data).hexdigest(),'readable_sha256':hashlib.sha256(out.encode()).hexdigest(),'omitted_non_js_footer':'/*module*/'+footer,'transformation':'Whitespace inserted outside quoted strings only for module IDs 600000090..600000094; non-ASCII \\uXXXX decoded. Helper module lines unchanged. Carrier footer is data, retained here.'},ensure_ascii=False,indent=2))
print(len(out.splitlines()),'readable lines')
