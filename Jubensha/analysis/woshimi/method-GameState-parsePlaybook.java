    public boolean o0(byte[] bArr) {
        try {
            if (bArr.length <= 12) {
                return false;
            }
            System.arraycopy(bArr, 0, new byte[12], 0, 12);
            return "RIFF".equals(new String(bArr, 0, 4, C.ASCII_NAME)) && "WEBP".equals(new String(bArr, 8, 4, C.ASCII_NAME));
        } catch (UnsupportedEncodingException unused) {
            jb.a.c("UnsupportedEncodingException ");
            return false;
        }
    }