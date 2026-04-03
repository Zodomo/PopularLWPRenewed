package com.google.ads.b;

import android.os.Handler;
import com.google.ads.bq;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class d implements Runnable {
    private final WeakReference a;

    public d(c cVar) {
        this.a = new WeakReference(cVar);
    }

    public final void a() {
        ((Handler) bq.a().c.a()).postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = (c) this.a.get();
        if (cVar == null) {
            com.google.ads.e.i.g();
        } else {
            cVar.e();
            ((Handler) bq.a().c.a()).postDelayed(this, 250L);
        }
    }
}
