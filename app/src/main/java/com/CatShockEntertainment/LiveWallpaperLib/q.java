package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class q implements DialogInterface.OnClickListener {
    final /* synthetic */ o a;

    q(o oVar) {
        this.a = oVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.android.com/details?id=" + this.a.getPackageName())));
        this.a.finish();
    }
}
