package com.google.ads;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class q implements Runnable {
    private WeakReference a;

    public q(com.google.ads.b.w wVar) {
        this.a = new WeakReference(wVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.ads.b.w wVar = (com.google.ads.b.w) this.a.get();
        if (wVar == null) {
            com.google.ads.e.i.a();
        } else {
            wVar.w();
        }
    }
}
