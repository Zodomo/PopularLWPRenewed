package com.google.ads.b;

import android.app.Activity;
import android.app.AlertDialog;
import android.gesture.Gesture;
import android.gesture.GestureOverlayView;
import android.gesture.GestureStore;
import android.gesture.Prediction;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ah implements GestureOverlayView.OnGesturePerformedListener {
    private final GestureStore a;
    private Activity b;
    private w c;

    public ah(Activity activity, w wVar, GestureStore gestureStore) {
        this.b = activity;
        this.c = wVar;
        this.a = gestureStore;
    }

    @Override // android.gesture.GestureOverlayView.OnGesturePerformedListener
    public final void onGesturePerformed(GestureOverlayView gestureOverlayView, Gesture gesture) {
        ArrayList<Prediction> arrayListRecognize = this.a.recognize(gesture);
        for (Prediction prediction : arrayListRecognize) {
            String str = "Gesture: '" + prediction.name + "' = " + prediction.score;
            com.google.ads.e.i.a();
        }
        if (arrayListRecognize.size() == 0) {
            com.google.ads.e.i.a();
        } else {
            if (arrayListRecognize.get(0).score <= 2.0d || !"debug".equals(arrayListRecognize.get(0).name) || this.c == null) {
                return;
            }
            String strC = this.c.c() == null ? "[No diagnostics available]" : this.c.c();
            new AlertDialog.Builder(this.b).setMessage(strC).setTitle("Ad Information").setPositiveButton("Share", new ak(this, strC)).setNeutralButton("Report", new aj(this)).setNegativeButton("Close", new ai(this)).create().show();
        }
    }
}
