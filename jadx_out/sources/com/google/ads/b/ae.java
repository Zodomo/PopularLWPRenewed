package com.google.ads.b;

import android.content.Context;
import com.google.ads.bq;
import com.google.ads.br;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class ae implements Runnable {
    private String a;
    private Context b;

    public ae(String str, Context context) {
        this.a = str;
        this.b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((String) ((br) bq.a().b.a()).h.a()).openConnection();
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setInstanceFollowRedirects(true);
            com.google.ads.e.a.a(httpURLConnection, this.b);
            httpURLConnection.setRequestProperty("Accept", "application/json");
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            byte[] bytes = new af(this.a).a().toString().getBytes();
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.close();
                if (httpURLConnection.getResponseCode() != 200) {
                    String str = "Got error response from BadAd backend: " + httpURLConnection.getResponseMessage();
                    com.google.ads.e.i.c();
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            com.google.ads.e.i.d();
        }
    }
}
