package com.CatShockEntertainment.LiveWallpaperLib;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class m extends Dialog implements View.OnClickListener {
    private Button a;
    private Button b;
    private Button c;
    private TextView d;
    private Context e;

    public m(Context context) {
        super(context);
        this.e = context;
        requestWindowFeature(1);
        setContentView(ac.trial_setting_replacement_dialog_layout);
        this.a = (Button) findViewById(ab.get_full_version_button_id);
        this.b = (Button) findViewById(ab.visit_us_button_id);
        this.c = (Button) findViewById(ab.continue_button_id);
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d = (TextView) findViewById(ab.textView1);
        this.d.setText(f.d);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == this.a) {
            this.e.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(f.c)));
        }
        if (view == this.b) {
            this.e.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.live-wallpaper.org")));
        }
        if (view == this.c) {
            dismiss();
        }
    }
}
