package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class NumberEditPreference extends Preference implements Preference.OnPreferenceClickListener {
    Context a;
    w b;
    int c;
    private int d;
    private int e;
    private int f;
    private String g;

    public NumberEditPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = 60;
        this.e = -1;
        this.f = -1;
        this.g = "";
        this.b = null;
        this.a = context;
        int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "defaultValue", 60);
        this.d = attributeIntValue;
        this.c = attributeIntValue;
        this.e = -1;
        this.f = -1;
    }

    public final void a(int i) {
        this.c = i;
        if (shouldPersist()) {
            persistInt(this.c);
        }
    }

    public final void a(String str) {
        this.g = str;
    }

    public final void b(int i) {
        this.e = i;
    }

    public final void c(int i) {
        this.f = i;
    }

    public final void d() {
        notifyChanged();
        callChangeListener(Integer.valueOf(this.c));
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        super.onBindView(view);
        setOnPreferenceClickListener(this);
        this.c = getPersistedInt(this.d);
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (this.b == null || !this.b.isShowing()) {
            if (this.b == null) {
                this.b = new w(this.a, new y(this), this.c, this.f, this.e);
            } else {
                this.b.a(this.c);
            }
            this.b.setTitle(getTitle());
            this.b.a(this.g);
            this.b.show();
        }
        return false;
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        super.onSetInitialValue(z, obj);
        if (z) {
            this.c = getPersistedInt(this.d);
            return;
        }
        if (obj instanceof Integer) {
            this.c = ((Integer) obj).intValue();
        } else {
            this.c = this.d;
        }
        a(this.c);
    }
}
