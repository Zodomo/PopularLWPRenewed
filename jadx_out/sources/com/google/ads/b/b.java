package com.google.ads.b;

/* JADX INFO: loaded from: classes.dex */
final class b implements Runnable {
    final /* synthetic */ a a;
    final /* synthetic */ a b;

    b(a aVar, a aVar2) {
        this.b = aVar;
        this.a = aVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((com.google.ads.h) this.b.b.j.a()).removeView(this.a);
    }
}
