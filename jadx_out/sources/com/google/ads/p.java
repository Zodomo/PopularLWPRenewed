package com.google.ads;

import android.content.Context;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class p implements Runnable {
    private final Context a;
    private final String b;

    public p(String str, Context context) {
        this.b = str;
        this.a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            String str = "Pinging URL: " + this.b;
            com.google.ads.e.i.a();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
            try {
                com.google.ads.e.a.a(httpURLConnection, this.a);
                httpURLConnection.setInstanceFollowRedirects(true);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    String str2 = "Did not receive 2XX (got " + responseCode + ") from pinging URL: " + this.b;
                    com.google.ads.e.i.h();
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (Throwable th) {
            String str3 = "Unable to ping the URL: " + this.b;
            com.google.ads.e.i.i();
        }
    }
}
