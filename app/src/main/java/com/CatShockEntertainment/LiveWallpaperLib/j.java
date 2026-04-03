package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.audiofx.Visualizer;
import android.view.MotionEvent;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

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
            throw new RuntimeException("Unable to locate assets, aborting..." + context.getPackageName(), e);
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

    private static void c(boolean z) {
        if (z) {
            g.lock();
        }
        try {
            if (f != null) {
                try {
                    if (f.getEnabled()) {
                        f.setEnabled(false);
                    }
                } catch (IllegalStateException unused) {
                }
                try {
                    f.release();
                } catch (RuntimeException unused) {
                }
                f = null;
            }
        } finally {
            if (z) {
                g.unlock();
            }
        }
    }

    private void d(boolean z) {
        if (z) {
            g.lock();
        }
        try {
            c(false);
            try {
                Visualizer visualizer = new Visualizer(0);
                int[] captureSizeRange = Visualizer.getCaptureSizeRange();
                int min = captureSizeRange[0];
                int max = captureSizeRange[1];
                int i2 = 1024;
                if (i2 < min) {
                    i2 = min;
                }
                if (i2 > max) {
                    i2 = max;
                }
                this.h = i2;
                visualizer.setEnabled(false);
                visualizer.setCaptureSize(this.h);
                visualizer.setEnabled(true);
                f = visualizer;
            } catch (RuntimeException unused) {
                f = null;
            }
        } finally {
            if (z) {
                g.unlock();
            }
        }
    }

    @Override
    public final void a() {
        if (this.e) {
            d(true);
        }
    }

    public void a(float f2, float f3, int i2, int i3) {
    }

    @Override
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

    @Override
    public final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == MotionEvent.ACTION_DOWN) {
            a(motionEvent, 1);
        }
        if (actionMasked == MotionEvent.ACTION_MOVE) {
            a(motionEvent, 2);
        }
        if (actionMasked == MotionEvent.ACTION_UP || actionMasked == MotionEvent.ACTION_CANCEL) {
            a(motionEvent, 0);
        }
        if (actionMasked == MotionEvent.ACTION_POINTER_DOWN) {
            a(motionEvent, 1, motionEvent.getActionIndex());
        }
        if (actionMasked == MotionEvent.ACTION_POINTER_UP) {
            a(motionEvent, 0, motionEvent.getActionIndex());
        }
    }

    @Override
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

    @Override
    public final void b(int i2, int i3) {
        this.b = i2;
        this.c = i3;
        d(this.b, this.c);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public void c() {
        if (this.e) {
            e();
            g.lock();
            try {
                if (f == null) {
                    d(false);
                }
                if (f != null) {
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
                }
            } catch (RuntimeException unused) {
                d(false);
            } finally {
                g.unlock();
            }
        }
    }

    public void c(int i2, int i3) {
    }

    @Override
    public void d() {
    }

    public void d(int i2, int i3) {
    }

    public void e() {
    }

    @Override
    public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i2) {
    }

    @Override
    public void onWaveFormDataCapture(Visualizer visualizer, byte[] bArr, int i2) {
    }
}
