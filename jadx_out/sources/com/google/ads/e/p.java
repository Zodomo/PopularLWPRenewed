package com.google.ads.e;

import android.annotation.TargetApi;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(4)
public final class p {
    static int a(Context context, float f, int i) {
        return (context.getApplicationInfo().flags & 8192) != 0 ? (int) (i / f) : i;
    }
}
