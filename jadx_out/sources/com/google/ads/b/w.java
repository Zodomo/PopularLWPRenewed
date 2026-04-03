package com.google.ads.b;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.ads.AdActivity;
import com.google.ads.as;
import com.google.ads.ay;
import com.google.ads.az;
import com.google.ads.bb;
import com.google.ads.bc;
import com.google.ads.bg;
import com.google.ads.bj;
import com.google.ads.bp;
import com.google.ads.bq;
import com.google.ads.br;
import com.google.ads.bs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class w {
    private static final Object a = new Object();
    private final bs b;
    private e f;
    private ad g;
    private long i;
    private boolean j;
    private SharedPreferences o;
    private com.google.ads.q q;
    private LinkedList s;
    private LinkedList t;
    private LinkedList u;
    private Boolean w;
    private bb x;
    private bc y;
    private bg z;
    private boolean h = false;
    private int v = -1;
    private String A = null;
    private String B = null;
    private boolean r = false;
    private ab e = new ab();
    private n c = null;
    private com.google.ads.d d = null;
    private boolean k = false;
    private long p = 60000;
    private boolean l = false;
    private boolean n = false;
    private boolean m = true;

    public w(com.google.ads.a aVar, Activity activity, com.google.ads.g gVar, String str, ViewGroup viewGroup) {
        ac acVarA = gVar == null ? ac.a : ac.a(gVar, activity.getApplicationContext());
        if (aVar instanceof com.google.ads.a.c) {
            acVarA.d();
        }
        if (activity == null) {
            this.b = new bs(bq.a(), aVar, aVar instanceof com.google.ads.h ? (com.google.ads.h) aVar : null, aVar instanceof com.google.ads.j ? (com.google.ads.j) aVar : null, str, null, null, viewGroup, acVarA, this);
            return;
        }
        synchronized (a) {
            this.o = activity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
            this.i = 60000L;
        }
        this.b = new bs(bq.a(), aVar, aVar instanceof com.google.ads.h ? (com.google.ads.h) aVar : null, aVar instanceof com.google.ads.j ? (com.google.ads.j) aVar : null, str, activity, activity.getApplicationContext(), viewGroup, acVarA, this);
        this.q = new com.google.ads.q(this);
        this.s = new LinkedList();
        this.t = new LinkedList();
        this.u = new LinkedList();
        a();
        com.google.ads.e.a.h((Context) this.b.f.a());
        this.x = new bb();
        this.y = new bc(this);
        this.w = null;
        this.z = null;
    }

    private synchronized void A() {
        if (this.c != null) {
            this.c.a();
            this.c = null;
        }
        if (this.f != null) {
            this.f.stopLoading();
        }
    }

    private synchronized void B() {
        Activity activity = (Activity) this.b.c.a();
        if (activity == null) {
            com.google.ads.e.i.h();
        } else {
            Iterator it = this.u.iterator();
            while (it.hasNext()) {
                new Thread(new com.google.ads.p((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    private void a(View view) {
        ((ViewGroup) this.b.i.a()).setVisibility(0);
        ((ViewGroup) this.b.i.a()).removeAllViews();
        ((ViewGroup) this.b.i.a()).addView(view);
        if (((ac) this.b.g.a()).b()) {
            w wVar = (w) this.b.b.a();
            this.b.l.a();
            wVar.a(false, -1, -1, -1, -1);
            if (((a) this.b.e.a()).a()) {
                ((ViewGroup) this.b.i.a()).addView((View) this.b.e.a(), com.google.ads.e.a.a((Context) this.b.f.a(), ((ac) this.b.g.a()).c().a()), com.google.ads.e.a.a((Context) this.b.f.a(), ((ac) this.b.g.a()).c().b()));
            }
        }
    }

    private void a(List list, String str, String str2, String str3, Boolean bool, String str4, String str5) {
        String strA = com.google.ads.e.a.a((Context) this.b.f.a());
        ay ayVarA = ay.a();
        String string = ayVarA.b().toString();
        String string2 = ayVarA.c().toString();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strReplaceAll = ((String) it.next()).replaceAll("@gw_adlocid@", (String) this.b.h.a()).replaceAll("@gw_qdata@", str3).replaceAll("@gw_sdkver@", "afma-sdk-a-v6.4.1").replaceAll("@gw_sessid@", string).replaceAll("@gw_seqnum@", string2).replaceAll("@gw_devid@", strA);
            if (str2 != null) {
                strReplaceAll = strReplaceAll.replaceAll("@gw_adnetid@", str2);
            }
            if (str != null) {
                strReplaceAll = strReplaceAll.replaceAll("@gw_allocid@", str);
            }
            if (str4 != null) {
                strReplaceAll = strReplaceAll.replaceAll("@gw_adt@", str4);
            }
            if (str5 != null) {
                strReplaceAll = strReplaceAll.replaceAll("@gw_aec@", str5);
            }
            if (bool != null) {
                strReplaceAll = strReplaceAll.replaceAll("@gw_adnetrefresh@", bool.booleanValue() ? "1" : "0");
            }
            new Thread(new com.google.ads.p(strReplaceAll, (Context) this.b.f.a())).start();
        }
        this.e.b();
    }

    private synchronized boolean y() {
        return this.c != null;
    }

    private synchronized void z() {
        Activity activity = (Activity) this.b.c.a();
        if (activity == null) {
            com.google.ads.e.i.h();
        } else {
            Iterator it = this.s.iterator();
            while (it.hasNext()) {
                new Thread(new com.google.ads.p((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    public final synchronized void a() {
        com.google.ads.g gVarC = ((ac) this.b.g.a()).c();
        this.f = com.google.ads.e.a.a >= 14 ? new com.google.ads.e.e(this.b, gVarC) : new e(this.b, gVarC);
        this.f.setVisibility(8);
        this.g = ad.a(this, h.d, true, this.b.b());
        this.f.setWebViewClient(this.g);
        if (com.google.ads.e.a.a < ((Integer) ((br) ((bq) this.b.d.a()).b.a()).b.a()).intValue() && !((ac) this.b.g.a()).a()) {
            com.google.ads.e.i.a();
            this.f.f();
        }
    }

    public final synchronized void a(float f) {
        long j = this.p;
        this.p = (long) (1000.0f * f);
        if (q() && this.p != j) {
            f();
            g();
        }
    }

    public final synchronized void a(int i) {
        this.v = i;
    }

    public final void a(int i, int i2, int i3, int i4) {
        int iB;
        int i5;
        a aVar = (a) this.b.e.a();
        int iA = com.google.ads.e.a.a((Context) this.b.f.a(), i3 < 0 ? ((ac) this.b.g.a()).c().a() : i3);
        Context context = (Context) this.b.f.a();
        if (i4 < 0) {
            i4 = ((ac) this.b.g.a()).c().b();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, com.google.ads.e.a.a(context, i4));
        if (i3 < 0) {
            iB = 0;
            i5 = 0;
        } else {
            iB = i2;
            i5 = i;
        }
        int iC = i5 < 0 ? ((a) this.b.e.a()).c() : i5;
        if (iB < 0) {
            iB = ((a) this.b.e.a()).b();
        }
        ((a) this.b.e.a()).setXPosition(iC);
        ((a) this.b.e.a()).setYPosition(iB);
        layoutParams.setMargins(com.google.ads.e.a.a((Context) this.b.f.a(), iC), com.google.ads.e.a.a((Context) this.b.f.a(), iB), 0, 0);
        aVar.setLayoutParams(layoutParams);
    }

    public final void a(long j) {
        synchronized (a) {
            SharedPreferences.Editor editorEdit = this.o.edit();
            editorEdit.putLong("Timeout" + this.b.h, j);
            editorEdit.commit();
            if (this.r) {
                this.i = j;
            }
        }
    }

    public final synchronized void a(View view, bj bjVar, bg bgVar) {
        com.google.ads.e.i.a();
        this.k = true;
        this.z = bgVar;
        if (this.b.a()) {
            a(view);
            List arrayList = bgVar.d;
            if (arrayList == null) {
                arrayList = new ArrayList();
                arrayList.add("http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@");
            }
            a(arrayList, bgVar.a, bgVar.b, bgVar.c, false, this.e.d(), this.e.e());
        }
        this.y.b(bjVar);
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final synchronized void a(az azVar) {
        this.c = null;
        this.y.a(azVar, this.d);
    }

    public final synchronized void a(com.google.ads.d dVar) {
        com.google.ads.e.i.g();
        if (this.h || y() || AdActivity.b()) {
            com.google.ads.e.i.h();
        } else if (com.google.ads.e.a.c((Context) this.b.f.a()) && com.google.ads.e.a.b((Context) this.b.f.a())) {
            if (as.a((Context) this.b.f.a(), this.o.getLong("GoogleAdMobDoritosLife", 60000L))) {
                as.a((Activity) this.b.c.a());
            }
            this.k = false;
            this.s.clear();
            this.t.clear();
            this.d = dVar;
            bb bbVar = this.x;
            if (bbVar.a != null && SystemClock.elapsedRealtime() < bbVar.b) {
                this.y.a(this.x.a, dVar);
            } else {
                bp bpVar = new bp(this.b);
                this.b.m.a(bpVar);
                this.c = (n) bpVar.b.a();
                this.c.a(dVar);
            }
        }
    }

    public final synchronized void a(com.google.ads.e eVar) {
        this.c = null;
        if (eVar == com.google.ads.e.NETWORK_ERROR) {
            a(60.0f);
            if (!q()) {
                g();
                this.n = true;
            }
        }
        if (this.b.b()) {
            if (eVar == com.google.ads.e.NO_FILL) {
                this.e.B();
            } else if (eVar == com.google.ads.e.NETWORK_ERROR) {
                this.e.z();
            }
        }
        String str = "onFailedToReceiveAd(" + eVar + ")";
        com.google.ads.e.i.e();
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final void a(String str) {
        this.B = str;
        Uri uriBuild = new Uri.Builder().encodedQuery(str).build();
        StringBuilder sb = new StringBuilder();
        HashMap mapB = com.google.ads.e.a.b(uriBuild);
        for (String str2 : mapB.keySet()) {
            sb.append(str2).append(" = ").append((String) mapB.get(str2)).append("\n");
        }
        this.A = sb.toString().trim();
        if (TextUtils.isEmpty(this.A)) {
            this.A = null;
        }
    }

    protected final synchronized void a(LinkedList linkedList) {
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            String str = "Adding a click tracking URL: " + ((String) it.next());
            com.google.ads.e.i.a();
        }
        this.u = linkedList;
    }

    public final synchronized void a(boolean z) {
        this.j = z;
    }

    public final void a(boolean z, int i, int i2, int i3, int i4) {
        ((a) this.b.e.a()).setOverlayActivated(!z);
        a(i, i2, i3, i4);
        if (this.b.q.a() != null) {
            if (z) {
                this.b.q.a();
                this.b.a.a();
            } else {
                this.b.q.a();
                this.b.a.a();
            }
        }
    }

    public final synchronized void b() {
        if (this.y != null) {
            bc bcVar = this.y;
            synchronized (bcVar.e) {
                bcVar.d = true;
                bcVar.b(null);
                synchronized (bcVar.c) {
                    if (bcVar.b != null) {
                        bcVar.b.interrupt();
                    }
                }
            }
        }
        this.b.o.a(null);
        this.b.p.a(null);
        A();
        f();
        if (this.f != null) {
            this.f.destroy();
        }
        this.h = true;
    }

    public final synchronized void b(long j) {
        if (j > 0) {
            this.o.edit().putLong("GoogleAdMobDoritosLife", j).commit();
        }
    }

    public final synchronized void b(az azVar) {
        com.google.ads.e.i.a();
        List listI = azVar.i();
        String strC = azVar.c();
        if (listI == null) {
            listI = new ArrayList();
            listI.add("http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@");
        }
        a(listI, null, null, strC, null, this.e.d(), this.e.e());
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
            com.google.ads.e eVar = com.google.ads.e.NO_FILL;
        }
    }

    protected final synchronized void b(String str) {
        String str2 = "Adding a tracking URL: " + str;
        com.google.ads.e.i.a();
        this.s.add(str);
    }

    public final void b(boolean z) {
        this.w = Boolean.valueOf(z);
    }

    public final String c() {
        return this.A;
    }

    protected final synchronized void c(String str) {
        String str2 = "Adding a manual tracking URL: " + str;
        com.google.ads.e.i.a();
        this.t.add(str);
    }

    public final String d() {
        return this.B;
    }

    public final synchronized void e() {
        this.m = false;
        com.google.ads.e.i.a();
    }

    public final synchronized void f() {
        if (this.l) {
            com.google.ads.e.i.a();
            ((Handler) bq.a().c.a()).removeCallbacks(this.q);
            this.l = false;
        } else {
            com.google.ads.e.i.a();
        }
    }

    public final synchronized void g() {
        this.n = false;
        if (this.b.a() && this.m && !this.l) {
            String str = "Enabling refreshing every " + this.p + " milliseconds.";
            com.google.ads.e.i.a();
            ((Handler) bq.a().c.a()).postDelayed(this.q, this.p);
            this.l = true;
        } else {
            com.google.ads.e.i.a();
        }
    }

    public final bs h() {
        return this.b;
    }

    public final synchronized bb i() {
        return this.x;
    }

    public final synchronized n j() {
        return this.c;
    }

    public final synchronized e k() {
        return this.f;
    }

    public final synchronized ad l() {
        return this.g;
    }

    public final ab m() {
        return this.e;
    }

    public final synchronized int n() {
        return this.v;
    }

    public final long o() {
        return this.i;
    }

    public final synchronized boolean p() {
        return this.j;
    }

    public final synchronized boolean q() {
        return this.l;
    }

    public final synchronized void r() {
        this.e.C();
        com.google.ads.e.i.e();
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final synchronized void s() {
        com.google.ads.e.i.e();
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final synchronized void t() {
        com.google.ads.e.i.e();
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final synchronized void u() {
        if (((com.google.ads.i) this.b.p.a()) != null) {
            this.b.a.a();
        }
    }

    public final void v() {
        this.e.f();
        B();
    }

    public final synchronized void w() {
        if (!this.h) {
            if (this.d == null || !this.b.a()) {
                com.google.ads.e.i.a();
            } else {
                if (((com.google.ads.h) this.b.j.a()).isShown() && com.google.ads.e.a.d()) {
                    com.google.ads.e.i.e();
                    a(this.d);
                } else {
                    com.google.ads.e.i.a();
                }
                if (this.n) {
                    f();
                } else {
                    ((Handler) bq.a().c.a()).postDelayed(this.q, this.p);
                }
            }
        }
    }

    protected final synchronized void x() {
        this.c = null;
        this.k = true;
        this.f.setVisibility(0);
        if (this.b.a()) {
            a(this.f);
        }
        this.e.g();
        if (this.b.a()) {
            z();
        }
        com.google.ads.e.i.e();
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
        this.b.l.a(this.b.m.a());
        this.b.m.a(null);
    }
}
