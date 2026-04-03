package com.google.ads.d;

/* JADX INFO: loaded from: classes.dex */
public enum b {
    NONE("none"),
    DASHED("dashed"),
    DOTTED("dotted"),
    SOLID("solid");

    private String e;

    b(String str) {
        this.e = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.e;
    }
}
