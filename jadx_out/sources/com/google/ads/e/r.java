package com.google.ads.e;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebSettings;
import com.google.ads.bq;
import com.google.ads.br;
import com.google.ads.bs;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(11)
public final class r {
    public static void a(WebSettings webSettings, bs bsVar) {
        Context context = (Context) bsVar.f.a();
        br brVar = (br) ((bq) bsVar.d.a()).b.a();
        webSettings.setAppCacheEnabled(true);
        webSettings.setAppCacheMaxSize(((Long) brVar.i.a()).longValue());
        webSettings.setAppCachePath(new File(context.getCacheDir(), "admob").getAbsolutePath());
        webSettings.setDatabaseEnabled(true);
        webSettings.setDatabasePath(context.getDatabasePath("admob").getAbsolutePath());
        webSettings.setDomStorageEnabled(true);
        webSettings.setSupportZoom(true);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setDisplayZoomControls(false);
    }
}
