import { createServer } from 'node:http';
import { readFile, stat } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import path from 'node:path';
const root = path.dirname(fileURLToPath(import.meta.url));
const port = Number(process.env.PIAXI_PORT || 4186);
const mime = { '.html': 'text/html; charset=utf-8', '.css': 'text/css', '.mjs': 'text/javascript', '.wav': 'audio/wav', '.png': 'image/png' };
createServer(async (request,response) => {
  try {
    const pathname=decodeURIComponent(new URL(request.url,'http://localhost').pathname);
    const file=path.resolve(root,'.'+(pathname==='/'?'/index.html':pathname));
    if (!file.startsWith(root+path.sep)) { response.writeHead(403).end(); return; }
    const info=await stat(file); if(!info.isFile()) { response.writeHead(404).end(); return; }
    const data=await readFile(file); const range=/^bytes=(\d+)-(\d*)$/.exec(request.headers.range || '');
    const headers={'Content-Type':mime[path.extname(file)] || 'application/octet-stream','Cache-Control':'no-cache','Accept-Ranges':'bytes'};
    if(range){ const start=Number(range[1]),end=Math.min(Number(range[2] || data.length-1),data.length-1); if(start>end){response.writeHead(416,{'Content-Range':`bytes */${data.length}`}).end();return;} response.writeHead(206,{...headers,'Content-Range':`bytes ${start}-${end}/${data.length}`,'Content-Length':end-start+1}); response.end(data.subarray(start,end+1)); }
    else { response.writeHead(200,{...headers,'Content-Length':data.length}); response.end(data); }
  } catch { response.writeHead(404).end('Not found'); }
}).listen(port,'127.0.0.1',()=>console.log(`Pia 戏演示：http://127.0.0.1:${port}`));
