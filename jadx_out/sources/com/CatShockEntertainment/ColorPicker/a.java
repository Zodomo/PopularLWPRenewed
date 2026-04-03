package com.CatShockEntertainment.ColorPicker;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Dialog implements View.OnClickListener {
    private Button a;
    private Button b;
    private int c;
    private HSVView d;
    private b e;

    public a(Context context, b bVar, int i) {
        super(context);
        this.c = i;
        this.e = bVar;
    }

    public final void a(int i) {
        this.c = i;
        this.d.setHSVFromColor(i);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == e.colorPickerHSV_OkButton) {
            this.c = this.d.getColor();
            if (this.e != null) {
                this.e.a(Color.red(this.c), Color.green(this.c), Color.blue(this.c));
            }
            dismiss();
            return;
        }
        if (view.getId() == e.colorPickerHSV_CancelButton) {
            this.c = this.d.getColor();
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(f.color_picker_hsv_dialog);
        this.a = (Button) findViewById(e.colorPickerHSV_OkButton);
        this.b = (Button) findViewById(e.colorPickerHSV_CancelButton);
        this.d = (HSVView) findViewById(e.colorPickerHSV_linearLayout);
        this.d.setHSVFromColor(this.c);
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
    }
}
