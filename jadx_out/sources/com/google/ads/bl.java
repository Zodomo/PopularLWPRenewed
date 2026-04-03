package com.google.ads;

import android.app.Activity;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
final class bl implements Runnable {
    private final bj a;
    private final String b;
    private final d c;
    private final HashMap d;
    private final boolean e;
    private final WeakReference f;

    public bl(bj bjVar, Activity activity, String str, d dVar, HashMap map) {
        boolean z;
        this.a = bjVar;
        this.b = str;
        this.f = new WeakReference(activity);
        this.c = dVar;
        this.d = new HashMap(map);
        String str2 = (String) this.d.remove("gwhirl_share_location");
        if ("1".equals(str2)) {
            z = true;
        } else {
            if (str2 != null && !"0".equals(str2)) {
                String str3 = "Received an illegal value, '" + str2 + "', for the special share location parameter from mediation server (expected '0' or '1'). Will not share the location.";
                com.google.ads.e.i.c();
            }
            z = false;
        }
        this.e = z;
    }

    private void a(bi biVar) {
        com.google.ads.e.i.d();
        this.a.a(biVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            String str = "Trying to instantiate: " + this.b;
            com.google.ads.e.i.a();
            com.google.ads.c.b bVar = (com.google.ads.c.b) com.google.ads.c.b.class.cast(Class.forName(this.b).newInstance());
            Activity activity = (Activity) this.f.get();
            if (activity == null) {
                throw new bm("Activity became null while trying to instantiate adapter.");
            }
            this.a.a(bVar);
            Class clsC = bVar.c();
            if (clsC != null) {
                ((com.google.ads.c.e) clsC.newInstance()).a(this.d);
            }
            Class clsB = bVar.b();
            if (clsB != null) {
                this.c.a(clsB);
            }
            new com.google.ads.c.a(this.c, activity, this.e);
            if (this.a.a.a()) {
                if (!(bVar instanceof com.google.ads.c.d)) {
                    throw new bm("Adapter " + this.b + " doesn't support the MediationInterstitialAdapter interface.");
                }
                new bo(this.a);
                ((com.google.ads.c.d) bVar).d();
            } else {
                if (!(bVar instanceof com.google.ads.c.c)) {
                    throw new bm("Adapter " + this.b + " doesn't support the MediationBannerAdapter interface");
                }
                new bn(this.a);
                this.a.a.c();
                ((com.google.ads.c.c) bVar).d();
            }
            this.a.g();
        } catch (ClassNotFoundException e) {
            String str2 = "Cannot find adapter class '" + this.b + "'. Did you link the ad network's mediation adapter? Skipping ad network.";
            a(bi.NOT_FOUND);
        } catch (Throwable th) {
            a(bi.EXCEPTION);
        }
    }
}
