package com.google.ads;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class bq extends com.google.ads.e.ab {
    private static final bq d = new bq();
    public final com.google.ads.e.ae a = new com.google.ads.e.ae(this, "marketPackages", null);
    public final com.google.ads.e.ad b = new com.google.ads.e.ad(this, "constants", new br());
    public final com.google.ads.e.ad c = new com.google.ads.e.ad(this, "uiHandler", new Handler(Looper.getMainLooper()));

    private bq() {
    }

    public static bq a() {
        return d;
    }
}
