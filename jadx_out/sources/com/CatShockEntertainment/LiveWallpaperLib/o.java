package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.provider.Settings;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public class o extends PreferenceActivity implements SharedPreferences.OnSharedPreferenceChangeListener {
    private static final byte[] c = {127, 4, 89, -11, -67, -53, 99, -77, 13, 127, -110, -21, -27, -41, -8, 112, 4, -65, 91, 31};
    private com.google.ads.h b;
    private com.android.vending.licensing.l d;
    private com.android.vending.licensing.h e = null;
    boolean a = false;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(ac.preference_activity_layout);
        if (f.f) {
            this.b = new com.google.ads.h(this, com.google.ads.g.a, f.g);
            ((LinearLayout) findViewById(ab.preference_ad)).addView(this.b);
            com.google.ads.d dVar = new com.google.ads.d();
            dVar.a(com.google.ads.d.b);
            this.b.a(dVar);
        }
        getPreferenceManager().setSharedPreferencesName(f.b);
        addPreferencesFromResource(f.e);
        getPreferenceManager().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(getPreferenceManager().getSharedPreferences(), null);
        String string = Settings.Secure.getString(getContentResolver(), "android_id");
        if (!f.f) {
            this.d = new v(this, (byte) 0);
            this.e = new com.android.vending.licensing.h(this, new com.android.vending.licensing.u(this, new com.android.vending.licensing.a(c, getPackageName(), string)), "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgL6Wt3AKdHz9w3v4CpicWRtwRfG87PBL/FNUgWmSpbE5SVIPDkZd4TPOLduGN7Qnr+JHOQTEw4HxWtl8xmUU3HrTxukQD/SyjH9aqmEBCMQTnQumftRiyCmQ2hrxqIDfoiNMD2ToIfP2D2YzA/fL2JWu3KNp1Qoy5eH98bIbf5EanczqccSgoj4zyV9wtJ7I306Ez0TSDuNNsz1pUZueENlYgbYkDpgInqGWxP7IzJqwpuWa7503xkfbQCKhW771A2TyaQpZXbQjQdQVbPgbkw3X3lzLHe+OVlIcb2ffgXLJYa1KLIBJlaOAGjXiHMOgtOmxkzTCij+wl/7V5NROcQIDAQAB");
            if (!f.f && this.e != null) {
                setProgressBarIndeterminateVisibility(true);
                this.e.a(this.d);
            }
        }
        if (f.f && !a.b(this)) {
            new m(this).show();
        }
        ((NumberEditPreference) findPreference("hs_es_time_to_reduced_fps")).b(300);
        ((NumberEditPreference) findPreference("hs_es_time_to_reduced_fps")).c(5);
        ((NumberEditPreference) findPreference("hs_es_time_to_reduced_fps")).a("Seconds");
        ((NumberEditPreference) findPreference("reduced_fps")).c(1);
        ((NumberEditPreference) findPreference("reduced_fps")).b(20);
        ((NumberEditPreference) findPreference("reduced_fps")).a("FPS");
        a.a(this);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        if (i == 0) {
            return new AlertDialog.Builder(this).setOnCancelListener(new p(this)).setTitle(ad.unlicensed_dialog_title).setMessage(ad.unlicensed_dialog_body).setPositiveButton(ad.buy_button, new q(this)).setNegativeButton(ad.quit_button, new r(this)).create();
        }
        if (i == -1) {
            return new AlertDialog.Builder(this).setOnCancelListener(new s(this)).setTitle("Home Screen ES").setMessage("You have enabled the home screen energy saving feature which is intended for people tending to let their android idling on its home screen. It lets you minimize the battery impact by reducing the framerate after a defined time of idling. Touching or other events of activity will cause recovering of the full framerate.").setPositiveButton("Ok", new t(this)).setNegativeButton("Never mind", new u(this)).create();
        }
        return null;
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        if (f.f && this.b != null) {
            this.b.a();
        }
        getPreferenceManager().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        super.onDestroy();
        if (f.f || this.e == null) {
            return;
        }
        this.e.a();
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
        if (zBooleanValue || this.a) {
            return;
        }
        showDialog(-1);
    }
}
