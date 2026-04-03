package com.android.vending.licensing;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.RemoteException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class h implements ServiceConnection {
    private static final SecureRandom a = new SecureRandom();
    private ILicensingService b;
    private PublicKey c;
    private final Context d;
    private final q e;
    private Handler f;
    private final String g;
    private final String h;
    private final Set i = new HashSet();
    private final Queue j = new LinkedList();

    public h(Context context, q qVar, String str) {
        this.d = context;
        this.e = qVar;
        this.c = a(str);
        this.g = this.d.getPackageName();
        this.h = a(context, this.g);
        HandlerThread handlerThread = new HandlerThread("background thread");
        handlerThread.start();
        this.f = new Handler(handlerThread.getLooper());
    }

    private static String a(Context context, String str) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(str, 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    private static PublicKey a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(com.android.vending.licensing.a.a.a(str)));
        } catch (com.android.vending.licensing.a.b e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        } catch (InvalidKeySpecException e3) {
            throw new IllegalArgumentException(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(n nVar) {
        this.i.remove(nVar);
        if (this.i.isEmpty()) {
            c();
        }
    }

    private void b() {
        while (true) {
            n nVar = (n) this.j.poll();
            if (nVar == null) {
                return;
            }
            try {
                String str = "Calling checkLicense on service for " + nVar.c;
                this.b.a(nVar.b, nVar.c, new i(this, nVar));
                this.i.add(nVar);
            } catch (RemoteException e) {
                b(nVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(n nVar) {
        this.e.a(r.RETRY, null);
        if (this.e.a()) {
            nVar.a.a();
        } else {
            nVar.a.b();
        }
    }

    private void c() {
        if (this.b != null) {
            try {
                this.d.unbindService(this);
            } catch (IllegalArgumentException e) {
            }
            this.b = null;
        }
    }

    public final synchronized void a() {
        c();
        this.f.getLooper().quit();
    }

    public final synchronized void a(l lVar) {
        if (this.e.a()) {
            lVar.a();
        } else {
            n nVar = new n(this.e, new o(), lVar, a.nextInt(), this.g, this.h);
            if (this.b == null) {
                try {
                    if (this.d.bindService(new Intent(ILicensingService.class.getName()), this, 1)) {
                        this.j.offer(nVar);
                    } else {
                        b(nVar);
                    }
                } catch (SecurityException e) {
                    m mVar = m.MISSING_PERMISSION;
                    lVar.c();
                }
            } else {
                this.j.offer(nVar);
                b();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.b = f.a(iBinder);
        b();
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        this.b = null;
    }
}
