package com.CatShockEntertainment.LiveWallpaperLib;

import android.os.CountDownTimer;

/* JADX INFO: loaded from: classes.dex */
final class n extends CountDownTimer {
    final /* synthetic */ LiveWallpaperLauncher a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    n(LiveWallpaperLauncher liveWallpaperLauncher) {
        super(3000L, 1000L);
        this.a = liveWallpaperLauncher;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        this.a.a.show();
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j) {
        this.a.a.show();
    }
}
