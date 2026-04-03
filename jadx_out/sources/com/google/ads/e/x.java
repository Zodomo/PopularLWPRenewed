package com.google.ads.e;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* JADX INFO: loaded from: classes.dex */
final class x implements DialogInterface.OnCancelListener {
    final /* synthetic */ JsPromptResult a;

    x(JsPromptResult jsPromptResult) {
        this.a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.a.cancel();
    }
}
