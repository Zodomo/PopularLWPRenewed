package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class w extends Dialog implements TextWatcher, View.OnClickListener, SeekBar.OnSeekBarChangeListener {
    Button a;
    Button b;
    SeekBar c;
    EditText d;
    int e;
    int f;
    int g;
    String h;
    private x i;

    public w(Context context, x xVar, int i, int i2, int i3) {
        super(context);
        this.i = xVar;
        this.e = i;
        this.f = i2;
        this.g = i3;
        if (this.g >= 0 && this.e > this.g) {
            this.e = this.g;
        }
        if (this.f < 0 || this.e >= this.f) {
            return;
        }
        this.e = this.f;
    }

    public final void a(int i) {
        this.d.setText(Integer.toString(i));
        if (this.g >= 0) {
            this.c.setProgress(i - this.f);
        }
    }

    public final void a(String str) {
        this.h = str;
        TextView textView = (TextView) findViewById(ab.textView_label);
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (this.d.getText().toString().equals("")) {
            this.d.setText("1");
        }
        if (Integer.parseInt(this.d.getText().toString()) < 0) {
            this.d.setText("0");
        }
        if (this.g >= 0) {
            if (Integer.parseInt(this.d.getText().toString()) > this.g) {
                this.d.setText(String.valueOf(this.g));
            }
            if (Integer.parseInt(this.d.getText().toString()) < this.f) {
                this.d.setText(String.valueOf(this.f));
            }
        }
        this.e = Integer.parseInt(this.d.getText().toString());
        if (this.g >= 0) {
            this.c.setProgress(this.e - this.f);
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == ab.button_ok) {
            this.i.a(this.e);
            dismiss();
        }
        if (view.getId() == ab.button_cancel) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.g >= 0) {
            setContentView(ac.number_edit_dialog_seekbar_layout);
        } else {
            setContentView(ac.number_edit_dialog_layout);
        }
        this.a = (Button) findViewById(ab.button_ok);
        this.b = (Button) findViewById(ab.button_cancel);
        if (this.g >= 0) {
            this.c = (SeekBar) findViewById(ab.seekBar);
            this.c.setMax(this.g - this.f);
        }
        this.d = (EditText) findViewById(ab.editText_number);
        a(this.e);
        if (this.g >= 0) {
            this.c.setOnSeekBarChangeListener(this);
        }
        this.d.addTextChangedListener(this);
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
        a(this.h);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (this.g >= 0) {
            if (z && seekBar.getId() == ab.seekBar) {
                this.d.setText(Integer.toString(this.f + i));
            }
            this.e = this.c.getProgress() + this.f;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
