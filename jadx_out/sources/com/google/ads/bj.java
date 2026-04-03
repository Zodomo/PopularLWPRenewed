package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class bj {
    final com.google.ads.b.ac a;
    com.google.ads.c.b b;
    private final bg c;
    private boolean d;
    private boolean e;
    private bi f;
    private final bc g;
    private boolean h;
    private boolean i;
    private View j;
    private final String k;
    private final d l;
    private final HashMap m;

    public bj(bc bcVar, com.google.ads.b.ac acVar, bg bgVar, String str, d dVar, HashMap map) {
        com.google.ads.e.g.a(TextUtils.isEmpty(str));
        this.g = bcVar;
        this.a = acVar;
        this.c = bgVar;
        this.k = str;
        this.l = dVar;
        this.m = map;
        this.d = false;
        this.e = false;
        this.f = null;
        this.b = null;
        this.h = false;
        this.i = false;
        this.j = null;
    }

    public final synchronized void a() {
        com.google.ads.e.g.a(this.h, "destroy() called but startLoadAdTask has not been called.");
        ((Handler) bq.a().c.a()).post(new bk(this));
    }

    public final synchronized void a(Activity activity) {
        com.google.ads.e.g.b(this.h, "startLoadAdTask has already been called.");
        this.h = true;
        ((Handler) bq.a().c.a()).post(new bl(this, activity, this.k, this.l, this.m));
    }

    final synchronized void a(bi biVar) {
        this.e = false;
        this.d = true;
        this.f = biVar;
        notify();
    }

    final synchronized void a(com.google.ads.c.b bVar) {
        this.b = bVar;
    }

    public final synchronized boolean b() {
        return this.d;
    }

    public final synchronized boolean c() {
        com.google.ads.e.g.a(this.d, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false.");
        return this.e;
    }

    public final synchronized bi d() {
        return this.f == null ? bi.TIMEOUT : this.f;
    }

    public final synchronized View e() {
        com.google.ads.e.g.a(this.d, "getAdView() called when isLoadAdTaskDone() is false.");
        return this.j;
    }

    public final synchronized String f() {
        return this.b != null ? this.b.getClass().getName() : "\"adapter was not created.\"";
    }

    final synchronized void g() {
        this.i = true;
    }

    final synchronized boolean h() {
        return this.i;
    }
}
