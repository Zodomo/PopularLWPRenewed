package com.google.ads;

import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ca implements bt {
    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        String str = "Invalid " + ((String) map.get("type")) + " request error: " + ((String) map.get("errors"));
        com.google.ads.e.i.h();
        com.google.ads.b.n nVarJ = wVar.j();
        if (nVarJ != null) {
            nVarJ.a(e.INVALID_REQUEST);
        }
    }
}
