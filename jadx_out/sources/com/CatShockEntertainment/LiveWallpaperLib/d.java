package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.Dialog;
import android.content.SharedPreferences;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class d implements View.OnClickListener {
    private final /* synthetic */ SharedPreferences.Editor a;
    private final /* synthetic */ Dialog b;

    d(SharedPreferences.Editor editor, Dialog dialog) {
        this.a = editor;
        this.b = dialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.a != null) {
            this.a.putBoolean("dontshowagain", true);
            this.a.commit();
        }
        this.b.dismiss();
    }
}
