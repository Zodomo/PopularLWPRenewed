package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.Dialog;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class c implements View.OnClickListener {
    private final /* synthetic */ Dialog a;

    c(Dialog dialog) {
        this.a = dialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.dismiss();
    }
}
