package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class o implements bt {
    private static final com.google.ads.b.h a = (com.google.ads.b.h) com.google.ads.b.h.a.a();

    private static int a(HashMap map, String str, int i, DisplayMetrics displayMetrics) {
        String str2 = (String) map.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            return (int) TypedValue.applyDimension(1, Integer.parseInt(str2), displayMetrics);
        } catch (NumberFormatException e) {
            String str3 = "Could not parse \"" + str + "\" in a video gmsg: " + str2;
            com.google.ads.e.i.a();
            return i;
        }
    }

    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        String str = (String) map.get("action");
        if (str == null) {
            com.google.ads.e.i.a();
            return;
        }
        if (!(webView instanceof com.google.ads.b.e)) {
            com.google.ads.e.i.a();
            return;
        }
        com.google.ads.b.e eVar = (com.google.ads.b.e) webView;
        AdActivity adActivityH = eVar.h();
        if (adActivityH == null) {
            com.google.ads.e.i.a();
            return;
        }
        boolean zEquals = str.equals("new");
        boolean zEquals2 = str.equals("position");
        if (zEquals || zEquals2) {
            DisplayMetrics displayMetricsA = com.google.ads.e.a.a((Activity) adActivityH);
            int iA = a(map, "x", 0, displayMetricsA);
            int iA2 = a(map, "y", 0, displayMetricsA);
            int iA3 = a(map, "w", -1, displayMetricsA);
            int iA4 = a(map, "h", -1, displayMetricsA);
            if (zEquals && adActivityH.a() == null) {
                adActivityH.b(iA, iA2, iA3, iA4);
                return;
            } else {
                adActivityH.a(iA, iA2, iA3, iA4);
                return;
            }
        }
        com.google.ads.b.c cVarA = adActivityH.a();
        if (cVarA == null) {
            com.google.ads.b.h hVar = a;
            com.google.ads.b.h.a(eVar, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
            return;
        }
        if (str.equals("click")) {
            DisplayMetrics displayMetricsA2 = com.google.ads.e.a.a((Activity) adActivityH);
            int iA5 = a(map, "x", 0, displayMetricsA2);
            int iA6 = a(map, "y", 0, displayMetricsA2);
            long jUptimeMillis = SystemClock.uptimeMillis();
            cVarA.a(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iA5, iA6, 0));
            return;
        }
        if (str.equals("controls")) {
            String str2 = (String) map.get("enabled");
            if (str2 == null) {
                com.google.ads.e.i.a();
                return;
            } else if (str2.equals("true")) {
                cVarA.setMediaControllerEnabled(true);
                return;
            } else {
                cVarA.setMediaControllerEnabled(false);
                return;
            }
        }
        if (str.equals("currentTime")) {
            String str3 = (String) map.get("time");
            if (str3 == null) {
                com.google.ads.e.i.a();
                return;
            }
            try {
                cVarA.a((int) (Float.parseFloat(str3) * 1000.0f));
                return;
            } catch (NumberFormatException e) {
                String str4 = "Could not parse \"time\" parameter: " + str3;
                com.google.ads.e.i.a();
                return;
            }
        }
        if (str.equals("hide")) {
            cVarA.setVisibility(4);
            return;
        }
        if (str.equals("load")) {
            cVarA.a();
            return;
        }
        if (str.equals("pause")) {
            cVarA.b();
            return;
        }
        if (str.equals("play")) {
            cVarA.c();
            return;
        }
        if (str.equals("show")) {
            cVarA.setVisibility(0);
        } else if (str.equals("src")) {
            cVarA.setSrc((String) map.get("src"));
        } else {
            String str5 = "Unknown video action: " + str;
            com.google.ads.e.i.a();
        }
    }
}
