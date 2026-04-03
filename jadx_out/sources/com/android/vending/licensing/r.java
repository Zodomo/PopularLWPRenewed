package com.android.vending.licensing;

/* JADX INFO: loaded from: classes.dex */
public enum r {
    LICENSED,
    NOT_LICENSED,
    RETRY;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static r[] valuesCustom() {
        r[] rVarArrValuesCustom = values();
        int length = rVarArrValuesCustom.length;
        r[] rVarArr = new r[length];
        System.arraycopy(rVarArrValuesCustom, 0, rVarArr, 0, length);
        return rVarArr;
    }
}
