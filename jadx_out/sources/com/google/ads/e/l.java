package com.google.ads.e;

/* JADX INFO: loaded from: classes.dex */
public class l {
    static final /* synthetic */ boolean a;

    static {
        a = !l.class.desiredAssertionStatus();
    }

    private l() {
    }

    public static byte[] a(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        n nVar = new n(new byte[(length * 3) / 4]);
        if (!nVar.a(bytes, length)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (nVar.b == nVar.a.length) {
            return nVar.a;
        }
        byte[] bArr = new byte[nVar.b];
        System.arraycopy(nVar.a, 0, bArr, 0, nVar.b);
        return bArr;
    }
}
