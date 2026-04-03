package com.google.ads.b;

import com.google.ads.az;
import com.google.ads.bs;

/* JADX INFO: loaded from: classes.dex */
final class p implements Runnable {
    final /* synthetic */ az a;
    final /* synthetic */ n b;

    p(n nVar, az azVar) {
        this.b = nVar;
        this.a = azVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b.a != null) {
            this.b.a.stopLoading();
            this.b.a.destroy();
        }
        ((w) ((bs) this.b.b.a.a()).b.a()).a(this.b.d);
        if (this.b.e != null) {
            ((ac) ((bs) this.b.b.a.a()).g.a()).b(this.b.e);
        }
        ((w) ((bs) this.b.b.a.a()).b.a()).a(this.a);
    }
}
