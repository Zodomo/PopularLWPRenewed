package com.google.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class bv implements bt {
    private static final com.google.ads.b.h a = (com.google.ads.b.h) com.google.ads.b.h.a.a();

    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        String str = (String) map.get("urls");
        if (str == null) {
            com.google.ads.e.i.h();
            return;
        }
        String[] strArrSplit = str.split(",");
        HashMap map2 = new HashMap();
        PackageManager packageManager = webView.getContext().getPackageManager();
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split(";", 2);
            map2.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(strArrSplit2.length >= 2 ? strArrSplit2[1] : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0])), 65536) != null));
        }
        com.google.ads.b.h hVar = a;
        com.google.ads.b.h.a(webView, map2);
    }
}
