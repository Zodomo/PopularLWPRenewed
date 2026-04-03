package com.android.vending.licensing;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
final class g implements ILicensingService {
    private IBinder a;

    g(IBinder iBinder) {
        this.a = iBinder;
    }

    @Override // com.android.vending.licensing.ILicensingService
    public final void a(long j, String str, c cVar) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.android.vending.licensing.ILicensingService");
            parcelObtain.writeLong(j);
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
            this.a.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }
}
