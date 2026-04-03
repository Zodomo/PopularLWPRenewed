package com.google.ads;

import android.R;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdActivity extends Activity implements View.OnClickListener {
    private static final com.google.ads.b.h a = (com.google.ads.b.h) com.google.ads.b.h.a.a();
    private static final Object b = new Object();
    private static AdActivity c = null;
    private static com.google.ads.b.w d = null;
    private static AdActivity e = null;
    private static AdActivity f = null;
    private static final b g = new b();
    private com.google.ads.b.e h;
    private FrameLayout i;
    private int j;
    private boolean l;
    private long m;
    private RelativeLayout n;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private com.google.ads.b.c t;
    private ViewGroup k = null;
    private AdActivity o = null;

    private void a(com.google.ads.b.e eVar, boolean z, int i, boolean z2, boolean z3) {
        requestWindowFeature(1);
        Window window = getWindow();
        window.setFlags(1024, 1024);
        if (com.google.ads.e.a.a >= 11) {
            if (this.r) {
                com.google.ads.e.i.a();
                window.setFlags(16777216, 16777216);
            } else {
                com.google.ads.e.i.a();
                eVar.f();
            }
        }
        ViewParent parent = eVar.getParent();
        if (parent != null) {
            if (!z2) {
                com.google.ads.e.i.c();
                finish();
                return;
            } else if (!(parent instanceof ViewGroup)) {
                com.google.ads.e.i.c();
                finish();
                return;
            } else {
                this.k = (ViewGroup) parent;
                this.k.removeView(eVar);
            }
        }
        if (eVar.h() != null) {
            com.google.ads.e.i.c();
            finish();
            return;
        }
        setRequestedOrientation(i);
        eVar.setAdActivity(this);
        this.j = (int) TypedValue.applyDimension(1, z2 ? 50 : 32, getResources().getDisplayMetrics());
        this.i = new FrameLayout(getApplicationContext());
        this.i.setMinimumWidth(this.j);
        this.i.setMinimumHeight(this.j);
        this.i.setOnClickListener(this);
        a(z3);
        FrameLayout frameLayout = this.i;
        this.n.addView(eVar, -1, -1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (z2) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        }
        this.n.addView(frameLayout, layoutParams);
        this.n.setKeepScreenOn(true);
        setContentView(this.n);
        this.n.getRootView().setBackgroundColor(-16777216);
        if (z) {
            com.google.ads.b.h hVar = a;
            com.google.ads.b.h.a(eVar);
        }
    }

    public static void a(com.google.ads.b.w wVar, com.google.ads.b.x xVar) {
        b bVar = g;
        b.a(wVar, xVar);
    }

    public static boolean b() {
        b bVar = g;
        return b.a();
    }

    private static RelativeLayout.LayoutParams c(int i, int i2, int i3, int i4) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        return layoutParams;
    }

    public static boolean c() {
        b bVar = g;
        return b.b();
    }

    private void h() {
        if (this.l) {
            return;
        }
        if (this.h != null) {
            com.google.ads.b.h hVar = a;
            com.google.ads.b.h.b(this.h);
            this.h.setAdActivity(null);
            this.h.setIsExpandedMraid(false);
            if (!this.q && this.n != null && this.k != null) {
                if (this.r && !this.s) {
                    com.google.ads.e.i.a();
                    this.h.f();
                } else if (!this.r && this.s) {
                    com.google.ads.e.i.a();
                    this.h.g();
                }
                this.n.removeView(this.h);
                this.k.addView(this.h);
            }
        }
        if (this.t != null) {
            this.t.d();
            this.t = null;
        }
        if (this == c) {
            c = null;
        }
        f = this.o;
        synchronized (b) {
            if (d != null && this.q && this.h != null) {
                if (this.h == d.k()) {
                    d.a();
                }
                this.h.stopLoading();
            }
            if (this == e) {
                e = null;
                if (d != null) {
                    d.r();
                    d = null;
                } else {
                    com.google.ads.e.i.h();
                }
            }
        }
        this.l = true;
        com.google.ads.e.i.a();
    }

    public final com.google.ads.b.c a() {
        return this.t;
    }

    public final void a(int i, int i2, int i3, int i4) {
        if (this.t != null) {
            this.t.setLayoutParams(c(i, i2, i3, i4));
            this.t.requestLayout();
        }
    }

    public final void a(boolean z) {
        if (this.i != null) {
            this.i.removeAllViews();
            if (z) {
                return;
            }
            ImageButton imageButton = new ImageButton(this);
            imageButton.setImageResource(R.drawable.btn_dialog);
            imageButton.setBackgroundColor(0);
            imageButton.setOnClickListener(this);
            imageButton.setPadding(0, 0, 0, 0);
            this.i.addView(imageButton, new FrameLayout.LayoutParams(this.j, this.j, 17));
        }
    }

    public final void b(int i, int i2, int i3, int i4) {
        if (this.t == null) {
            this.t = new com.google.ads.b.c(this, this.h);
            this.n.addView(this.t, 0, c(i, i2, i3, i4));
            synchronized (b) {
                if (d == null) {
                    com.google.ads.e.i.h();
                } else {
                    d.l().b();
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean zI;
        int i;
        int i2 = 0;
        super.onCreate(bundle);
        this.l = false;
        synchronized (b) {
            if (d == null) {
                com.google.ads.e.i.c();
                finish();
                return;
            }
            com.google.ads.b.w wVar = d;
            if (e == null) {
                e = this;
                wVar.s();
            }
            if (this.o == null && f != null) {
                this.o = f;
            }
            f = this;
            if ((wVar.h().a() && e == this) || (wVar.h().b() && this.o == e)) {
                wVar.v();
            }
            boolean zP = wVar.p();
            br brVar = (br) ((bq) wVar.h().d.a()).b.a();
            this.s = com.google.ads.e.a.a >= ((Integer) brVar.b.a()).intValue();
            this.r = com.google.ads.e.a.a >= ((Integer) brVar.d.a()).intValue();
            this.n = null;
            this.p = false;
            this.q = true;
            this.t = null;
            Bundle bundleExtra = getIntent().getBundleExtra("com.google.ads.AdOpener");
            if (bundleExtra == null) {
                com.google.ads.e.i.c();
                finish();
                return;
            }
            com.google.ads.b.x xVar = new com.google.ads.b.x(bundleExtra);
            String str = xVar.a;
            HashMap map = xVar.b;
            if (!str.equals("intent")) {
                this.n = new RelativeLayout(getApplicationContext());
                if (str.equals("webapp")) {
                    this.h = new com.google.ads.b.e(wVar.h(), null);
                    com.google.ads.b.ad adVarA = com.google.ads.b.ad.a(wVar, com.google.ads.b.h.d, true, !zP);
                    adVarA.d();
                    if (zP) {
                        adVarA.a();
                    }
                    this.h.setWebViewClient(adVarA);
                    String str2 = (String) map.get("u");
                    String str3 = (String) map.get("baseurl");
                    String str4 = (String) map.get("html");
                    if (str2 != null) {
                        this.h.loadUrl(str2);
                    } else {
                        if (str4 == null) {
                            com.google.ads.e.i.c();
                            finish();
                            return;
                        }
                        this.h.loadDataWithBaseURL(str3, str4, "text/html", "utf-8", null);
                    }
                    String str5 = (String) map.get("o");
                    a(this.h, false, "p".equals(str5) ? com.google.ads.e.a.b() : "l".equals(str5) ? com.google.ads.e.a.a() : this == e ? wVar.n() : -1, zP, map != null && "1".equals(map.get("custom_close")));
                    return;
                }
                if (!str.equals("interstitial") && !str.equals("expand")) {
                    String str6 = "Unknown AdOpener, <action: " + str + ">";
                    com.google.ads.e.i.c();
                    finish();
                    return;
                }
                this.h = wVar.k();
                int iN = wVar.n();
                if (str.equals("expand")) {
                    this.h.setIsExpandedMraid(true);
                    this.q = false;
                    if (map != null && "1".equals(map.get("custom_close"))) {
                        i2 = 1;
                    }
                    if (!this.r || this.s) {
                        zI = i2;
                    } else {
                        com.google.ads.e.i.a();
                        this.h.g();
                        zI = i2;
                    }
                } else {
                    zI = this.h.i();
                }
                a(this.h, true, iN, zP, zI);
                return;
            }
            if (map == null) {
                com.google.ads.e.i.c();
                finish();
                return;
            }
            Intent intent = new Intent();
            String str7 = (String) map.get("u");
            String str8 = (String) map.get("m");
            String str9 = (String) map.get("i");
            String str10 = (String) map.get("p");
            String str11 = (String) map.get("c");
            String str12 = (String) map.get("f");
            String str13 = (String) map.get("e");
            boolean z = !TextUtils.isEmpty(str7);
            boolean z2 = !TextUtils.isEmpty(str8);
            if (z && z2) {
                intent.setDataAndType(Uri.parse(str7), str8);
            } else if (z) {
                intent.setData(Uri.parse(str7));
            } else if (z2) {
                intent.setType(str8);
            }
            if (!TextUtils.isEmpty(str9)) {
                intent.setAction(str9);
            } else if (z) {
                intent.setAction("android.intent.action.VIEW");
            }
            if (!TextUtils.isEmpty(str10) && com.google.ads.e.a.a >= 4) {
                intent.setPackage(str10);
            }
            if (!TextUtils.isEmpty(str11)) {
                String[] strArrSplit = str11.split("/");
                if (strArrSplit.length < 2) {
                    String str14 = "Warning: Could not parse component name from open GMSG: " + str11;
                    com.google.ads.e.i.h();
                }
                intent.setClassName(strArrSplit[0], strArrSplit[1]);
            }
            if (!TextUtils.isEmpty(str12)) {
                try {
                    i = Integer.parseInt(str12);
                } catch (NumberFormatException e2) {
                    String str15 = "Warning: Could not parse flags from open GMSG: " + str12;
                    i = 0;
                    com.google.ads.e.i.h();
                }
                intent.addFlags(i);
            }
            if (!TextUtils.isEmpty(str13)) {
                try {
                    JSONObject jSONObject = new JSONObject(str13);
                    JSONArray jSONArrayNames = jSONObject.names();
                    while (i2 < jSONArrayNames.length()) {
                        String string = jSONArrayNames.getString(i2);
                        JSONObject jSONObject2 = jSONObject.getJSONObject(string);
                        int i3 = jSONObject2.getInt("t");
                        switch (i3) {
                            case 1:
                                intent.putExtra(string, jSONObject2.getBoolean("v"));
                                break;
                            case 2:
                                intent.putExtra(string, jSONObject2.getDouble("v"));
                                break;
                            case 3:
                                intent.putExtra(string, jSONObject2.getInt("v"));
                                break;
                            case 4:
                                intent.putExtra(string, jSONObject2.getLong("v"));
                                break;
                            case 5:
                                intent.putExtra(string, jSONObject2.getString("v"));
                                break;
                            default:
                                String str16 = "Warning: Unknown type in extras from open GMSG: " + string + " (type: " + i3 + ")";
                                com.google.ads.e.i.h();
                                break;
                        }
                        i2++;
                    }
                } catch (JSONException e3) {
                    String str17 = "Warning: Could not parse extras from open GMSG: " + str13;
                    com.google.ads.e.i.h();
                }
            }
            if (intent.filterEquals(new Intent())) {
                com.google.ads.e.i.c();
                finish();
                return;
            }
            try {
                String str18 = "Launching an intent from AdActivity: " + intent;
                com.google.ads.e.i.a();
                startActivity(intent);
                this.h = null;
                this.m = SystemClock.elapsedRealtime();
                this.p = true;
                synchronized (b) {
                    if (c == null) {
                        c = this;
                        wVar.t();
                    }
                }
            } catch (ActivityNotFoundException e4) {
                e4.getMessage();
                com.google.ads.e.i.d();
                finish();
            }
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.n != null) {
            this.n.removeAllViews();
        }
        if (isFinishing()) {
            h();
            if (this.q && this.h != null) {
                this.h.stopLoading();
                this.h.destroy();
                this.h = null;
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        if (isFinishing()) {
            h();
        }
        super.onPause();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (this.p && z && SystemClock.elapsedRealtime() - this.m > 250) {
            com.google.ads.e.i.g();
            finish();
        }
        super.onWindowFocusChanged(z);
    }
}
