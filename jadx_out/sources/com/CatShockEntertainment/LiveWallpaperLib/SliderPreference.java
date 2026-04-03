package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class SliderPreference extends Preference implements Preference.OnPreferenceClickListener {
    protected float a;
    protected float b;
    protected Context c;
    ae d;

    public SliderPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0.5f;
        this.d = null;
        this.c = context;
        float attributeFloatValue = attributeSet.getAttributeFloatValue("http://schemas.android.com/apk/res/android", "defaultValue", 0.5f);
        this.b = attributeFloatValue;
        this.a = attributeFloatValue;
    }

    public final void a(float f) {
        this.a = f;
        if (shouldPersist()) {
            persistFloat(this.a);
        }
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        super.onBindView(view);
        setOnPreferenceClickListener(this);
        this.a = getPersistedFloat(this.b);
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (this.d == null || !this.d.isShowing()) {
            if (this.d == null) {
                this.d = new ae(this.c, new ag(this), this.a);
            } else {
                this.d.a(this.a);
            }
            this.d.setTitle(getTitle());
            this.d.show();
        }
        return false;
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        super.onSetInitialValue(z, obj);
        if (z) {
            this.a = getPersistedFloat(this.b);
            return;
        }
        if (obj instanceof Float) {
            this.a = ((Float) obj).floatValue();
        } else {
            this.a = this.b;
        }
        a(this.a);
    }
}
