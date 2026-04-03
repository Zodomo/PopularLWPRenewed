package com.google.ads;

/* JADX INFO: loaded from: classes.dex */
final class bk implements Runnable {
    final /* synthetic */ bj a;

    bk(bj bjVar) {
        this.a = bjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.h()) {
            com.google.ads.e.g.a(this.a.b);
            try {
                this.a.b.a();
                String str = "Called destroy() for adapter with class: " + this.a.b.getClass().getName();
                com.google.ads.e.i.a();
            } catch (Throwable th) {
                String str2 = "Error while destroying adapter (" + this.a.f() + "):";
                com.google.ads.e.i.d();
            }
        }
    }
}
