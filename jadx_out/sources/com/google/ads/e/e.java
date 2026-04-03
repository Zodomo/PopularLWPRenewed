package com.google.ads.e;

import com.google.ads.bs;

/* JADX INFO: loaded from: classes.dex */
public final class e extends com.google.ads.b.e {
    public e(bs bsVar, com.google.ads.g gVar) {
        super(bsVar, gVar);
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return this.b.e.a() != null ? !((com.google.ads.b.a) this.b.e.a()).a : super.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return this.b.e.a() != null ? !((com.google.ads.b.a) this.b.e.a()).a : super.canScrollVertically(i);
    }
}
