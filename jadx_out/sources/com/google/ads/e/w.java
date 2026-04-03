package com.google.ads.e;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: loaded from: classes.dex */
final class w implements DialogInterface.OnClickListener {
    final /* synthetic */ JsResult a;

    w(JsResult jsResult) {
        this.a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.confirm();
    }
}
