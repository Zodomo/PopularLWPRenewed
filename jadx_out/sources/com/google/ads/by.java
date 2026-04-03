package com.google.ads;

import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class by implements bt {
    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        if (webView instanceof com.google.ads.b.e) {
            ((com.google.ads.b.e) webView).setCustomClose("1".equals(map.get("custom_close")));
        } else {
            com.google.ads.e.i.c();
        }
    }
}
