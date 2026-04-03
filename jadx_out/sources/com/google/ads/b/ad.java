package com.google.ads.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.al;
import com.google.ads.bs;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ad extends WebViewClient {
    private static final h c = (h) h.a.a();
    protected w a;
    private final Map d;
    private final boolean e;
    private boolean f;
    private boolean g;
    protected boolean b = false;
    private boolean h = false;
    private boolean i = false;

    public ad(w wVar, Map map, boolean z, boolean z2) {
        this.a = wVar;
        this.d = map;
        this.e = z;
        this.g = z2;
    }

    public static ad a(w wVar, Map map, boolean z, boolean z2) {
        return com.google.ads.e.a.a >= 11 ? new com.google.ads.e.aa(wVar, map, z, z2) : new ad(wVar, map, z, z2);
    }

    public final void a() {
        this.b = true;
    }

    public final void b() {
        this.g = false;
    }

    public final void c() {
        this.h = true;
    }

    public final void d() {
        this.i = true;
    }

    public final boolean e() {
        return this.f;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.f = false;
        if (this.h) {
            n nVarJ = this.a.j();
            if (nVarJ != null) {
                nVarJ.b();
            } else {
                com.google.ads.e.i.a();
            }
            this.h = false;
        }
        if (this.i) {
            h hVar = c;
            h.a(webView);
            this.i = false;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.f = true;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        this.f = false;
        n nVarJ = this.a.j();
        if (nVarJ != null) {
            nVarJ.a(com.google.ads.e.NETWORK_ERROR);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uriA;
        try {
            String str2 = "shouldOverrideUrlLoading(\"" + str + "\")";
            com.google.ads.e.i.a();
            Uri uri = Uri.parse(str);
            h hVar = c;
            if (h.a(uri)) {
                h hVar2 = c;
                h.a(this.a, this.d, uri, webView);
                return true;
            }
            if (this.g) {
                if (com.google.ads.e.a.a(uri)) {
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                HashMap map = new HashMap();
                map.put("u", str);
                AdActivity.a(this.a, new x("intent", map));
                return true;
            }
            if (this.e) {
                try {
                    bs bsVarH = this.a.h();
                    Context context = (Context) bsVarH.f.a();
                    com.google.ads.ak akVar = (com.google.ads.ak) bsVarH.s.a();
                    uriA = (akVar == null || !akVar.a(uri)) ? uri : akVar.a(uri, context);
                } catch (al e) {
                    String str3 = "Unable to append parameter to URL: " + str;
                    uriA = uri;
                    com.google.ads.e.i.h();
                }
                HashMap map2 = new HashMap();
                map2.put("u", uriA.toString());
                AdActivity.a(this.a, new x("intent", map2));
                return true;
            }
            String str4 = "URL is not a GMSG and can't handle URL: " + str;
            com.google.ads.e.i.h();
        } catch (Throwable th) {
            com.google.ads.e.i.i();
        }
        return true;
    }
}
