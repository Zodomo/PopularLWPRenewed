package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class h extends RelativeLayout implements a {
    private static final com.google.ads.b.h b = (com.google.ads.b.h) com.google.ads.b.h.a.a();
    protected com.google.ads.b.w a;

    public h(Activity activity, g gVar, String str) {
        super(activity.getApplicationContext());
        try {
            if (!com.google.ads.e.a.c(activity)) {
                a(activity, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", gVar);
            }
            if (!com.google.ads.e.a.b(activity)) {
                a(activity, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", gVar);
            }
            FrameLayout frameLayout = new FrameLayout(activity);
            frameLayout.setFocusable(false);
            this.a = new com.google.ads.b.w(this, activity, gVar, str, frameLayout);
            setGravity(17);
            try {
                ViewGroup viewGroupA = com.google.ads.b.ag.a(activity, this.a);
                if (viewGroupA != null) {
                    viewGroupA.addView(frameLayout, -2, -2);
                    addView(viewGroupA, -2, -2);
                } else {
                    addView(frameLayout, -2, -2);
                }
            } catch (VerifyError e) {
                com.google.ads.e.i.b();
                addView(frameLayout, -2, -2);
            }
        } catch (com.google.ads.b.m e2) {
            a(activity, e2.b("Could not initialize AdView"), gVar);
            e2.a("Could not initialize AdView");
        }
    }

    private void a(Context context, String str, g gVar) {
        com.google.ads.e.i.c();
        if (gVar == null) {
            gVar = g.b;
        }
        g gVarA = g.a(gVar, context.getApplicationContext());
        if (getChildCount() == 0) {
            TextView textView = new TextView(context);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(-65536);
            textView.setBackgroundColor(-16777216);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setGravity(17);
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setGravity(17);
            linearLayout2.setBackgroundColor(-65536);
            int iA = com.google.ads.e.a.a(context, gVarA.a());
            int iA2 = com.google.ads.e.a.a(context, gVarA.b());
            linearLayout.addView(textView, iA - 2, iA2 - 2);
            linearLayout2.addView(linearLayout);
            addView(linearLayout2, iA, iA2);
        }
    }

    public final void a() {
        this.a.b();
    }

    public final void a(d dVar) {
        if (this.a != null) {
            if (this.a == null ? false : this.a.q()) {
                this.a.f();
            }
            this.a.a(dVar);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        com.google.ads.b.e eVarK;
        if (!isInEditMode() && (eVarK = this.a.k()) != null) {
            eVarK.setVisibility(0);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (isInEditMode() || !((com.google.ads.b.ac) this.a.h().g.a()).b() || i == 0 || this.a.h().l.a() == null || this.a.h().e.a() == null) {
            return;
        }
        if (!AdActivity.b() || AdActivity.c()) {
            com.google.ads.b.h hVar = b;
            com.google.ads.b.h.a((WebView) this.a.h().e.a(), "onleaveapp", null);
        } else {
            com.google.ads.b.h hVar2 = b;
            com.google.ads.b.h.a((WebView) this.a.h().e.a(), "onopeninapp", null);
        }
    }

    public void setAdListener(c cVar) {
        this.a.h().o.a(cVar);
    }

    public void setAppEventListener(i iVar) {
        this.a.h().p.a(iVar);
    }

    public void setSupportedAdSizes(g... gVarArr) {
        if (this.a.h().n.a() == null) {
            com.google.ads.e.i.h();
            return;
        }
        g[] gVarArr2 = new g[gVarArr.length];
        for (int i = 0; i < gVarArr.length; i++) {
            gVarArr2[i] = g.a(gVarArr[i], getContext());
        }
        this.a.h().n.a(gVarArr2);
    }

    public void setSwipeableEventListener(k kVar) {
        this.a.h().q.a(kVar);
    }
}
