package com.CatShockEntertainment.LiveWallpaperLib;

/* JADX INFO: loaded from: classes.dex */
final class ag implements af {
    final /* synthetic */ SliderPreference a;

    ag(SliderPreference sliderPreference) {
        this.a = sliderPreference;
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.af
    public final void a(float f) {
        this.a.a(f);
        this.a.notifyChanged();
        this.a.callChangeListener(Float.valueOf(f));
    }
}
