package com.google.ads;

import android.app.Activity;
import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class n implements bt {
    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        if (((Activity) wVar.h().c.a()) == null) {
            com.google.ads.e.i.h();
            return;
        }
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int i = Integer.parseInt(str);
            int i2 = Integer.parseInt(str2);
            int i3 = Integer.parseInt(str3);
            ai aiVar = (ai) wVar.h().r.a();
            if (aiVar != null) {
                aiVar.a(i, i2, i3);
            }
        } catch (NumberFormatException e) {
            com.google.ads.e.i.h();
        }
    }
}
