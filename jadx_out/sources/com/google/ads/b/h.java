package com.google.ads.b;

import android.net.Uri;
import android.webkit.WebView;
import java.util.Collections;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    private static final h e = new h();
    public static final com.google.ads.e.q a = new j();
    public static final Map b = Collections.unmodifiableMap(new k());
    public static final Map c = Collections.unmodifiableMap(new l());
    public static final Map d = Collections.unmodifiableMap(new i());

    public static void a(WebView webView) {
        a(webView, "onshow", "{'version': 'afma-sdk-a-v6.4.1'}");
    }

    private static void a(WebView webView, String str) {
        String str2 = "Sending JS to a WebView: " + str;
        com.google.ads.e.i.a();
        webView.loadUrl("javascript:" + str);
    }

    public static void a(WebView webView, String str, String str2) {
        if (str2 != null) {
            a(webView, "AFMA_ReceiveMessage('" + str + "', " + str2 + ");");
        } else {
            a(webView, "AFMA_ReceiveMessage('" + str + "');");
        }
    }

    public static void a(WebView webView, Map map) {
        a(webView, "openableURLs", new JSONObject(map).toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.google.ads.b.w r3, java.util.Map r4, android.net.Uri r5, android.webkit.WebView r6) {
        /*
            java.util.HashMap r2 = com.google.ads.e.a.b(r5)
            if (r2 != 0) goto La
            com.google.ads.e.i.h()
        L9:
            return
        La:
            boolean r0 = c(r5)
            if (r0 == 0) goto L6e
            java.lang.String r0 = r5.getHost()
            if (r0 == 0) goto L68
            java.lang.String r1 = "launch"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3e
            java.lang.String r0 = "a"
            java.lang.String r1 = "intent"
            r2.put(r0, r1)
            java.lang.String r0 = "u"
            java.lang.String r1 = "url"
            java.lang.Object r1 = r2.get(r1)
            r2.put(r0, r1)
            java.lang.String r0 = "url"
            r2.remove(r0)
            java.lang.String r0 = "/open"
            r1 = r0
        L38:
            if (r1 != 0) goto L7a
            com.google.ads.e.i.h()
            goto L9
        L3e:
            java.lang.String r1 = "closecanvas"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L4a
            java.lang.String r0 = "/close"
            r1 = r0
            goto L38
        L4a:
            java.lang.String r1 = "log"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L56
            java.lang.String r0 = "/log"
            r1 = r0
            goto L38
        L56:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "An error occurred while parsing the AMSG: "
            r0.<init>(r1)
            java.lang.String r1 = r5.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0.toString()
        L68:
            com.google.ads.e.i.h()
            r0 = 0
            r1 = r0
            goto L38
        L6e:
            boolean r0 = b(r5)
            if (r0 == 0) goto L68
            java.lang.String r0 = r5.getPath()
            r1 = r0
            goto L38
        L7a:
            java.lang.Object r0 = r4.get(r1)
            com.google.ads.bt r0 = (com.google.ads.bt) r0
            if (r0 != 0) goto L9b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "No AdResponse found, <message: "
            r0.<init>(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = ">"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0.toString()
            com.google.ads.e.i.h()
            goto L9
        L9b:
            r0.a(r3, r2, r6)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.b.h.a(com.google.ads.b.w, java.util.Map, android.net.Uri, android.webkit.WebView):void");
    }

    public static boolean a(Uri uri) {
        if (uri == null || !uri.isHierarchical()) {
            return false;
        }
        return b(uri) || c(uri);
    }

    public static void b(WebView webView) {
        a(webView, "onhide", null);
    }

    private static boolean b(Uri uri) {
        String authority;
        String scheme = uri.getScheme();
        return scheme != null && scheme.equals("gmsg") && (authority = uri.getAuthority()) != null && authority.equals("mobileads.google.com");
    }

    private static boolean c(Uri uri) {
        String scheme = uri.getScheme();
        return scheme != null && scheme.equals("admob");
    }
}
