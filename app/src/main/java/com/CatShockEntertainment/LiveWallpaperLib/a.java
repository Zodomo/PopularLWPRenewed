package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.Button;
import android.widget.TextView;
import com.CatShockEntertainment.FreePopularLiveWallpaper.R;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final String a = f.a;

    public static void a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(f.b, 0);
        if (sharedPreferences.getBoolean("dontshowagain", false)) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        long j = sharedPreferences.getLong("launch_count", 0L) + 1;
        editorEdit.putLong("launch_count", j);
        Long lValueOf = Long.valueOf(sharedPreferences.getLong("date_firstlaunch", 0L));
        if (lValueOf.longValue() == 0) {
            lValueOf = Long.valueOf(System.currentTimeMillis());
            editorEdit.putLong("date_firstlaunch", lValueOf.longValue());
        }
        if (j >= 12 && System.currentTimeMillis() >= lValueOf.longValue() + 259200000) {
            Dialog dialog = new Dialog(context);
            dialog.setContentView(R.layout.rate_dlg_layout);
            dialog.setTitle("Rate " + a);
            TextView textView = (TextView) dialog.findViewById(R.id.textView);
            textView.setText("If you enjoy using " + a + ", please take a moment to rate it. Thanks for your support!");
            textView.setPadding(10, 10, 10, 10);
            Button button = (Button) dialog.findViewById(R.id.button_rate);
            button.setText("Rate " + a);
            button.setOnClickListener(new b(context, editorEdit, dialog));
            Button button2 = (Button) dialog.findViewById(R.id.button_remind);
            button2.setText("Remind me later");
            button2.setOnClickListener(new c(dialog));
            Button button3 = (Button) dialog.findViewById(R.id.button_nevermind);
            button3.setText("No, thanks");
            button3.setOnClickListener(new d(editorEdit, dialog));
            dialog.show();
        }
        editorEdit.commit();
    }

    public static boolean b(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(f.b, 0);
        if (sharedPreferences.getBoolean("dontshowagain", false)) {
            return false;
        }
        long j = sharedPreferences.getLong("launch_count", 0L) + 1;
        Long lValueOf = Long.valueOf(sharedPreferences.getLong("date_firstlaunch", 0L));
        if (lValueOf.longValue() == 0) {
            lValueOf = Long.valueOf(System.currentTimeMillis());
        }
        return j >= 12 && System.currentTimeMillis() >= lValueOf.longValue() + 259200000;
    }
}
