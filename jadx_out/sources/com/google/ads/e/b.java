package com.google.ads.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public final class b extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.USER_PRESENT")) {
            a.a(true);
        } else if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            a.a(false);
        }
    }
}
