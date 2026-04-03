package com.google.ads.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class ac {
    protected Object a;
    protected final String b;
    final /* synthetic */ ab c;

    private ac(ab abVar, String str) {
        this(abVar, str, (Object) null);
    }

    /* synthetic */ ac(ab abVar, String str, byte b) {
        this(abVar, str);
    }

    private ac(ab abVar, String str, Object obj) {
        this.c = abVar;
        this.b = str;
        abVar.d.add(this);
        this.a = obj;
    }

    /* synthetic */ ac(ab abVar, String str, Object obj, byte b) {
        this(abVar, str, obj);
    }

    public String toString() {
        return this.c.toString() + "." + this.b + " = " + this.a;
    }
}
