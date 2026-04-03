package com.google.ads.b;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class af {
    private final String a;

    public af(String str) {
        this.a = str;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("debugHeader", this.a);
        } catch (JSONException e) {
            com.google.ads.e.i.d();
        }
        return jSONObject;
    }
}
