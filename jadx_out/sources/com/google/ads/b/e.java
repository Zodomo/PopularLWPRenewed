package com.google.ads.b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.bs;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class e extends WebView {
    private WeakReference a;
    protected final bs b;
    private com.google.ads.g c;
    private boolean d;
    private boolean e;
    private boolean f;

    public e(bs bsVar, com.google.ads.g gVar) {
        super((Context) bsVar.f.a());
        this.b = bsVar;
        this.c = gVar;
        this.a = null;
        this.d = false;
        this.e = false;
        this.f = false;
        setBackgroundColor(0);
        com.google.ads.e.a.a(this);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        setDownloadListener(new f(this));
        if (com.google.ads.e.a.a >= 17) {
            com.google.ads.e.r.a(settings, bsVar);
            settings.setMediaPlaybackRequiresUserGesture(false);
        } else if (com.google.ads.e.a.a >= 11) {
            com.google.ads.e.r.a(settings, bsVar);
        }
        setScrollBarStyle(33554432);
        if (com.google.ads.e.a.a >= 14) {
            setWebChromeClient(new com.google.ads.e.f(bsVar));
        } else if (com.google.ads.e.a.a >= 11) {
            setWebChromeClient(new com.google.ads.e.t(bsVar));
        }
    }

    public final void a(boolean z) {
        if (z) {
            setOnTouchListener(new g(this));
        } else {
            setOnTouchListener(null);
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        try {
            super.destroy();
        } catch (Throwable th) {
            com.google.ads.e.i.i();
        }
        try {
            setWebViewClient(new WebViewClient());
        } catch (Throwable th2) {
        }
    }

    public final void e() {
        AdActivity adActivityH = h();
        if (adActivityH != null) {
            adActivityH.finish();
        }
    }

    public final void f() {
        if (com.google.ads.e.a.a >= 11) {
            setLayerType(1, null);
        }
        this.e = true;
    }

    public final void g() {
        if (this.e && com.google.ads.e.a.a >= 11) {
            setLayerType(0, null);
        }
        this.e = false;
    }

    public final AdActivity h() {
        if (this.a != null) {
            return (AdActivity) this.a.get();
        }
        return null;
    }

    public final boolean i() {
        return this.f;
    }

    public final boolean j() {
        return this.e;
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Throwable th) {
            com.google.ads.e.i.i();
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        try {
            super.loadUrl(str);
        } catch (Throwable th) {
            com.google.ads.e.i.i();
        }
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        synchronized (this) {
            if (isInEditMode() || this.c == null || this.d) {
                super.onMeasure(i, i2);
            } else {
                int mode = View.MeasureSpec.getMode(i);
                int size = View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                int size2 = View.MeasureSpec.getSize(i2);
                float f = getContext().getResources().getDisplayMetrics().density;
                int iA = (int) (this.c.a() * f);
                int iB = (int) (this.c.b() * f);
                int i3 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
                int i4 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size2 : Integer.MAX_VALUE;
                if (iA - (f * 6.0f) > i3 || iB > i4) {
                    String str = "Not enough space to show ad! Wants: <" + iA + ", " + iB + ">, Has: <" + size + ", " + size2 + ">";
                    com.google.ads.e.i.c();
                    setVisibility(8);
                    setMeasuredDimension(size, size2);
                } else {
                    setMeasuredDimension(iA, iB);
                }
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.google.ads.ai aiVar = (com.google.ads.ai) this.b.r.a();
        if (aiVar != null) {
            aiVar.a(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setAdActivity(AdActivity adActivity) {
        this.a = new WeakReference(adActivity);
    }

    public synchronized void setAdSize(com.google.ads.g gVar) {
        this.c = gVar;
        requestLayout();
    }

    public void setCustomClose(boolean z) {
        AdActivity adActivity;
        this.f = z;
        if (this.a == null || (adActivity = (AdActivity) this.a.get()) == null) {
            return;
        }
        adActivity.a(z);
    }

    public void setIsExpandedMraid(boolean z) {
        this.d = z;
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        try {
            super.stopLoading();
        } catch (Throwable th) {
            com.google.ads.e.i.i();
        }
    }
}
