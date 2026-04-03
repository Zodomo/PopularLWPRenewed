package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class r implements DialogInterface.OnClickListener {
    final /* synthetic */ o a;

    r(o oVar) {
        this.a = oVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.finish();
    }
}
