package com.google.ads.b;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
final class aj implements DialogInterface.OnClickListener {
    final /* synthetic */ ah a;

    aj(ah ahVar) {
        this.a = ahVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        new Thread(new ae(this.a.c.d(), this.a.b.getApplicationContext())).start();
    }
}
