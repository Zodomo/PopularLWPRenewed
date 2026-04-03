package com.google.ads.e;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: loaded from: classes.dex */
final class u implements DialogInterface.OnCancelListener {
    final /* synthetic */ JsResult a;

    u(JsResult jsResult) {
        this.a = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.a.cancel();
    }
}
