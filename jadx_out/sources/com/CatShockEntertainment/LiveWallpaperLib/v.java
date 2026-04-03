package com.CatShockEntertainment.LiveWallpaperLib;

/* JADX INFO: loaded from: classes.dex */
final class v implements com.android.vending.licensing.l {
    final /* synthetic */ o a;

    private v(o oVar) {
        this.a = oVar;
    }

    /* synthetic */ v(o oVar, byte b) {
        this(oVar);
    }

    @Override // com.android.vending.licensing.l
    public final void a() {
        if (this.a.isFinishing()) {
            return;
        }
        ah ahVar = new ah(this.a);
        ahVar.a("b", true, "boolean");
        ahVar.a("i", 0, "int");
        ahVar.a();
    }

    @Override // com.android.vending.licensing.l
    public final void b() {
        if (this.a.isFinishing()) {
            return;
        }
        ah ahVar = new ah(this.a);
        boolean zBooleanValue = ((Boolean) ahVar.a("b", false)).booleanValue();
        int iIntValue = ((Integer) ahVar.a("i", 30)).intValue();
        if (iIntValue < 0) {
            iIntValue = 30;
        }
        int i = iIntValue + 1;
        ahVar.a("i", Integer.valueOf(i), "int");
        ahVar.a();
        if (!zBooleanValue || i > 30) {
            this.a.showDialog(0);
        }
    }

    @Override // com.android.vending.licensing.l
    public final void c() {
        if (this.a.isFinishing()) {
        }
    }
}
