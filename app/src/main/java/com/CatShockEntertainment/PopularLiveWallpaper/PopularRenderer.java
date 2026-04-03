package com.CatShockEntertainment.PopularLiveWallpaper;

import android.content.Context;
import android.opengl.GLES20;
import com.CatShockEntertainment.LiveWallpaperLib.j;

/* JADX INFO: loaded from: classes.dex */
class PopularRenderer extends j implements PopularRendererControls {
    static {
        System.loadLibrary("popular_native");
    }

    public PopularRenderer(Context context) {
        super(context);
        i = "Popular LWP Renderer";
    }

    private native void changeRenderBufferSize(int i, int i2);

    private native void framemove();

    private native void init(int i, int i2);

    private native void initJNI(Context context, String str, String str2);

    private native void render();

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j
    public final void a(float f, float f2, int i, int i2) {
        onTouchEvent(f, f2, i, i2);
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j
    public final void a(Context context, String str, String str2) {
        initJNI(context, str, str2);
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j
    public final void a(byte[] bArr, byte[] bArr2, int i, int i2) {
        setFFTWaveForm(bArr, bArr2, i, i2);
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j, com.CatShockEntertainment.LiveWallpaperLib.i
    public final boolean b() {
        return isMusicPlaying();
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j, com.CatShockEntertainment.LiveWallpaperLib.i
    public final void c() {
        super.c();
        framemove();
        GLES20.glViewport(0, 0, this.b, this.c);
        render();
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j
    public final void c(int i, int i2) {
        init(i, i2);
    }

    public native void cancelAllTouches();

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j, com.CatShockEntertainment.LiveWallpaperLib.i
    public final void d() {
        cancelAllTouches();
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j
    public final void d(int i, int i2) {
        changeRenderBufferSize(i, i2);
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.j
    public final void e() {
        setVolume(0.6f);
    }

    public native boolean isMusicPlaying();

    public native void onTouchEvent(float f, float f2, int i, int i2);

    public native void setAnimationSpeedFac(float f);

    public native void setAttenuation(float f);

    public native void setBackgroundNoise(float f);

    public native void setCamera(int i);

    public native void setCameraHeight(float f);

    public native void setCameraVel(float f);

    public native void setDecay(float f);

    public native void setExcitementbyMusic(boolean z);

    public native void setFFTWaveForm(byte[] bArr, byte[] bArr2, int i, int i2);

    public native void setFlyingRectanglesFrequency(float f);

    public native void setGridBackgroundColor(int i);

    public native void setGrowingAndroidFrequency(float f);

    public native void setGrowingHeartFrequency(float f);

    public native void setGrowingRectangleFrequency(float f);

    public native void setNoiseExcitement(float f);

    public native void setPatternExcitement(float f);

    public native void setPatternFrequency(float f);

    public native void setRailrouteFrequency(float f);

    public native void setRouteFrequency(float f);

    public native void setShrinkingRectangleFrequency(float f);

    public native void setStarFrequency(float f);

    public native void setTouchSensibility(float f);

    public native void setTranslatingRectanglesFrequency(float f);

    public native void setVolume(float f);

    public native void setWaveFormRenderMode(int i);

    public native void setWaveFormRendererAmplitudeFac(float f);

    public native void setWaveFormRendererColor1(int i);

    public native void setWaveFormRendererColor2(int i);

    public native void setWaveFormRendererOpacity(float f);

    public native void setWaveFormRendererSize(float f);
}
