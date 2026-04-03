package com.CatShockEntertainment.PopularLiveWallpaper;

import android.service.wallpaper.WallpaperService;
import android.util.Log;
import android.os.Build;
import com.CatShockEntertainment.FreePopularLiveWallpaper.R;
import com.CatShockEntertainment.LiveWallpaperLib.f;

/* JADX INFO: loaded from: classes.dex */
public class a extends f {
    private static final String j = "PopularLWP";

    @Override // com.CatShockEntertainment.LiveWallpaperLib.f, android.service.wallpaper.WallpaperService, android.app.Service
    public void onCreate() {
        super.onCreate();
        a = "Popular Live Wallpaper";
        b = "PopularLWPSettings";
        c = getString(R.string.get_full_version_android_market_url);
        d = getString(R.string.trial_version_descryption);
        e = R.xml.settings;
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
        String[] strArr = Build.SUPPORTED_ABIS;
        String str = strArr.length > 0 ? strArr[0] : "unknown";
        if ("arm64-v8a".equals(str) || "x86_64".equals(str)) {
            Log.w(j, "Using Java fallback renderer on 64-bit ABI: " + str);
            this.h = new FallbackRenderer(this);
        } else {
            try {
                this.h = new PopularRenderer(this);
            } catch (UnsatisfiedLinkError | NoClassDefFoundError e) {
                Log.e(j, "Native renderer unavailable, falling back to Java renderer", e);
                this.h = new FallbackRenderer(this);
            }
        }
        this.i = new b(this, this.h);
        this.i.a();
        return this.i;
    }
}
