package com.google.ads;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static final String b;
    private static final SimpleDateFormat c = new SimpleDateFormat("yyyyMMdd");
    private static Method d;
    private static Method e;
    private f f = null;
    private Date g = null;
    private Set h = null;
    private Map i = null;
    public final Map a = new HashMap();
    private Location j = null;
    private boolean k = false;
    private boolean l = false;
    private Set m = null;

    static {
        d = null;
        e = null;
        try {
            for (Method method : Class.forName("com.google.analytics.tracking.android.AdMobInfo").getMethods()) {
                if (method.getName().equals("getInstance") && method.getParameterTypes().length == 0) {
                    d = method;
                } else if (method.getName().equals("getJoinIds") && method.getParameterTypes().length == 0) {
                    e = method;
                }
            }
            if (d == null || e == null) {
                d = null;
                e = null;
                com.google.ads.e.i.h();
            }
        } catch (ClassNotFoundException e2) {
            com.google.ads.e.i.a();
        } catch (Throwable th) {
            com.google.ads.e.i.a();
        }
        b = com.google.ads.e.a.a("emulator");
    }

    public final d a(String str) {
        if (this.m == null) {
            this.m = new HashSet();
        }
        this.m.add(str);
        return this;
    }

    public final Object a(Class cls) {
        return this.a.get(cls);
    }

    public Map a(Context context) {
        HashMap map = new HashMap();
        if (this.h != null) {
            map.put("kw", this.h);
        }
        if (this.f != null) {
            map.put("cust_gender", Integer.valueOf(this.f.ordinal()));
        }
        if (this.g != null) {
            map.put("cust_age", c.format(this.g));
        }
        if (this.j != null) {
            map.put("uule", com.google.ads.e.a.a(this.j));
        }
        if (this.k) {
            map.put("testing", 1);
        }
        if (b(context)) {
            map.put("adtest", "on");
        } else if (!this.l) {
            String str = "To get test ads on this device, call adRequest.addTestDevice(" + (com.google.ads.e.a.c() ? "AdRequest.TEST_EMULATOR" : "\"" + com.google.ads.e.a.a(context) + "\"") + ");";
            com.google.ads.e.i.e();
            this.l = true;
        }
        com.google.ads.c.a.a aVar = (com.google.ads.c.a.a) a(com.google.ads.c.a.a.class);
        com.google.ads.a.b bVar = (com.google.ads.a.b) a(com.google.ads.a.b.class);
        if (bVar != null && bVar.c() != null && !bVar.c().isEmpty()) {
            map.put("extras", bVar.c());
        } else if (aVar != null && aVar.c() != null && !aVar.c().isEmpty()) {
            map.put("extras", aVar.c());
        }
        if (bVar != null) {
            String strA = bVar.a();
            if (!TextUtils.isEmpty(strA)) {
                map.put("ppid", strA);
            }
        }
        if (this.i != null) {
            map.put("mediation_extras", this.i);
        }
        try {
            if (d != null) {
                Map map2 = (Map) e.invoke(d.invoke(null, new Object[0]), new Object[0]);
                if (map2 != null && map2.size() > 0) {
                    map.put("analytics_join_id", map2);
                }
            }
        } catch (Throwable th) {
            com.google.ads.e.i.f();
        }
        return map;
    }

    public final boolean b(Context context) {
        String strA;
        return (this.m == null || (strA = com.google.ads.e.a.a(context)) == null || !this.m.contains(strA)) ? false : true;
    }
}
