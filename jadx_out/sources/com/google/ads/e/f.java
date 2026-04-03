package com.google.ads.e;

import android.view.View;
import android.webkit.WebChromeClient;
import com.google.ads.bs;

/* JADX INFO: loaded from: classes.dex */
public final class f extends t {
    public f(bs bsVar) {
        super(bsVar);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        customViewCallback.onCustomViewHidden();
    }
}
