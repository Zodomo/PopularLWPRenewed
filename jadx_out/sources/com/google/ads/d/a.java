package com.google.ads.d;

import android.content.Context;
import android.graphics.Color;
import com.google.ads.d;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {
    private String c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private String j;
    private int k;
    private int l;
    private b m;
    private int n;
    private String o;

    private static String a(int i) {
        return String.format(Locale.US, "#%06x", Integer.valueOf(16777215 & i));
    }

    @Override // com.google.ads.d
    public final Map a(Context context) {
        com.google.ads.c.a.a aVar = (com.google.ads.c.a.a) a(com.google.ads.c.a.a.class);
        if (aVar == null) {
            aVar = new com.google.ads.c.a.a();
            this.a.put(aVar.getClass(), aVar);
        }
        if (this.c != null) {
            aVar.c().put("q", this.c);
        }
        if (Color.alpha(this.d) != 0) {
            aVar.c().put("bgcolor", a(this.d));
        }
        if (Color.alpha(this.e) == 255 && Color.alpha(this.f) == 255) {
            aVar.c().put("gradientfrom", a(this.e));
            aVar.c().put("gradientto", a(this.f));
        }
        if (Color.alpha(this.g) != 0) {
            aVar.c().put("hcolor", a(this.g));
        }
        if (Color.alpha(this.h) != 0) {
            aVar.c().put("dcolor", a(this.h));
        }
        if (Color.alpha(this.i) != 0) {
            aVar.c().put("acolor", a(this.i));
        }
        if (this.j != null) {
            aVar.c().put("font", this.j);
        }
        aVar.c().put("headersize", Integer.toString(this.k));
        if (Color.alpha(this.l) != 0) {
            aVar.c().put("bcolor", a(this.l));
        }
        if (this.m != null) {
            aVar.c().put("btype", this.m.toString());
        }
        aVar.c().put("bthick", Integer.toString(this.n));
        if (this.o != null) {
            aVar.c().put("channel", this.o);
        }
        return super.a(context);
    }
}
