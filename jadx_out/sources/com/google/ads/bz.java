package com.google.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class bz implements bt {
    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        String str = (String) map.get("u");
        if (TextUtils.isEmpty(str)) {
            com.google.ads.e.i.h();
        } else {
            new Thread(new p(str, (Context) wVar.h().f.a())).start();
        }
    }
}
