package com.CatShockEntertainment.ColorPicker;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.CatShockEntertainment.FreePopularLiveWallpaper.R;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Dialog implements View.OnClickListener {
    private Button a;
    private Button b;
    private int c;
    private HSVView d;
    private b callback;

    public a(Context context, b bVar, int i) {
        super(context);
        this.c = i;
        this.callback = bVar;
    }

    public final void a(int i) {
        this.c = i;
        this.d.setHSVFromColor(i);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.colorPickerHSV_OkButton) {
            this.c = this.d.getColor();
            if (this.callback != null) {
                this.callback.a(Color.red(this.c), Color.green(this.c), Color.blue(this.c));
            }
            dismiss();
            return;
        }
        if (view.getId() == R.id.colorPickerHSV_CancelButton) {
            this.c = this.d.getColor();
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.color_picker_hsv_dialog);
        this.a = (Button) findViewById(R.id.colorPickerHSV_OkButton);
        this.b = (Button) findViewById(R.id.colorPickerHSV_CancelButton);
        this.d = (HSVView) findViewById(R.id.colorPickerHSV_linearLayout);
        this.d.setHSVFromColor(this.c);
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
    }
}
