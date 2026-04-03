package com.android.vending.licensing;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends Binder implements ILicensingService {
    public static ILicensingService a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.vending.licensing.ILicensingService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ILicensingService)) ? new g(iBinder) : (ILicensingService) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        c eVar;
        switch (i) {
            case 1:
                parcel.enforceInterface("com.android.vending.licensing.ILicensingService");
                long j = parcel.readLong();
                String string = parcel.readString();
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    eVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.android.vending.licensing.ILicenseResultListener");
                    eVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new e(strongBinder) : (c) iInterfaceQueryLocalInterface;
                }
                a(j, string, eVar);
                return true;
            case 1598968902:
                parcel2.writeString("com.android.vending.licensing.ILicensingService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
