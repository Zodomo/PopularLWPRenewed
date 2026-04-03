package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class p implements DialogInterface.OnCancelListener {
    final /* synthetic */ o a;

    p(o oVar) {
        this.a = oVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.a.finish();
    }
}
