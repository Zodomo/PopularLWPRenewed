package com.google.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bf implements Runnable {
    final /* synthetic */ bj a;
    final /* synthetic */ View b;
    final /* synthetic */ bg c;
    final /* synthetic */ bc d;

    bf(bc bcVar, bj bjVar, View view, bg bgVar) {
        this.d = bcVar;
        this.a = bjVar;
        this.b = view;
        this.c = bgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.d.a(this.a)) {
            com.google.ads.e.i.a();
        } else {
            this.d.a.a(this.b, this.a, this.c);
        }
    }
}
