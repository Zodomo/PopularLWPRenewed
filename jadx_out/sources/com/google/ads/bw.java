package com.google.ads;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class bw implements bt {
    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        Uri uriA;
        Uri uri;
        String host;
        String str = (String) map.get("u");
        if (str == null) {
            com.google.ads.e.i.h();
            return;
        }
        com.google.ads.b.ab abVarM = wVar.m();
        if (abVarM != null && (host = (uri = Uri.parse(str)).getHost()) != null && host.toLowerCase(Locale.US).endsWith(".admob.com")) {
            String str2 = null;
            String path = uri.getPath();
            if (path != null) {
                String[] strArrSplit = path.split("/");
                if (strArrSplit.length >= 4) {
                    str2 = strArrSplit[2] + "/" + strArrSplit[3];
                }
            }
            abVarM.a(str2);
        }
        bs bsVarH = wVar.h();
        Context context = (Context) bsVarH.f.a();
        Uri uri2 = Uri.parse(str);
        try {
            ak akVar = (ak) bsVarH.s.a();
            uriA = (akVar == null || !akVar.a(uri2)) ? uri2 : akVar.a(uri2, context);
        } catch (al e) {
            String str3 = "Unable to append parameter to URL: " + str;
            uriA = uri2;
            com.google.ads.e.i.h();
        }
        new Thread(new p(uriA.toString(), context)).start();
    }
}
