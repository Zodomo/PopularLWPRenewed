package com.google.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final g a = new g(-1, -2, "mb");
    public static final g b = new g(320, 50, "mb");
    public static final g c = new g(300, 250, "as");
    public static final g d = new g(468, 60, "as");
    public static final g e = new g(728, 90, "as");
    public static final g f = new g(160, 600, "as");
    private final int g;
    private final int h;
    private boolean i;
    private boolean j;
    private boolean k;
    private String l;

    public g(int i, int i2) {
        this(i, i2, null);
        if (!f()) {
            this.k = true;
        } else {
            this.k = false;
            this.l = "mb";
        }
    }

    private g(int i, int i2, String str) {
        this.g = i;
        this.h = i2;
        this.l = str;
        this.i = i == -1;
        this.j = i2 == -2;
        this.k = false;
    }

    public static g a(g gVar, Context context) {
        int iA;
        int iB;
        if (context == null || !gVar.f()) {
            return gVar.f() ? b : gVar;
        }
        if (gVar.i) {
            iA = (int) (r0.widthPixels / context.getResources().getDisplayMetrics().density);
        } else {
            iA = gVar.a();
        }
        if (gVar.j) {
            int i = (int) (r1.heightPixels / context.getResources().getDisplayMetrics().density);
            iB = i <= 400 ? 32 : i <= 720 ? 50 : 90;
        } else {
            iB = gVar.b();
        }
        g gVar2 = new g(iA, iB, gVar.l);
        gVar2.j = gVar.j;
        gVar2.i = gVar.i;
        gVar2.k = gVar.k;
        return gVar2;
    }

    private boolean f() {
        return this.g < 0 || this.h < 0;
    }

    public final int a() {
        if (this.g < 0) {
            throw new UnsupportedOperationException("Ad size was not set before getWidth() was called.");
        }
        return this.g;
    }

    public final int b() {
        if (this.h < 0) {
            throw new UnsupportedOperationException("Ad size was not set before getHeight() was called.");
        }
        return this.h;
    }

    public final boolean c() {
        return this.i;
    }

    public final boolean d() {
        return this.j;
    }

    public final boolean e() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.g == gVar.g && this.h == gVar.h;
    }

    public final int hashCode() {
        return (Integer.valueOf(this.g).hashCode() << 16) | (Integer.valueOf(this.h).hashCode() & 65535);
    }

    public final String toString() {
        return a() + "x" + b() + (this.l == null ? "" : "_" + this.l);
    }
}
