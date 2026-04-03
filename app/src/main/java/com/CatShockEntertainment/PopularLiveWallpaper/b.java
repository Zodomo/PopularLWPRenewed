package com.CatShockEntertainment.PopularLiveWallpaper;

import android.content.SharedPreferences;
import com.CatShockEntertainment.LiveWallpaperLib.f;
import com.CatShockEntertainment.LiveWallpaperLib.g;
import com.CatShockEntertainment.LiveWallpaperLib.i;

/* JADX INFO: loaded from: classes.dex */
final class b extends g {
    final /* synthetic */ a d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(a aVar, i iVar) {
        super(aVar, iVar, true, 55.0f);
        this.d = aVar;
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.g, android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        super.onSharedPreferenceChanged(sharedPreferences, str);
        i iVar = this.a;
        if (iVar instanceof PopularRendererControls) {
            PopularRendererControls popularRendererControls = (PopularRendererControls) iVar;
            boolean zB = this.d.i.b();
            if (zB) {
                this.d.i.d();
            }
            String string = sharedPreferences.getString("cameras", "Camera 1");
            if (string.equals("Camera 1")) {
                popularRendererControls.setCamera(2);
            }
            if (string.equals("Camera 2")) {
                popularRendererControls.setCamera(1);
            }
            if (string.equals("Camera 3")) {
                popularRendererControls.setCamera(3);
            }
            popularRendererControls.setCameraHeight(sharedPreferences.getFloat("camera_height", 0.5f));
            popularRendererControls.setCameraVel(sharedPreferences.getFloat("camera_velocity", 0.0f));
            popularRendererControls.setTouchSensibility(sharedPreferences.getFloat("touch_sensibility", 0.5f));
            popularRendererControls.setAnimationSpeedFac((sharedPreferences.getFloat("animation_speed", 0.47368f) * 1.9f) + 0.1f);
            popularRendererControls.setBackgroundNoise(sharedPreferences.getFloat("background_noise", 0.2f));
            popularRendererControls.setPatternFrequency(sharedPreferences.getFloat("pattern_frequency", 0.2f));
            popularRendererControls.setTranslatingRectanglesFrequency(sharedPreferences.getFloat("translating_rectangles_frequency", 0.5f));
            popularRendererControls.setGrowingRectangleFrequency(sharedPreferences.getFloat("growing_rectangles_frequency", 0.5f));
            popularRendererControls.setShrinkingRectangleFrequency(sharedPreferences.getFloat("shrinking_rectangles_frequency", 0.5f));
            popularRendererControls.setRouteFrequency(sharedPreferences.getFloat("route_frequency", 0.5f));
            popularRendererControls.setRailrouteFrequency(sharedPreferences.getFloat("raile_route_frequency", 0.5f));
            if (f.f) {
                popularRendererControls.setFlyingRectanglesFrequency(0.0f);
                popularRendererControls.setStarFrequency(0.0f);
                popularRendererControls.setGrowingAndroidFrequency(0.0f);
                popularRendererControls.setGrowingHeartFrequency(0.0f);
                popularRendererControls.setGridBackgroundColor(-16777216);
            } else {
                popularRendererControls.setFlyingRectanglesFrequency(sharedPreferences.getFloat("flying_rectangles_frequency", 0.5f));
                popularRendererControls.setStarFrequency(sharedPreferences.getFloat("star_frequency", 0.5f));
                popularRendererControls.setGrowingAndroidFrequency(sharedPreferences.getFloat("growing_android_frequency", 0.5f));
                popularRendererControls.setGrowingHeartFrequency(sharedPreferences.getFloat("growing_heart_frequency", 0.5f));
                popularRendererControls.setGridBackgroundColor(-16777216);
            }
            popularRendererControls.setDecay(sharedPreferences.getFloat("decay", 0.5f));
            popularRendererControls.setAttenuation(sharedPreferences.getFloat("attenuation", 0.5f));
            String string2 = sharedPreferences.getString("visualization_style", "Waveform");
            if (string2.equals("Off")) {
                popularRendererControls.setWaveFormRenderMode(0);
            }
            if (string2.equals("Waveform")) {
                popularRendererControls.setWaveFormRenderMode(1);
            }
            if (string2.equals("Spectrum")) {
                popularRendererControls.setWaveFormRenderMode(2);
            }
            if (string2.equals("Equalizer")) {
                popularRendererControls.setWaveFormRenderMode(3);
            }
            popularRendererControls.setWaveFormRendererSize(sharedPreferences.getFloat("panel_size", 1.0f));
            popularRendererControls.setWaveFormRendererAmplitudeFac(sharedPreferences.getFloat("amplitude", 0.2f));
            popularRendererControls.setWaveFormRendererColor1(sharedPreferences.getInt("color_1", -8589378));
            popularRendererControls.setWaveFormRendererColor2(sharedPreferences.getInt("color_2", -16052195));
            popularRendererControls.setWaveFormRendererOpacity(sharedPreferences.getFloat("opacity", 1.0f));
            popularRendererControls.setExcitementbyMusic(sharedPreferences.getBoolean("excitement_by_music", true));
            popularRendererControls.setNoiseExcitement(sharedPreferences.getFloat("excitement_background_noise", 0.5f));
            popularRendererControls.setPatternExcitement(sharedPreferences.getFloat("excitement_pattern", 0.5f));
            if (zB) {
                this.d.i.c();
            }
        }
    }
}
