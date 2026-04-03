package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.Context;
import android.graphics.Color;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class ColorPickerPreference extends Preference implements Preference.OnPreferenceClickListener {
    Context a;
    com.CatShockEntertainment.ColorPicker.a b;
    int c;
    private int d;

    public ColorPickerPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = Color.rgb(127, 127, 127);
        this.b = null;
        this.a = context;
        int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "defaultValue", Color.rgb(127, 127, 127));
        this.d = attributeIntValue;
        this.c = attributeIntValue;
    }

    public final void a(int i) {
        this.c = i;
        if (shouldPersist()) {
            persistInt(this.c);
        }
    }

    public final void b() {
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
                this.b = new com.CatShockEntertainment.ColorPicker.a(this.a, new e(this), this.c);
            } else {
                this.b.a(this.c);
            }
            this.b.setTitle(getTitle());
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
