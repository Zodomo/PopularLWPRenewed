package com.google.ads;

import android.text.TextUtils;
import android.webkit.WebView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class cc implements bt {
    private static void a(HashMap map, String str, com.google.ads.e.ae aeVar) {
        try {
            String str2 = (String) map.get(str);
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            aeVar.a(Integer.valueOf(str2));
        } catch (NumberFormatException e) {
            String str3 = "Could not parse \"" + str + "\" constant.";
            com.google.ads.e.i.a();
        }
    }

    private static void b(HashMap map, String str, com.google.ads.e.ae aeVar) {
        try {
            String str2 = (String) map.get(str);
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            aeVar.a(Long.valueOf(str2));
        } catch (NumberFormatException e) {
            String str3 = "Could not parse \"" + str + "\" constant.";
            com.google.ads.e.i.a();
        }
    }

    private static void c(HashMap map, String str, com.google.ads.e.ae aeVar) {
        String str2 = (String) map.get(str);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        aeVar.a(str2);
    }

    @Override // com.google.ads.bt
    public final void a(com.google.ads.b.w wVar, HashMap map, WebView webView) {
        bs bsVarH = wVar.h();
        br brVar = (br) ((bq) bsVarH.d.a()).b.a();
        c(map, "as_domains", brVar.a);
        c(map, "bad_ad_report_path", brVar.h);
        a(map, "min_hwa_banner", brVar.b);
        a(map, "min_hwa_activation_overlay", brVar.c);
        a(map, "min_hwa_overlay", brVar.d);
        c(map, "mraid_banner_path", brVar.e);
        c(map, "mraid_expanded_banner_path", brVar.f);
        c(map, "mraid_interstitial_path", brVar.g);
        b(map, "ac_max_size", brVar.i);
        b(map, "ac_padding", brVar.j);
        b(map, "ac_total_quota", brVar.k);
        b(map, "db_total_quota", brVar.l);
        b(map, "db_quota_per_origin", brVar.m);
        b(map, "db_quota_step_size", brVar.n);
        com.google.ads.b.e eVarK = wVar.k();
        if (com.google.ads.e.a.a >= 11) {
            com.google.ads.e.r.a(eVarK.getSettings(), bsVarH);
            com.google.ads.e.r.a(webView.getSettings(), bsVarH);
        }
        if (!((com.google.ads.b.ac) bsVarH.g.a()).a()) {
            boolean zJ = eVarK.j();
            boolean z = com.google.ads.e.a.a < ((Integer) brVar.b.a()).intValue();
            if (!z && zJ) {
                com.google.ads.e.i.a();
                eVarK.g();
            } else if (z && !zJ) {
                com.google.ads.e.i.a();
                eVarK.f();
            }
        }
        com.google.ads.b.a aVar = (com.google.ads.b.a) bsVarH.e.a();
        if (!((com.google.ads.b.ac) bsVarH.g.a()).b() && aVar != null) {
            boolean zJ2 = aVar.j();
            boolean z2 = com.google.ads.e.a.a < ((Integer) brVar.c.a()).intValue();
            if (!z2 && zJ2) {
                com.google.ads.e.i.a();
                aVar.g();
            } else if (z2 && !zJ2) {
                com.google.ads.e.i.a();
                aVar.f();
            }
        }
        String str = (String) brVar.a.a();
        ak akVar = (ak) bsVarH.s.a();
        if (akVar != null && !TextUtils.isEmpty(str)) {
            akVar.a = str.split(",");
        }
        brVar.o.a(true);
    }
}
