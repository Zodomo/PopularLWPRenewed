package com.google.ads.e;

/* JADX INFO: loaded from: classes.dex */
public final class ae extends ac {
    final /* synthetic */ ab d;
    private boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae(ab abVar, String str) {
        super(abVar, str, (byte) 0);
        this.d = abVar;
        this.e = false;
        this.e = false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae(ab abVar, String str, Object obj) {
        super(abVar, str, obj, (byte) 0);
        this.d = abVar;
        this.e = false;
        this.e = false;
    }

    public final synchronized Object a() {
        return this.a;
    }

    public final synchronized void a(Object obj) {
        String str = "State changed - " + this.d.toString() + "." + this.b + ": '" + obj + "' <-- '" + this.a + "'.";
        i.g();
        this.a = obj;
        this.e = true;
    }

    @Override // com.google.ads.e.ac
    public final String toString() {
        return super.toString() + (this.e ? " (*)" : "");
    }
}
