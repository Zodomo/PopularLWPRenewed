package com.google.ads;

import android.app.Activity;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
final class au implements Runnable {
    private final WeakReference a;
    private final SharedPreferences.Editor b;

    public au(Activity activity) {
        this(activity, (byte) 0);
    }

    private au(Activity activity, byte b) {
        this.a = new WeakReference(activity);
        this.b = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String string;
        try {
            Activity activity = (Activity) this.a.get();
            if (activity == null) {
                com.google.ads.e.i.a();
                return;
            }
            Cursor cursorQuery = activity.getContentResolver().query(ar.a, ar.b, null, null, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst() || cursorQuery.getColumnNames().length <= 0) {
                string = null;
                com.google.ads.e.i.a();
            } else {
                string = cursorQuery.getString(cursorQuery.getColumnIndex(cursorQuery.getColumnName(0)));
            }
            SharedPreferences.Editor editorEdit = this.b == null ? PreferenceManager.getDefaultSharedPreferences(activity.getApplicationContext()).edit() : this.b;
            if (TextUtils.isEmpty(string)) {
                editorEdit.putString("drt", "");
                editorEdit.putLong("drt_ts", 0L);
            } else {
                editorEdit.putString("drt", string);
                editorEdit.putLong("drt_ts", new Date().getTime());
            }
            editorEdit.commit();
        } catch (Throwable th) {
            com.google.ads.e.i.i();
        }
    }
}
