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
        if (iVar instanceof PopularRenderer) {
            boolean zB = this.d.i.b();
            if (zB) {
                this.d.i.d();
            }
            String string = sharedPreferences.getString("cameras", "Camera 1");
            if (string.equals("Camera 1")) {
                ((PopularRenderer) iVar).setCamera(2);
            }
            if (string.equals("Camera 2")) {
                ((PopularRenderer) iVar).setCamera(1);
            }
            if (string.equals("Camera 3")) {
                ((PopularRenderer) iVar).setCamera(3);
            }
            ((PopularRenderer) iVar).setCameraHeight(sharedPreferences.getFloat("camera_height", 0.5f));
            ((PopularRenderer) iVar).setCameraVel(sharedPreferences.getFloat("camera_velocity", 0.0f));
            ((PopularRenderer) iVar).setTouchSensibility(sharedPreferences.getFloat("touch_sensibility", 0.5f));
            ((PopularRenderer) iVar).setAnimationSpeedFac((sharedPreferences.getFloat("animation_speed", 0.47368f) * 1.9f) + 0.1f);
            ((PopularRenderer) iVar).setBackgroundNoise(sharedPreferences.getFloat("background_noise", 0.2f));
            ((PopularRenderer) iVar).setPatternFrequency(sharedPreferences.getFloat("pattern_frequency", 0.2f));
            ((PopularRenderer) iVar).setTranslatingRectanglesFrequency(sharedPreferences.getFloat("translating_rectangles_frequency", 0.5f));
            ((PopularRenderer) iVar).setGrowingRectangleFrequency(sharedPreferences.getFloat("growing_rectangles_frequency", 0.5f));
            ((PopularRenderer) iVar).setShrinkingRectangleFrequency(sharedPreferences.getFloat("shrinking_rectangles_frequency", 0.5f));
            ((PopularRenderer) iVar).setRouteFrequency(sharedPreferences.getFloat("route_frequency", 0.5f));
            ((PopularRenderer) iVar).setRailrouteFrequency(sharedPreferences.getFloat("raile_route_frequency", 0.5f));
            if (f.f) {
                ((PopularRenderer) iVar).setFlyingRectanglesFrequency(0.0f);
                ((PopularRenderer) iVar).setStarFrequency(0.0f);
                ((PopularRenderer) iVar).setGrowingAndroidFrequency(0.0f);
                ((PopularRenderer) iVar).setGrowingHeartFrequency(0.0f);
                ((PopularRenderer) iVar).setGridBackgroundColor(-16777216);
            } else {
                ((PopularRenderer) iVar).setFlyingRectanglesFrequency(sharedPreferences.getFloat("flying_rectangles_frequency", 0.5f));
                ((PopularRenderer) iVar).setStarFrequency(sharedPreferences.getFloat("star_frequency", 0.5f));
                ((PopularRenderer) iVar).setGrowingAndroidFrequency(sharedPreferences.getFloat("growing_android_frequency", 0.5f));
                ((PopularRenderer) iVar).setGrowingHeartFrequency(sharedPreferences.getFloat("growing_heart_frequency", 0.5f));
                ((PopularRenderer) iVar).setGridBackgroundColor(-16777216);
            }
            ((PopularRenderer) iVar).setDecay(sharedPreferences.getFloat("decay", 0.5f));
            ((PopularRenderer) iVar).setAttenuation(sharedPreferences.getFloat("attenuation", 0.5f));
            String string2 = sharedPreferences.getString("visualization_style", "Waveform");
            if (string2.equals("Off")) {
                ((PopularRenderer) iVar).setWaveFormRenderMode(0);
            }
            if (string2.equals("Waveform")) {
                ((PopularRenderer) iVar).setWaveFormRenderMode(1);
            }
            if (string2.equals("Spectrum")) {
                ((PopularRenderer) iVar).setWaveFormRenderMode(2);
            }
            if (string2.equals("Equalizer")) {
                ((PopularRenderer) iVar).setWaveFormRenderMode(3);
            }
            ((PopularRenderer) iVar).setWaveFormRendererSize(sharedPreferences.getFloat("panel_size", 1.0f));
            ((PopularRenderer) iVar).setWaveFormRendererAmplitudeFac(sharedPreferences.getFloat("amplitude", 0.2f));
            ((PopularRenderer) iVar).setWaveFormRendererColor1(sharedPreferences.getInt("color_1", -1));
            ((PopularRenderer) iVar).setWaveFormRendererColor2(sharedPreferences.getInt("color_2", -16777216));
            ((PopularRenderer) iVar).setWaveFormRendererOpacity(sharedPreferences.getFloat("opacity", 1.0f));
            ((PopularRenderer) iVar).setExcitementbyMusic(sharedPreferences.getBoolean("excitement_by_music", true));
            ((PopularRenderer) iVar).setNoiseExcitement(sharedPreferences.getFloat("excitement_background_noise", 0.5f));
            ((PopularRenderer) iVar).setPatternExcitement(sharedPreferences.getFloat("excitement_pattern", 0.5f));
            if (zB) {
                this.d.i.c();
            }
        }
    }
}
