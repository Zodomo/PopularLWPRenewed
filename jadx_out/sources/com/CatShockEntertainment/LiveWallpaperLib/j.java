package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.media.audiofx.Visualizer;
import android.view.MotionEvent;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class j implements Visualizer.OnDataCaptureListener, i {
    protected static Visualizer f;
    protected static final Lock g = new ReentrantLock();
    public static String i = "GLWallpaperStdRenderer";
    protected Context a;
    protected int b;
    protected int c;
    protected int d = 0;
    protected boolean e;
    protected int h;

    public j(Context context) {
        this.e = false;
        this.a = context;
        this.e = true;
        try {
            a(context, context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).sourceDir, context.getCacheDir().getAbsolutePath());
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("Unable to locate assets, aborting..." + context.getPackageName());
        }
    }

    private void a(MotionEvent motionEvent, int i2) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i3 = 0; i3 < pointerCount; i3++) {
            a(motionEvent, i2, i3);
        }
    }

    private void a(MotionEvent motionEvent, int i2, int i3) {
        a(motionEvent.getX(i3), motionEvent.getY(i3), i2, motionEvent.getPointerId(i3));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(boolean r4) {
        /*
            r3 = this;
            if (r4 == 0) goto L7
            java.util.concurrent.locks.Lock r0 = com.CatShockEntertainment.LiveWallpaperLib.j.g
            r0.lock()
        L7:
            android.media.audiofx.Visualizer r0 = com.CatShockEntertainment.LiveWallpaperLib.j.f     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            if (r0 == 0) goto L13
            if (r4 == 0) goto L12
            java.util.concurrent.locks.Lock r0 = com.CatShockEntertainment.LiveWallpaperLib.j.g
            r0.unlock()
        L12:
            return
        L13:
            android.media.audiofx.Visualizer r0 = new android.media.audiofx.Visualizer     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r1 = 0
            r0.<init>(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            com.CatShockEntertainment.LiveWallpaperLib.j.f = r0     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            android.media.audiofx.Visualizer r0 = com.CatShockEntertainment.LiveWallpaperLib.j.f     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            int r0 = r0.getCaptureSize()     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r3.h = r0     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r0 = com.CatShockEntertainment.LiveWallpaperLib.j.i     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r1 = "Visualizer SamplingRate: "
            r0.<init>(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            android.media.audiofx.Visualizer r1 = com.CatShockEntertainment.LiveWallpaperLib.j.f     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            int r1 = r1.getSamplingRate()     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r0.toString()     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r0 = com.CatShockEntertainment.LiveWallpaperLib.j.i     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r1 = "Visualizer CaptureSize: "
            r0.<init>(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            int r1 = r3.h     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r0.toString()     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            int[] r0 = android.media.audiofx.Visualizer.getCaptureSizeRange()     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r1 = com.CatShockEntertainment.LiveWallpaperLib.j.i     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r2 = "Visualizer CaptureSizeRange: "
            r1.<init>(r2)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r2 = 0
            r2 = r0[r2]     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r2 = ", "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r2 = 1
            r2 = r0[r2]     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r1.toString()     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r1 = 1024(0x400, float:1.435E-42)
            r3.h = r1     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            int r1 = r3.h     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r2 = 1
            r2 = r0[r2]     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            if (r1 <= r2) goto L8f
            r1 = 1
            r0 = r0[r1]     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r3.h = r0     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
        L8f:
            android.media.audiofx.Visualizer r0 = com.CatShockEntertainment.LiveWallpaperLib.j.f     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r1 = 0
            r0.setEnabled(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            android.media.audiofx.Visualizer r0 = com.CatShockEntertainment.LiveWallpaperLib.j.f     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            boolean r0 = r0.getEnabled()     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            if (r0 != 0) goto La4
            android.media.audiofx.Visualizer r0 = com.CatShockEntertainment.LiveWallpaperLib.j.f     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            int r1 = r3.h     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r0.setCaptureSize(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
        La4:
            android.media.audiofx.Visualizer r0 = com.CatShockEntertainment.LiveWallpaperLib.j.f     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            r1 = 1
            r0.setEnabled(r1)     // Catch: java.lang.IllegalStateException -> Lb3 java.lang.Throwable -> Lbf
            if (r4 == 0) goto L12
            java.util.concurrent.locks.Lock r0 = com.CatShockEntertainment.LiveWallpaperLib.j.g
            r0.unlock()
            goto L12
        Lb3:
            r0 = move-exception
            java.lang.String r0 = com.CatShockEntertainment.LiveWallpaperLib.j.i     // Catch: java.lang.Throwable -> Lbf
            if (r4 == 0) goto L12
            java.util.concurrent.locks.Lock r0 = com.CatShockEntertainment.LiveWallpaperLib.j.g
            r0.unlock()
            goto L12
        Lbf:
            r0 = move-exception
            if (r4 == 0) goto Lc7
            java.util.concurrent.locks.Lock r1 = com.CatShockEntertainment.LiveWallpaperLib.j.g
            r1.unlock()
        Lc7:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.CatShockEntertainment.LiveWallpaperLib.j.b(boolean):void");
    }

    private static void c(boolean z) {
        if (z) {
            g.lock();
        }
        try {
            try {
                if (f == null) {
                    if (z) {
                        g.unlock();
                    }
                } else {
                    if (f.getEnabled()) {
                        f.setEnabled(false);
                    }
                    f = null;
                    if (z) {
                        g.unlock();
                    }
                }
            } catch (IllegalStateException e) {
                String str = i;
                if (z) {
                    g.unlock();
                }
            }
        } catch (Throwable th) {
            if (z) {
                g.unlock();
            }
            throw th;
        }
    }

    private void d(boolean z) {
        c(z);
        b(z);
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.i
    public final void a() {
        if (this.e) {
            d(true);
        }
    }

    public void a(float f2, float f3, int i2, int i3) {
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.i
    public final void a(int i2, int i3) {
        this.b = i2;
        this.c = i3;
        if (this.d == 0) {
            c(this.b, this.c);
            this.d = 1;
        }
    }

    public void a(Context context, String str, String str2) {
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.i
    public final void a(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            a(motionEvent, 1);
        }
        if (motionEvent.getActionMasked() == 2) {
            a(motionEvent, 2);
        }
        if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
            a(motionEvent, 0);
        }
        if (motionEvent.getActionMasked() == 5) {
            a(motionEvent, 1, motionEvent.getActionIndex());
        }
        if (motionEvent.getActionMasked() == 6) {
            a(motionEvent, 0, motionEvent.getActionIndex());
        }
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.i
    public final void a(boolean z) {
        if (this.e) {
            if (z) {
                d(true);
            } else {
                c(true);
            }
        }
    }

    public void a(byte[] bArr, byte[] bArr2, int i2, int i3) {
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.i
    public final void b(int i2, int i3) {
        this.b = i2;
        this.c = i3;
        d(this.b, this.c);
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.i
    public boolean b() {
        return false;
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.i
    public void c() {
        if (this.e) {
            AudioManager audioManager = (AudioManager) this.a.getSystemService("audio");
            audioManager.getStreamVolume(3);
            audioManager.getStreamMaxVolume(3);
            e();
            g.lock();
            try {
                if (f == null) {
                    b(false);
                }
                if (f.getEnabled()) {
                    int captureSize = f.getCaptureSize();
                    byte[] bArr = new byte[captureSize];
                    byte[] bArr2 = new byte[captureSize];
                    f.getFft(bArr);
                    f.getWaveForm(bArr2);
                    a(bArr, bArr2, captureSize, f.getSamplingRate());
                } else {
                    f.setEnabled(true);
                }
            } catch (IllegalStateException e) {
                d(false);
                String str = i;
            } finally {
                g.unlock();
            }
        }
    }

    public void c(int i2, int i3) {
    }

    @Override // com.CatShockEntertainment.LiveWallpaperLib.i
    public void d() {
    }

    public void d(int i2, int i3) {
    }

    public void e() {
    }

    @Override // android.media.audiofx.Visualizer.OnDataCaptureListener
    public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i2) {
        String str = i;
        String str2 = "Visualizer -> onFftDataCapture: " + String.valueOf((int) bArr[512]) + ", " + String.valueOf(i2);
    }

    @Override // android.media.audiofx.Visualizer.OnDataCaptureListener
    public void onWaveFormDataCapture(Visualizer visualizer, byte[] bArr, int i2) {
        String str = i;
        String str2 = "Visualizer -> doSetFFTWaveForm: " + String.valueOf((int) bArr[512]) + ", " + String.valueOf(i2);
    }
}
