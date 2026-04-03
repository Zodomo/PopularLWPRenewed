package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.ActivityManager;
import android.service.wallpaper.WallpaperService;

/* JADX INFO: loaded from: classes.dex */
public class f extends WallpaperService {
    public static int e;
    public static String g;
    public i h;
    public g i = null;
    public static String a = "GLWallpaperService";
    public static String b = "GLWallpaperServiceSettings";
    public static String c = "";
    public static String d = "";
    public static boolean f = false;

    public final boolean a() {
        return ((ActivityManager) getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion >= 131072;
    }

    @Override // android.service.wallpaper.WallpaperService, android.app.Service
    public void onCreate() {
        super.onCreate();
        k.a().a(this);
    }

    @Override // android.service.wallpaper.WallpaperService
    public WallpaperService.Engine onCreateEngine() {
        g gVar = new g(this, this.h, false, 45.0f);
        this.i = gVar;
        return gVar;
    }
}
