package com.CatShockEntertainment.LiveWallpaperLib;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    private static k a = null;
    private f b = null;

    private k() {
    }

    public static k a() {
        if (a == null) {
            a = new k();
        }
        return a;
    }

    public final void a(f fVar) {
        this.b = fVar;
    }
}
