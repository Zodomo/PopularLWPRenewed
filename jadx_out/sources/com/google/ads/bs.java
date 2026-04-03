package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class bs extends com.google.ads.e.ab {
    public final com.google.ads.e.ad a;
    public final com.google.ads.e.ad b;
    public final com.google.ads.e.af c;
    public final com.google.ads.e.ad d;
    public final com.google.ads.e.ad e;
    public final com.google.ads.e.ad f;
    public final com.google.ads.e.ad g;
    public final com.google.ads.e.ad h;
    public final com.google.ads.e.ad i;
    public final com.google.ads.e.ad j;
    public final com.google.ads.e.ad k;
    public final com.google.ads.e.ae l = new com.google.ads.e.ae(this, "currentAd", null);
    public final com.google.ads.e.ae m = new com.google.ads.e.ae(this, "nextAd", null);
    public final com.google.ads.e.ae o = new com.google.ads.e.ae(this, "adListener");
    public final com.google.ads.e.ae p = new com.google.ads.e.ae(this, "appEventListener");
    public final com.google.ads.e.ae q = new com.google.ads.e.ae(this, "swipeableEventListener");
    public final com.google.ads.e.ae r = new com.google.ads.e.ae(this, "spamSignals", null);
    public final com.google.ads.e.ae s = new com.google.ads.e.ae(this, "spamSignalsUtil", null);
    public final com.google.ads.e.ae t = new com.google.ads.e.ae(this, "usesManualImpressions", false);
    public final com.google.ads.e.ae n = new com.google.ads.e.ae(this, "adSizes", null);

    public bs(bq bqVar, a aVar, h hVar, j jVar, String str, Activity activity, Context context, ViewGroup viewGroup, com.google.ads.b.ac acVar, com.google.ads.b.w wVar) {
        com.google.ads.b.a aVar2 = null;
        this.d = new com.google.ads.e.ad(this, "appState", bqVar);
        this.a = new com.google.ads.e.ad(this, "ad", aVar);
        this.j = new com.google.ads.e.ad(this, "adView", hVar);
        this.g = new com.google.ads.e.ad(this, "adType", acVar);
        this.h = new com.google.ads.e.ad(this, "adUnitId", str);
        this.c = new com.google.ads.e.af(this, "activity", activity);
        this.k = new com.google.ads.e.ad(this, "interstitialAd", jVar);
        this.i = new com.google.ads.e.ad(this, "bannerContainer", viewGroup);
        this.f = new com.google.ads.e.ad(this, "applicationContext", context);
        this.b = new com.google.ads.e.ad(this, "adManager", wVar);
        if (acVar != null && acVar.b()) {
            aVar2 = new com.google.ads.b.a(this);
        }
        this.e = new com.google.ads.e.ad(this, "activationOverlay", aVar2);
    }

    public final boolean a() {
        return !b();
    }

    public final boolean b() {
        return ((com.google.ads.b.ac) this.g.a()).a();
    }
}
