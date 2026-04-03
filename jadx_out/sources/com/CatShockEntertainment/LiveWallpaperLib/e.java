package com.CatShockEntertainment.LiveWallpaperLib;

import android.graphics.Color;

/* JADX INFO: loaded from: classes.dex */
final class e implements com.CatShockEntertainment.ColorPicker.b {
    final /* synthetic */ ColorPickerPreference a;

    e(ColorPickerPreference colorPickerPreference) {
        this.a = colorPickerPreference;
    }

    @Override // com.CatShockEntertainment.ColorPicker.b
    public final void a(int i, int i2, int i3) {
        this.a.a(Color.rgb(i, i2, i3));
        this.a.notifyChanged();
        this.a.callChangeListener(Integer.valueOf(this.a.c));
    }
}
