package com.google.ads.b;

import android.os.SystemClock;
import com.google.ads.bi;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public final class ab {
    private static long f = 0;
    private static long g = 0;
    private static long h = 0;
    private static long i = 0;
    private static long j = -1;
    private long b;
    private long c;
    private long d;
    private String m;
    private long n;
    private boolean k = false;
    private boolean l = false;
    private final LinkedList a = new LinkedList();
    private final LinkedList e = new LinkedList();
    private final LinkedList o = new LinkedList();
    private final LinkedList p = new LinkedList();

    public ab() {
        a();
    }

    public static long E() {
        if (j != -1) {
            return SystemClock.elapsedRealtime() - j;
        }
        j = SystemClock.elapsedRealtime();
        return 0L;
    }

    protected static long o() {
        return f;
    }

    protected final boolean A() {
        return this.l;
    }

    protected final void B() {
        com.google.ads.e.i.g();
        this.l = true;
    }

    public final void C() {
        com.google.ads.e.i.g();
        this.e.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected final String D() {
        return this.m;
    }

    protected final synchronized void a() {
        this.a.clear();
        this.b = 0L;
        this.c = 0L;
        this.d = 0L;
        this.e.clear();
        this.n = -1L;
        this.o.clear();
        this.p.clear();
        this.k = false;
        this.l = false;
    }

    public final synchronized void a(bi biVar) {
        this.o.add(Long.valueOf(SystemClock.elapsedRealtime() - this.n));
        this.p.add(biVar);
    }

    public final void a(String str) {
        String str2 = "Prior impression ticket = " + str;
        com.google.ads.e.i.g();
        this.m = str;
    }

    public final synchronized void b() {
        this.o.clear();
        this.p.clear();
    }

    public final synchronized void c() {
        this.n = SystemClock.elapsedRealtime();
    }

    public final synchronized String d() {
        StringBuilder sb;
        sb = new StringBuilder();
        Iterator it = this.o.iterator();
        while (it.hasNext()) {
            long jLongValue = ((Long) it.next()).longValue();
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append(jLongValue);
        }
        return sb.toString();
    }

    public final synchronized String e() {
        StringBuilder sb;
        sb = new StringBuilder();
        for (bi biVar : this.p) {
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append(biVar.ordinal());
        }
        return sb.toString();
    }

    protected final void f() {
        com.google.ads.e.i.g();
        this.a.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected final void g() {
        com.google.ads.e.i.g();
        this.b = SystemClock.elapsedRealtime();
    }

    protected final synchronized void h() {
        com.google.ads.e.i.g();
        this.c = SystemClock.elapsedRealtime();
    }

    protected final void i() {
        com.google.ads.e.i.g();
        this.d = SystemClock.elapsedRealtime();
        f++;
    }

    protected final long j() {
        if (this.a.size() != this.e.size()) {
            return -1L;
        }
        return this.a.size();
    }

    protected final String k() {
        if (this.a.isEmpty() || this.a.size() != this.e.size()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.a.size()) {
                return sb.toString();
            }
            if (i3 != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(((Long) this.e.get(i3)).longValue() - ((Long) this.a.get(i3)).longValue()));
            i2 = i3 + 1;
        }
    }

    protected final String l() {
        if (this.a.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.a.size()) {
                return sb.toString();
            }
            if (i3 != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(((Long) this.a.get(i3)).longValue() - this.b));
            i2 = i3 + 1;
        }
    }

    protected final long m() {
        return this.b - this.d;
    }

    protected final synchronized long n() {
        return this.c - this.d;
    }

    protected final synchronized long p() {
        return g;
    }

    protected final synchronized void q() {
        com.google.ads.e.i.g();
        g++;
    }

    protected final synchronized void r() {
        g = 0L;
    }

    protected final synchronized long s() {
        return h;
    }

    protected final synchronized void t() {
        h++;
    }

    protected final synchronized void u() {
        h = 0L;
    }

    protected final synchronized long v() {
        return i;
    }

    protected final synchronized void w() {
        i++;
    }

    protected final synchronized void x() {
        i = 0L;
    }

    protected final boolean y() {
        return this.k;
    }

    protected final void z() {
        com.google.ads.e.i.g();
        this.k = true;
    }
}
