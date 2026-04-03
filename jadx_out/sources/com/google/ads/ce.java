package com.google.ads;

import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ce implements bt {
    private b a;

    public ce() {
        this(new b());
    }

    private ce(b bVar) {
        this.a = bVar;
    }

    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        String str = (String) map.get("a");
        if (str == null) {
            com.google.ads.e.i.a();
            return;
        }
        if (str.equals("webapp")) {
            b bVar = this.a;
            b.a(wVar, new com.google.ads.b.x("webapp", map));
        } else if (str.equals("expand")) {
            b bVar2 = this.a;
            b.a(wVar, new com.google.ads.b.x("expand", map));
        } else {
            b bVar3 = this.a;
            b.a(wVar, new com.google.ads.b.x("intent", map));
        }
    }
}
