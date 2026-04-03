package com.CatShockEntertainment.LiveWallpaperLib;

/* JADX INFO: loaded from: classes.dex */
final class y implements x {
    final /* synthetic */ NumberEditPreference a;

    y(NumberEditPreference numberEditPreference) {
        this.a = numberEditPreference;
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.x
    public final void a(int i) {
        this.a.a(i);
        this.a.notifyChanged();
        this.a.callChangeListener(Integer.valueOf(this.a.c));
    }
}
