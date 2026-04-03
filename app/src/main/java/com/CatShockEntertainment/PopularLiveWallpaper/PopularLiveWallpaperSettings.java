package com.CatShockEntertainment.PopularLiveWallpaper;

import android.content.SharedPreferences;
import com.CatShockEntertainment.LiveWallpaperLib.o;

/* JADX INFO: loaded from: classes.dex */
public class PopularLiveWallpaperSettings extends o {
    @Override // com.CatShockEntertainment.LiveWallpaperLib.o, android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        super.onSharedPreferenceChanged(sharedPreferences, str);
        if (sharedPreferences.getString("cameras", "Camera 1").equals("Camera 2")) {
            findPreference("camera_velocity").setEnabled(false);
        } else {
            findPreference("camera_velocity").setEnabled(true);
        }
    }
}
