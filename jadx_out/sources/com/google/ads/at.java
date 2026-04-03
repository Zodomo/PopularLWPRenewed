package com.google.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* JADX INFO: loaded from: classes.dex */
final class at implements Runnable {
    final /* synthetic */ Context a;

    at(Context context) {
        this.a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.a.getApplicationContext()).edit();
        editorEdit.putString("drt", "");
        editorEdit.putLong("drt_ts", 0L);
        editorEdit.commit();
    }
}
