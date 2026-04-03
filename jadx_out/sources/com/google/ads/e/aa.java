package com.google.ads.e;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.ads.bq;
import com.google.ads.br;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class aa extends com.google.ads.b.ad {
    public aa(com.google.ads.b.w wVar, Map map, boolean z, boolean z2) {
        super(wVar, map, z, z2);
    }

    private static WebResourceResponse a(String str, Context context) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        try {
            a.a(httpURLConnection, context.getApplicationContext());
            httpURLConnection.connect();
            return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(a.a(new InputStreamReader(httpURLConnection.getInputStream())).getBytes("UTF-8")));
        } finally {
            httpURLConnection.disconnect();
        }
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            if ("mraid.js".equalsIgnoreCase(new File(str).getName())) {
                com.google.ads.b.n nVarJ = this.a.j();
                if (nVarJ != null) {
                    nVarJ.c();
                } else {
                    this.a.a(true);
                }
                br brVar = (br) ((bq) this.a.h().d.a()).b.a();
                if (this.a.h().b()) {
                    String str2 = (String) brVar.g.a();
                    String str3 = "shouldInterceptRequest(" + str2 + ")";
                    i.a();
                    return a(str2, webView.getContext());
                }
                if (this.b) {
                    String str4 = (String) brVar.f.a();
                    String str5 = "shouldInterceptRequest(" + str4 + ")";
                    i.a();
                    return a(str4, webView.getContext());
                }
                String str6 = (String) brVar.e.a();
                String str7 = "shouldInterceptRequest(" + str6 + ")";
                i.a();
                return a(str6, webView.getContext());
            }
        } catch (IOException e) {
            i.i();
        } catch (Throwable th) {
            i.i();
        }
        return super.shouldInterceptRequest(webView, str);
    }
}
