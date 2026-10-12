    public static JNIRetObject ControlMini(String str, int i) {
        try {
            return ControlMiniJNI(str, i);
        } catch (UnsatisfiedLinkError e) {
            System.err.println("ControlMini\n" + e);
            return new JNIRetObject();
        }
    }