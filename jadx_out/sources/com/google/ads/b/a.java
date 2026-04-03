package com.google.ads.b;

import android.os.Handler;
import com.google.ads.bq;
import com.google.ads.br;
import com.google.ads.bs;

/* JADX INFO: loaded from: classes.dex */
public final class a extends e {
    public boolean a;
    private volatile boolean c;
    private int d;
    private int e;
    private final ad f;

    public a(bs bsVar) {
        super(bsVar, null);
        this.c = true;
        this.a = true;
        this.d = 0;
        this.e = 0;
        if (com.google.ads.e.a.a < ((Integer) ((br) ((bq) bsVar.d.a()).b.a()).c.a()).intValue()) {
            com.google.ads.e.i.a();
            f();
        }
        this.f = ad.a((w) bsVar.b.a(), h.c, true, true);
        setWebViewClient(this.f);
    }

    public final boolean a() {
        return this.c;
    }

    public final int b() {
        return this.e;
    }

    public final int c() {
        return this.d;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return false;
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return false;
    }

    public final ad d() {
        return this.f;
    }

    public final void setOverlayActivated(boolean z) {
        this.a = z;
    }

    public final void setOverlayEnabled(boolean z) {
        if (!z) {
            ((Handler) bq.a().c.a()).post(new b(this, this));
        }
        this.c = z;
    }

    public final void setXPosition(int i) {
        this.d = i;
    }

    public final void setYPosition(int i) {
        this.e = i;
    }
}
