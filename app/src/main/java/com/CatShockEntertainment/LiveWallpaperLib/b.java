package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class b implements View.OnClickListener {
    private final /* synthetic */ Context a;
    private final /* synthetic */ SharedPreferences.Editor b;
    private final /* synthetic */ Dialog c;

    b(Context context, SharedPreferences.Editor editor, Dialog dialog) {
        this.a = context;
        this.b = editor;
        this.c = dialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + this.a.getPackageName())));
        this.b.putBoolean("dontshowagain", true);
        this.b.commit();
        this.c.dismiss();
    }
}
