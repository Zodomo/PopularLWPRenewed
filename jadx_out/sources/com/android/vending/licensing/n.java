package com.android.vending.licensing;

/* JADX INFO: loaded from: classes.dex */
final class n {
    final l a;
    final int b;
    final String c;
    final String d;
    final b e;
    private final q f;

    n(q qVar, b bVar, l lVar, int i, String str, String str2) {
        this.f = qVar;
        this.e = bVar;
        this.a = lVar;
        this.b = i;
        this.c = str;
        this.d = str2;
    }

    final void a() {
        this.a.c();
    }

    final void a(r rVar, t tVar) {
        this.f.a(rVar, tVar);
        if (this.f.a()) {
            this.a.a();
        } else {
            this.a.b();
        }
    }

    final void b() {
        this.a.b();
    }
}
