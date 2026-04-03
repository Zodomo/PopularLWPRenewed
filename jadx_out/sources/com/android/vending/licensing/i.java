package com.android.vending.licensing;

/* JADX INFO: loaded from: classes.dex */
final class i extends d {
    final /* synthetic */ h a;
    private final n b;
    private Runnable c = new j(this);

    public i(h hVar, n nVar) {
        this.a = hVar;
        this.b = nVar;
        this.a.f.postDelayed(this.c, 10000L);
    }

    @Override // com.android.vending.licensing.c
    public final void a(int i, String str, String str2) {
        this.a.f.post(new k(this, i, str, str2));
    }
}
