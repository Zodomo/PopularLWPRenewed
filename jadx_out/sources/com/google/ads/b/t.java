package com.google.ads.b;

import android.webkit.WebView;
import com.google.ads.bs;

/* JADX INFO: loaded from: classes.dex */
final class t implements Runnable {
    final /* synthetic */ n a;
    private final String b;
    private final String c;
    private final WebView d;

    public t(n nVar, WebView webView, String str, String str2) {
        this.a = nVar;
        this.d = webView;
        this.b = str;
        this.c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.b.c.a(Boolean.valueOf(this.a.f));
        ((w) ((bs) this.a.b.a.a()).b.a()).k().a(this.a.f);
        if (((bs) this.a.b.a.a()).e.a() != null) {
            ((a) ((bs) this.a.b.a.a()).e.a()).setOverlayEnabled(!this.a.f);
        }
        if (this.c != null) {
            this.d.loadDataWithBaseURL(this.b, this.c, "text/html", "utf-8", null);
        } else {
            this.d.loadUrl(this.b);
        }
    }
}
