package com.google.ads;

import android.text.TextUtils;
import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class m implements bt {
    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        if (!(webView instanceof com.google.ads.b.a)) {
            com.google.ads.e.i.c();
            return;
        }
        try {
            int i = !TextUtils.isEmpty((CharSequence) map.get("w")) ? Integer.parseInt((String) map.get("w")) : -1;
            int i2 = !TextUtils.isEmpty((CharSequence) map.get("h")) ? Integer.parseInt((String) map.get("h")) : -1;
            int i3 = !TextUtils.isEmpty((CharSequence) map.get("x")) ? Integer.parseInt((String) map.get("x")) : -1;
            int i4 = TextUtils.isEmpty((CharSequence) map.get("y")) ? -1 : Integer.parseInt((String) map.get("y"));
            if (map.get("a") != null && ((String) map.get("a")).equals("1")) {
                wVar.a(true, i3, i4, i, i2);
            } else if (map.get("a") == null || !((String) map.get("a")).equals("0")) {
                wVar.a(i3, i4, i, i2);
            } else {
                wVar.a(false, i3, i4, i, i2);
            }
        } catch (NumberFormatException e) {
            com.google.ads.e.i.i();
        }
    }
}
