package com.android.vending.licensing;

/* JADX INFO: loaded from: classes.dex */
final class j implements Runnable {
    final /* synthetic */ i a;

    j(i iVar) {
        this.a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a.b(this.a.b);
        this.a.a.a(this.a.b);
    }
}
