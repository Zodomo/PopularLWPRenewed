package com.google.ads;

/* JADX INFO: loaded from: classes.dex */
final class be implements Runnable {
    final /* synthetic */ az a;
    final /* synthetic */ bc b;

    be(bc bcVar, az azVar) {
        this.b = bcVar;
        this.a = azVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a.b(this.a);
    }
}
