package com.google.ads.b;

/* JADX INFO: loaded from: classes.dex */
public final class m extends Exception {
    public final boolean a;

    public final void a(String str) {
        b(str);
        com.google.ads.e.i.c();
        com.google.ads.e.i.b();
    }

    public final String b(String str) {
        return this.a ? str + ": " + getMessage() : str;
    }
}
