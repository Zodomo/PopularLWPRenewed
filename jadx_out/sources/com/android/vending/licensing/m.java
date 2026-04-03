package com.android.vending.licensing;

/* JADX INFO: loaded from: classes.dex */
public enum m {
    INVALID_PACKAGE_NAME,
    NON_MATCHING_UID,
    NOT_MARKET_MANAGED,
    CHECK_IN_PROGRESS,
    INVALID_PUBLIC_KEY,
    MISSING_PERMISSION;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static m[] valuesCustom() {
        m[] mVarArrValuesCustom = values();
        int length = mVarArrValuesCustom.length;
        m[] mVarArr = new m[length];
        System.arraycopy(mVarArrValuesCustom, 0, mVarArr, 0, length);
        return mVarArr;
    }
}
