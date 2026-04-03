package com.google.ads.b;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.ads.bp;
import com.google.ads.bs;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class y implements Runnable {
    volatile boolean a;
    boolean b;
    private final bp c;
    private final aa d;
    private String e;
    private Thread f;

    y(bp bpVar) {
        this(bpVar, new z());
    }

    private y(bp bpVar, aa aaVar) {
        this.f = null;
        this.c = bpVar;
        this.d = aaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("X-Afma-Debug-Dialog");
        if (!TextUtils.isEmpty(headerField)) {
            ((n) this.c.b.a()).f(headerField);
        }
        String headerField2 = httpURLConnection.getHeaderField("X-Afma-Tracking-Urls");
        if (!TextUtils.isEmpty(headerField2)) {
            for (String str : headerField2.trim().split("\\s+")) {
                ((w) ((bs) this.c.a.a()).b.a()).b(str);
            }
        }
        String headerField3 = httpURLConnection.getHeaderField("X-Afma-Manual-Tracking-Urls");
        if (!TextUtils.isEmpty(headerField3)) {
            for (String str2 : headerField3.trim().split("\\s+")) {
                ((w) ((bs) this.c.a.a()).b.a()).c(str2);
            }
        }
        String headerField4 = httpURLConnection.getHeaderField("X-Afma-Click-Tracking-Urls");
        if (!TextUtils.isEmpty(headerField4)) {
            for (String str3 : headerField4.trim().split("\\s+")) {
                ((n) this.c.b.a()).a(str3);
            }
        }
        String headerField5 = httpURLConnection.getHeaderField("X-Afma-Refresh-Rate");
        if (!TextUtils.isEmpty(headerField5)) {
            try {
                float f = Float.parseFloat(headerField5);
                w wVar = (w) ((bs) this.c.a.a()).b.a();
                if (f > 0.0f) {
                    wVar.a(f);
                    if (!wVar.q()) {
                        wVar.g();
                    }
                } else if (wVar.q()) {
                    wVar.f();
                }
            } catch (NumberFormatException e) {
                String str4 = "Could not get refresh value: " + headerField5;
                com.google.ads.e.i.i();
            }
        }
        String headerField6 = httpURLConnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if (!TextUtils.isEmpty(headerField6)) {
            try {
                ((w) ((bs) this.c.a.a()).b.a()).a((long) (Float.parseFloat(headerField6) * 1000.0f));
            } catch (NumberFormatException e2) {
                String str5 = "Could not get timeout value: " + headerField6;
                com.google.ads.e.i.i();
            }
        }
        String headerField7 = httpURLConnection.getHeaderField("X-Afma-Orientation");
        if (!TextUtils.isEmpty(headerField7)) {
            if (headerField7.equals("portrait")) {
                ((n) this.c.b.a()).a(com.google.ads.e.a.b());
            } else if (headerField7.equals("landscape")) {
                ((n) this.c.b.a()).a(com.google.ads.e.a.a());
            }
        }
        if (!TextUtils.isEmpty(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life"))) {
            try {
                ((w) ((bs) this.c.a.a()).b.a()).b(Long.parseLong(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life")));
            } catch (NumberFormatException e3) {
                String str6 = "Got bad value of Doritos cookie cache life from header: " + httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life") + ". Using default value instead.";
                com.google.ads.e.i.h();
            }
        }
        String headerField8 = httpURLConnection.getHeaderField("Cache-Control");
        if (!TextUtils.isEmpty(headerField8)) {
            ((n) this.c.b.a()).c(headerField8);
        }
        String headerField9 = httpURLConnection.getHeaderField("X-Afma-Mediation");
        if (!TextUtils.isEmpty(headerField9)) {
            ((n) this.c.b.a()).b(Boolean.valueOf(headerField9).booleanValue());
        }
        String headerField10 = httpURLConnection.getHeaderField("Content-Type");
        if (!TextUtils.isEmpty(headerField10)) {
            ((n) this.c.b.a()).b(headerField10);
        }
        String headerField11 = httpURLConnection.getHeaderField("X-Afma-Ad-Size");
        if (!TextUtils.isEmpty(headerField11)) {
            try {
                String[] strArrSplit = headerField11.split("x", 2);
                if (strArrSplit.length != 2) {
                    String str7 = "Could not parse size header: " + headerField11;
                    com.google.ads.e.i.h();
                    headerField11 = headerField11;
                } else {
                    int i = Integer.parseInt(strArrSplit[0]);
                    int i2 = Integer.parseInt(strArrSplit[1]);
                    n nVar = (n) this.c.b.a();
                    nVar.a(new com.google.ads.g(i, i2));
                    headerField11 = nVar;
                }
            } catch (NumberFormatException e4) {
                String str8 = "Could not parse size header: " + headerField11;
                com.google.ads.e.i.h();
            }
        }
        String headerField12 = httpURLConnection.getHeaderField("X-Afma-Disable-Activation-And-Scroll");
        if (TextUtils.isEmpty(headerField12)) {
            return;
        }
        ((n) this.c.b.a()).a(headerField12.equals("1"));
    }

    final synchronized void a(String str) {
        if (this.f == null) {
            this.e = str;
            this.a = false;
            this.f = new Thread(this);
            this.f.start();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (!this.a) {
            try {
                HttpURLConnection httpURLConnectionA = this.d.a(new URL(this.e));
                try {
                    String string = PreferenceManager.getDefaultSharedPreferences((Context) ((bs) this.c.a.a()).f.a()).getString("drt", "");
                    if (this.b && !TextUtils.isEmpty(string)) {
                        if (com.google.ads.e.a.a == 8) {
                            httpURLConnectionA.addRequestProperty("X-Afma-drt-Cookie", string);
                        } else {
                            httpURLConnectionA.addRequestProperty("Cookie", string);
                        }
                    }
                    com.google.ads.e.a.a(httpURLConnectionA, (Context) ((bs) this.c.a.a()).f.a());
                    httpURLConnectionA.setInstanceFollowRedirects(false);
                    httpURLConnectionA.connect();
                    int responseCode = httpURLConnectionA.getResponseCode();
                    if (300 <= responseCode && responseCode < 400) {
                        String headerField = httpURLConnectionA.getHeaderField("Location");
                        if (headerField == null) {
                            String str = "Could not get redirect location from a " + responseCode + " redirect.";
                            com.google.ads.e.i.e();
                            ((n) this.c.b.a()).a(com.google.ads.e.INTERNAL_ERROR);
                            this.a = true;
                        } else {
                            a(httpURLConnectionA);
                            this.e = headerField;
                        }
                    } else if (responseCode == 200) {
                        a(httpURLConnectionA);
                        String strTrim = com.google.ads.e.a.a(new InputStreamReader(httpURLConnectionA.getInputStream())).trim();
                        String str2 = "Response content is: " + strTrim;
                        com.google.ads.e.i.a();
                        if (TextUtils.isEmpty(strTrim)) {
                            String str3 = "Response message is null or zero length: " + strTrim;
                            com.google.ads.e.i.a();
                            ((n) this.c.b.a()).a(com.google.ads.e.NO_FILL);
                            this.a = true;
                        } else {
                            ((n) this.c.b.a()).a(strTrim, this.e);
                            this.a = true;
                        }
                    } else if (responseCode == 400) {
                        com.google.ads.e.i.e();
                        ((n) this.c.b.a()).a(com.google.ads.e.INVALID_REQUEST);
                        this.a = true;
                    } else {
                        String str4 = "Invalid response code: " + responseCode;
                        com.google.ads.e.i.e();
                        ((n) this.c.b.a()).a(com.google.ads.e.INTERNAL_ERROR);
                        this.a = true;
                    }
                    httpURLConnectionA.disconnect();
                } catch (Throwable th) {
                    httpURLConnectionA.disconnect();
                    throw th;
                }
            } catch (MalformedURLException e) {
                com.google.ads.e.i.d();
                ((n) this.c.b.a()).a(com.google.ads.e.INTERNAL_ERROR);
                return;
            } catch (IOException e2) {
                com.google.ads.e.i.d();
                ((n) this.c.b.a()).a(com.google.ads.e.NETWORK_ERROR);
                return;
            } catch (Throwable th2) {
                com.google.ads.e.i.d();
                ((n) this.c.b.a()).a(com.google.ads.e.INTERNAL_ERROR);
                return;
            }
        }
    }
}
