package com.google.ads.e;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static k a = null;
    private static int b = 5;

    public static void a() {
        a("Ads", 3);
        j jVar = j.DEBUG;
        j();
    }

    private static boolean a(String str, int i) {
        return (i >= b) || Log.isLoggable(str, i);
    }

    public static void b() {
        a("Ads", 3);
        j jVar = j.DEBUG;
        j();
    }

    public static void c() {
        a("Ads", 6);
        j jVar = j.ERROR;
        j();
    }

    public static void d() {
        a("Ads", 6);
        j jVar = j.ERROR;
        j();
    }

    public static void e() {
        a("Ads", 4);
        j jVar = j.INFO;
        j();
    }

    public static void f() {
        a("Ads", 4);
        j jVar = j.INFO;
        j();
    }

    public static void g() {
        a("Ads", 2);
        j jVar = j.VERBOSE;
        j();
    }

    public static void h() {
        a("Ads", 5);
        j jVar = j.WARN;
        j();
    }

    public static void i() {
        a("Ads", 5);
        j jVar = j.WARN;
        j();
    }

    private static void j() {
        if (a != null) {
            k kVar = a;
        }
    }
}
