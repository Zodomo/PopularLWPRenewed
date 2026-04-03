package com.google.ads.e;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
final class z implements DialogInterface.OnClickListener {
    final /* synthetic */ JsPromptResult a;
    final /* synthetic */ EditText b;

    z(JsPromptResult jsPromptResult, EditText editText) {
        this.a = jsPromptResult;
        this.b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.confirm(this.b.getText().toString());
    }
}
