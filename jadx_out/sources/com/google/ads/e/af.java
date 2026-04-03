package com.google.ads.e;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class af extends ac {
    final /* synthetic */ ab d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af(ab abVar, String str, Object obj) {
        super(abVar, str, new WeakReference(obj), (byte) 0);
        this.d = abVar;
    }

    public final Object a() {
        return ((WeakReference) this.a).get();
    }

    @Override // com.google.ads.e.ac
    public final String toString() {
        return this.d.toString() + "." + this.b + " = " + a() + " (?)";
    }
}
