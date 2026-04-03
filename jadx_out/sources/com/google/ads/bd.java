package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class bd implements Runnable {
    final /* synthetic */ az a;
    final /* synthetic */ d b;
    final /* synthetic */ bc c;

    bd(bc bcVar, az azVar, d dVar) {
        this.c = bcVar;
        this.a = azVar;
        this.b = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bc bcVar = this.c;
        az azVar = this.a;
        d dVar = this.b;
        synchronized (bcVar.c) {
            com.google.ads.e.g.a(Thread.currentThread(), bcVar.b);
        }
        List listF = azVar.f();
        long jB = azVar.a() ? azVar.b() : 10000L;
        Iterator it = listF.iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                ((Handler) bq.a().c.a()).post(new be(bcVar, azVar));
                break;
            }
            l lVar = (l) it.next();
            String str = "Looking to fetch ads from network: " + lVar.b;
            com.google.ads.e.i.a();
            List<String> list = lVar.c;
            HashMap map = lVar.e;
            List listG = lVar.d;
            String str2 = lVar.a;
            String str3 = lVar.b;
            String strC = azVar.c();
            if (listG == null) {
                listG = azVar.g();
            }
            bg bgVar = new bg(str2, str3, strC, listG, azVar.h(), azVar.i());
            for (String str4 : list) {
                Activity activity = (Activity) bcVar.a.h().c.a();
                if (activity == null) {
                    com.google.ads.e.i.a();
                    break loop0;
                }
                bcVar.a.m().c();
                if (!bcVar.a(str4, activity, dVar, bgVar, map, jB)) {
                    if (bcVar.a()) {
                        com.google.ads.e.i.a();
                        break loop0;
                    }
                } else {
                    break loop0;
                }
            }
        }
        synchronized (this.c.c) {
            this.c.b = null;
        }
    }
}
