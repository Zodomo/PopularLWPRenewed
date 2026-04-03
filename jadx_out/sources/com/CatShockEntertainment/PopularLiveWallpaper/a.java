package com.CatShockEntertainment.PopularLiveWallpaper;

import android.service.wallpaper.WallpaperService;
import com.CatShockEntertainment.LiveWallpaperLib.f;

/* JADX INFO: loaded from: classes.dex */
public class a extends f {
    @Override // com.CatShockEntertainment.LiveWallpaperLib.f, android.service.wallpaper.WallpaperService, android.app.Service
    public void onCreate() {
        super.onCreate();
        a = "Popular Live Wallpaper";
        b = "PopularLWPSettings";
        c = getString(d.get_full_version_android_market_url);
        d = getString(d.trial_version_descryption);
        e = e.settings;
        f = false;
        g = "ca-app-pub-1633067632258161/7682537936";
        if (a()) {
            return;
        }
        String str = a;
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.f, android.service.wallpaper.WallpaperService
    public WallpaperService.Engine onCreateEngine() {
        if (this.i != null) {
            this.i.onVisibilityChanged(false);
        }
        this.h = new PopularRenderer(this);
        this.i = new b(this, this.h);
        this.i.a();
        return this.i;
    }
}
