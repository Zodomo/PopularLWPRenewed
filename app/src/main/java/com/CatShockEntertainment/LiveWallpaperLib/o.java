package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import com.CatShockEntertainment.FreePopularLiveWallpaper.R;

/* JADX INFO: loaded from: classes.dex */
public class o extends PreferenceActivity implements SharedPreferences.OnSharedPreferenceChangeListener {
    boolean esNeverMindAcknowledged = false;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.preference_activity_layout);
        getPreferenceManager().setSharedPreferencesName(f.b);
        addPreferencesFromResource(f.e);
        getPreferenceManager().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(getPreferenceManager().getSharedPreferences(), null);
        if (f.f && !com.CatShockEntertainment.LiveWallpaperLib.a.b(this)) {
            new m(this).show();
        }
        ((NumberEditPreference) findPreference("hs_es_time_to_reduced_fps")).b(300);
        ((NumberEditPreference) findPreference("hs_es_time_to_reduced_fps")).c(5);
        ((NumberEditPreference) findPreference("hs_es_time_to_reduced_fps")).a("Seconds");
        ((NumberEditPreference) findPreference("reduced_fps")).c(1);
        ((NumberEditPreference) findPreference("reduced_fps")).b(20);
        ((NumberEditPreference) findPreference("reduced_fps")).a("FPS");
        com.CatShockEntertainment.LiveWallpaperLib.a.a(this);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        if (i == -1) {
            return new AlertDialog.Builder(this).setOnCancelListener(new s(this)).setTitle("Home Screen ES").setMessage("You have enabled the home screen energy saving feature which is intended for people tending to let their android idling on its home screen. It lets you minimize the battery impact by reducing the framerate after a defined time of idling. Touching or other events of activity will cause recovering of the full framerate.").setPositiveButton("Ok", new t(this)).setNegativeButton("Never mind", new u(this)).create();
        }
        return null;
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        getPreferenceManager().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (!sharedPreferences.getBoolean("hs_energy_saving", false)) {
            findPreference("hs_es_time_to_reduced_fps").setEnabled(false);
            findPreference("reduced_fps").setEnabled(false);
            return;
        }
        findPreference("hs_es_time_to_reduced_fps").setEnabled(true);
        findPreference("reduced_fps").setEnabled(true);
        if (str == null || !str.equals("hs_energy_saving")) {
            return;
        }
        ah ahVar = new ah(this);
        boolean zBooleanValue = ((Boolean) ahVar.a("bnevermind_es", false)).booleanValue();
        ahVar.a();
        if (zBooleanValue || this.esNeverMindAcknowledged) {
            return;
        }
        showDialog(-1);
    }
}
