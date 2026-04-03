package com.android.vending.licensing;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    SharedPreferences.Editor a = null;
    private final SharedPreferences b;
    private final p c;

    public s(SharedPreferences sharedPreferences, p pVar) {
        this.b = sharedPreferences;
        this.c = pVar;
    }

    public final void a(String str, String str2) {
        if (this.a == null) {
            this.a = this.b.edit();
        }
        this.a.putString(str, this.c.a(str2));
    }

    public final String b(String str, String str2) {
        String string = this.b.getString(str, null);
        if (string == null) {
            return str2;
        }
        try {
            return this.c.b(string);
        } catch (v e) {
            String str3 = "Validation error while reading preference: " + str;
            return str2;
        }
    }
}
