package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static void a(com.google.ads.b.w wVar, com.google.ads.b.x xVar) {
        synchronized (AdActivity.b) {
            if (AdActivity.d == null) {
                com.google.ads.b.w unused = AdActivity.d = wVar;
            } else if (AdActivity.d != wVar) {
                com.google.ads.e.i.c();
                return;
            }
            Activity activity = (Activity) wVar.h().c.a();
            if (activity == null) {
                com.google.ads.e.i.h();
                return;
            }
            Intent intent = new Intent(activity.getApplicationContext(), (Class<?>) AdActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("action", xVar.a);
            bundle.putSerializable("params", xVar.b);
            intent.putExtra("com.google.ads.AdOpener", bundle);
            try {
                com.google.ads.e.i.a();
                activity.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                com.google.ads.e.i.d();
            }
        }
    }

    public static boolean a() {
        boolean z;
        synchronized (AdActivity.b) {
            z = AdActivity.e != null;
        }
        return z;
    }

    public static boolean b() {
        boolean z;
        synchronized (AdActivity.b) {
            z = AdActivity.c != null;
        }
        return z;
    }
}
