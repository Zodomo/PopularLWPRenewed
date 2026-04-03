package com.google.ads.b;

import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class x {
    public final String a;
    public HashMap b;

    public x(Bundle bundle) {
        this.a = bundle.getString("action");
        Serializable serializable = bundle.getSerializable("params");
        this.b = serializable instanceof HashMap ? (HashMap) serializable : null;
    }

    private x(String str) {
        this.a = str;
    }

    public x(String str, HashMap map) {
        this(str);
        this.b = map;
    }
}
