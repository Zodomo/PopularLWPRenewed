package com.google.ads.b;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class g implements View.OnTouchListener {
    final /* synthetic */ e a;

    g(e eVar) {
        this.a = eVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return motionEvent.getAction() == 2;
    }
}
