package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class LiveWallpaperLauncher extends Activity {
    Toast a;
    CountDownTimer b;

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5) {
            this.b.cancel();
            this.a.cancel();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(ac.launcher_toast_layout, (ViewGroup) findViewById(ab.launcher_toast_layout_root));
        ((ImageView) viewInflate.findViewById(ab.launcher_toast_layout_image)).setImageResource(aa.toast_icon);
        ((TextView) viewInflate.findViewById(ab.launcher_toast_layout_text)).setText("Choose " + getString(ad.app_name) + " in the list to start the Live Wallpaper.");
        this.a = new Toast(this);
        this.a.setGravity(48, 0, 0);
        this.a.setDuration(0);
        this.a.setView(viewInflate);
        this.b = new n(this).start();
        Intent intent = new Intent();
        intent.setAction("android.service.wallpaper.LIVE_WALLPAPER_CHOOSER");
        startActivityForResult(intent, 100);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.b.cancel();
        this.a.cancel();
    }
}
