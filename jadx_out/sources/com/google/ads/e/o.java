package com.google.ads.e;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
final class o {
    static final o d = new o();
    static final o e = new o("unknown", "generic", "generic");
    static final o f = new o("unknown", "generic_x86", "Android");
    public final String a;
    public final String b;
    public final String c;

    o() {
        this.a = Build.BOARD;
        this.b = Build.DEVICE;
        this.c = Build.BRAND;
    }

    private o(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    private static boolean a(String str, String str2) {
        return str != null ? str.equals(str2) : str == str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return a(this.a, oVar.a) && a(this.b, oVar.b) && a(this.c, oVar.c);
    }

    public final int hashCode() {
        int iHashCode = this.a != null ? this.a.hashCode() + 0 : 0;
        if (this.b != null) {
            iHashCode += this.b.hashCode();
        }
        return this.c != null ? iHashCode + this.c.hashCode() : iHashCode;
    }
}
