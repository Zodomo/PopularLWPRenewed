package com.google.ads.b;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.google.ads.AdActivity;

/* JADX INFO: loaded from: classes.dex */
final class f implements DownloadListener {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            AdActivity adActivityH = this.a.h();
            if (adActivityH == null || !com.google.ads.e.a.a(intent, adActivityH)) {
                return;
            }
            adActivityH.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            String str5 = "Couldn't find an Activity to view url/mimetype: " + str + " / " + str4;
            com.google.ads.e.i.a();
        } catch (Throwable th) {
            String str6 = "Unknown error trying to start activity to view URL: " + str;
            com.google.ads.e.i.d();
        }
    }
}
