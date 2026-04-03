package com.CatShockEntertainment.FreePopularLiveWallpaper;

import com.CatShockEntertainment.PopularLiveWallpaper.a;

/* JADX INFO: loaded from: classes.dex */
public class FreePopularLiveWallpaper extends a {
    @Override // com.CatShockEntertainment.PopularLiveWallpaper.a, com.CatShockEntertainment.LiveWallpaperLib.f, android.service.wallpaper.WallpaperService, android.app.Service
    public void onCreate() {
        super.onCreate();
        a = "Free Popular Live Wallpaper";
        b = "Free PopularLWPSettings";
        c = getString(R.string.get_full_version_android_market_url);
        d = getString(R.string.trial_version_descryption);
        e = R.xml.settings_free;
        f = true;
        g = "ca-app-pub-1633067632258161/9159271131";
        if (a()) {
            return;
        }
        String str = a;
    }
}
