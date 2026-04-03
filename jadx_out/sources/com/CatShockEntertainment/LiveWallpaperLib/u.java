package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class u implements DialogInterface.OnClickListener {
    final /* synthetic */ o a;

    u(o oVar) {
        this.a = oVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ah ahVar = new ah(this.a);
        ahVar.a("bnevermind_es", true, "boolean");
        ahVar.a();
        this.a.a = true;
    }
}
