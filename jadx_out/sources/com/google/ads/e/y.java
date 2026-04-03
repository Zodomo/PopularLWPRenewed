package com.google.ads.e;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* JADX INFO: loaded from: classes.dex */
final class y implements DialogInterface.OnClickListener {
    final /* synthetic */ JsPromptResult a;

    y(JsPromptResult jsPromptResult) {
        this.a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.cancel();
    }
}
