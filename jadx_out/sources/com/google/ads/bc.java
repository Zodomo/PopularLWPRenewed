package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.SystemClock;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class bc {
    final com.google.ads.b.w a;
    public Thread b;
    public final Object c;
    public boolean d;
    public final Object e;
    private bj f;
    private final Object g;

    protected bc() {
        this.f = null;
        this.g = new Object();
        this.b = null;
        this.c = new Object();
        this.d = false;
        this.e = new Object();
        this.a = null;
    }

    public bc(com.google.ads.b.w wVar) {
        this.f = null;
        this.g = new Object();
        this.b = null;
        this.c = new Object();
        this.d = false;
        this.e = new Object();
        com.google.ads.e.g.a(wVar);
        this.a = wVar;
    }

    private boolean b() {
        boolean z;
        synchronized (this.c) {
            z = this.b != null;
        }
        return z;
    }

    public final void a(az azVar, d dVar) {
        synchronized (this.c) {
            if (b()) {
                com.google.ads.e.i.e();
                return;
            }
            if (azVar.d()) {
                this.a.a(azVar.e());
                if (!this.a.q()) {
                    this.a.g();
                }
            } else if (this.a.q()) {
                this.a.f();
            }
            com.google.ads.b.w wVar = this.a;
            if (azVar.j() != null) {
                if (!wVar.h().b()) {
                    g gVarC = ((com.google.ads.b.ac) wVar.h().g.a()).c();
                    if (azVar.j().a()) {
                        String str = "AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  (" + gVarC + ") in the ad-type field in the mediation UI.";
                        com.google.ads.e.i.h();
                    } else {
                        g gVarC2 = azVar.j().c();
                        if (gVarC2 != gVarC) {
                            String str2 = "Mediation server returned ad size: '" + gVarC2 + "', while the AdView was created with ad size: '" + gVarC + "'. Using the ad-size passed to the AdView on creation.";
                            com.google.ads.e.i.h();
                        }
                    }
                } else if (!azVar.j().a()) {
                    com.google.ads.e.i.h();
                }
            }
            this.b = new Thread(new bd(this, azVar, dVar));
            this.b.start();
        }
    }

    final boolean a() {
        boolean z;
        synchronized (this.e) {
            z = this.d;
        }
        return z;
    }

    final boolean a(bj bjVar) {
        boolean z;
        synchronized (this.e) {
            if (a()) {
                bjVar.a();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    final boolean a(String str, Activity activity, d dVar, bg bgVar, HashMap map, long j) {
        bj bjVar = new bj(this, (com.google.ads.b.ac) this.a.h().g.a(), bgVar, str, dVar, map);
        synchronized (bjVar) {
            bjVar.a(activity);
            while (!bjVar.b() && j > 0) {
                try {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    bjVar.wait(j);
                    j -= SystemClock.elapsedRealtime() - jElapsedRealtime;
                } catch (InterruptedException e) {
                    String str2 = "Interrupted while waiting for ad network to load ad using adapter class: " + str;
                    com.google.ads.e.i.a();
                }
            }
            this.a.m().a(bjVar.d());
            if (bjVar.b() && bjVar.c()) {
                ((Handler) bq.a().c.a()).post(new bf(this, bjVar, this.a.h().b() ? null : bjVar.e(), bgVar));
                return true;
            }
            if (!bjVar.b()) {
                String str3 = "Timeout occurred in adapter class: " + bjVar.f();
                com.google.ads.e.i.a();
            }
            bjVar.a();
            return false;
        }
    }

    public final void b(bj bjVar) {
        synchronized (this.g) {
            if (this.f != bjVar) {
                if (this.f != null) {
                    this.f.a();
                }
                this.f = bjVar;
            }
        }
    }
}
