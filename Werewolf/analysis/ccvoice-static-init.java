    static {
        try {
            System.loadLibrary("AudioCommon");
        } catch (UnsatisfiedLinkError e) {
            System.err.println("native code library failed to load AudioCommon\n" + e);
        }
        try {
            System.loadLibrary("AudioCore");
        } catch (UnsatisfiedLinkError e2) {
            System.err.println("native code library failed to load AudioCore\n" + e2);
        }
        try {
            System.loadLibrary("AudioCCReName");
        } catch (UnsatisfiedLinkError e3) {
            System.err.println("native code library failed to load AudioCC\n" + e3);
        }
        try {
            System.loadLibrary("AudioEngine");
        } catch (UnsatisfiedLinkError e4) {
            System.err.println("native code library failed to load AudioEngine\n" + e4);
        }
    }