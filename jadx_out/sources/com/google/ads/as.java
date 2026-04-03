package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class as {
    private static final com.google.ads.b.h a = (com.google.ads.b.h) com.google.ads.b.h.a.a();

    public static void a(Activity activity) {
        new Thread(new au(activity)).start();
    }

    public static boolean a(Context context, long j) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        if (!((defaultSharedPreferences.contains("drt") && defaultSharedPreferences.contains("drt_ts") && defaultSharedPreferences.getLong("drt_ts", 0L) >= new Date().getTime() - j) ? false : true)) {
            return false;
        }
        new Thread(new at(context)).start();
        return true;
    }
}
