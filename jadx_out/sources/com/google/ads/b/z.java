package com.google.ads.b;

import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
final class z implements aa {
    z() {
    }

    @Override // com.google.ads.b.aa
    public final HttpURLConnection a(URL url) {
        return (HttpURLConnection) url.openConnection();
    }
}
