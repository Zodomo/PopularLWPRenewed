package com.android.vending.licensing;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
final class t {
    public int a;
    public int b;
    public String c;
    public String d;
    public String e;
    public long f;
    public String g;

    t() {
    }

    public final String toString() {
        return TextUtils.join("|", new Object[]{Integer.valueOf(this.a), Integer.valueOf(this.b), this.c, this.d, this.e, Long.valueOf(this.f)});
    }
}
