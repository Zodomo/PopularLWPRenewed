package com.google.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class cb implements bt {
    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        String strReplaceAll = (String) map.get("url");
        String str = (String) map.get("type");
        String str2 = (String) map.get("afma_notify_dt");
        String str3 = (String) map.get("activation_overlay_url");
        String str4 = (String) map.get("check_packages");
        boolean zEquals = "1".equals(map.get("drt_include"));
        String str5 = (String) map.get("request_scenario");
        boolean zEquals2 = "1".equals(map.get("use_webview_loadurl"));
        com.google.ads.b.u uVar = com.google.ads.b.u.OFFLINE_EMPTY.e.equals(str5) ? com.google.ads.b.u.OFFLINE_EMPTY : com.google.ads.b.u.OFFLINE_USING_BUFFERED_ADS.e.equals(str5) ? com.google.ads.b.u.OFFLINE_USING_BUFFERED_ADS : com.google.ads.b.u.ONLINE_USING_BUFFERED_ADS.e.equals(str5) ? com.google.ads.b.u.ONLINE_USING_BUFFERED_ADS : com.google.ads.b.u.ONLINE_SERVER_REQUEST;
        String str6 = "Received ad url: <url: \"" + strReplaceAll + "\" type: \"" + str + "\" afmaNotifyDt: \"" + str2 + "\" activationOverlayUrl: \"" + str3 + "\" useWebViewLoadUrl: \"" + zEquals2 + "\">";
        com.google.ads.e.i.e();
        if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(strReplaceAll)) {
            BigInteger bigInteger = new BigInteger(new byte[1]);
            String[] strArrSplit = str4.split(",");
            BigInteger bit = bigInteger;
            for (int i = 0; i < strArrSplit.length; i++) {
                if (com.google.ads.e.a.a((Context) wVar.h().c.a(), strArrSplit[i])) {
                    bit = bit.setBit(i);
                }
            }
            String str7 = String.format(Locale.US, "%X", bit);
            strReplaceAll = strReplaceAll.replaceAll("%40installed_markets%40", str7);
            bq.a().a.a(str7);
            String str8 = "Ad url modified to " + strReplaceAll;
            com.google.ads.e.i.e();
        }
        com.google.ads.b.n nVarJ = wVar.j();
        if (nVarJ != null) {
            nVarJ.c(zEquals);
            nVarJ.a(uVar);
            nVarJ.d(zEquals2);
            nVarJ.e(str3);
            nVarJ.d(strReplaceAll);
        }
    }
}
