package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.SeekBar;
import com.CatShockEntertainment.FreePopularLiveWallpaper.R;

/* JADX INFO: loaded from: classes.dex */
public final class ae extends Dialog implements View.OnClickListener, SeekBar.OnSeekBarChangeListener {
    Button a;
    Button b;
    SeekBar c;
    float d;
    private af e;

    public ae(Context context, af afVar, float f) {
        super(context);
        this.e = afVar;
        this.d = f;
    }

    public final void a(float f) {
        this.d = f;
        this.c.setProgress((int) (255.0f * this.d));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.button_ok) {
            this.e.a(this.c.getProgress() / 255.0f);
            dismiss();
        }
        if (view.getId() == R.id.button_cancel) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.slider_dialog_layout);
        this.a = (Button) findViewById(R.id.button_ok);
        this.b = (Button) findViewById(R.id.button_cancel);
        this.c = (SeekBar) findViewById(R.id.seekBar_slider);
        this.c.setMax(255);
        a(this.d);
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.d = seekBar.getProgress() / 255.0f;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}
