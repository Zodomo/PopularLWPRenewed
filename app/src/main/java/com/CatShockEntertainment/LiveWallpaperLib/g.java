package com.CatShockEntertainment.LiveWallpaperLib;

import android.content.SharedPreferences;
import android.graphics.Rect;
import android.opengl.GLES10;
import android.opengl.GLES20;
import android.os.Build;
import android.service.wallpaper.WallpaperService;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import java.util.ArrayList;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
public class g extends WallpaperService.Engine implements SharedPreferences.OnSharedPreferenceChangeListener {
    public i a;
    volatile boolean b;
    final /* synthetic */ f c;
    EGL10 d;
    EGLDisplay e;
    EGLSurface f;
    EGLContext g;
    private EGLConfig h;
    private String i;
    final Lock j;
    volatile ArrayList k;
    private boolean l;
    volatile float m;
    volatile float n;
    volatile double o;
    volatile long p;
    volatile boolean q;
    private int r;
    private boolean s;
    private h t;
    private boolean u;
    private SharedPreferences v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(f fVar, i iVar, boolean z, float f) {
        fVar.super();
        this.c = fVar;
        this.j = new ReentrantLock();
        this.k = new ArrayList();
        this.b = false;
        this.l = false;
        this.t = null;
        this.a = iVar;
        this.m = f;
        this.r = 2;
        this.s = z;
        this.q = false;
        this.o = 10.0d;
        this.n = 5.0f;
    }

    private void a(int i, boolean z, boolean z2) {
        int[][] iArr;
        int i2;
        if (z2) {
            if (this.g != null) {
                this.d.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                this.d.eglDestroyContext(this.e, this.g);
                this.g = null;
            }
            this.h = null;
        }
        int i3 = 0;
        int[][] iArr2 = new int[1][];
        int i4 = this.r == 1 ? 1 : 4;
        if (i == 32) {
            int i5 = z ? 8 : 3;
            int[][] iArr3 = new int[i5][];
            if (z) {
                iArr3[0] = new int[]{12339, 4, 12352, i4, 12324, 8, 12323, 8, 12322, 8, 12325, 24, 12326, 8, 12338, 1, 12337, 4, 12344};
                iArr3[1] = new int[]{12339, 4, 12352, i4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12326, 0, 12338, 1, 12337, 4, 12344};
                iArr3[2] = new int[]{12339, 4, 12352, i4, 12324, 5, 12323, 6, 12322, 5, 12325, 16, 12326, 0, 12338, 1, 12337, 4, 12344};
                iArr3[3] = new int[]{12339, 4, 12352, i4, 12324, 8, 12323, 8, 12322, 8, 12325, 24, 12326, 8, 12512, 1, 12513, 5, 12344};
                iArr3[4] = new int[]{12339, 4, 12352, i4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12512, 1, 12513, 5, 12344};
                iArr3[5] = new int[]{12339, 4, 12352, i4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 24, 12326, 8, 12344};
                iArr3[6] = new int[]{12339, 4, 12352, i4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 16, 12326, 0, 12344};
                iArr3[7] = new int[]{12339, 4, 12352, i4, 12324, 5, 12323, 6, 12322, 5, 12325, 16, 12326, 0, 12344};
                i3 = i5;
                iArr2 = iArr3;
            } else {
                iArr3[1] = new int[]{12339, 4, 12352, i4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 16, 12326, 0, 12344};
                iArr3[0] = new int[]{12339, 4, 12352, i4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 24, 12326, 8, 12344};
                iArr3[2] = new int[]{12339, 4, 12352, i4, 12324, 5, 12323, 6, 12322, 5, 12325, 16, 12326, 0, 12344};
                i3 = i5;
                iArr2 = iArr3;
            }
        }
        if (i == 16) {
            int i6 = z ? 2 : 1;
            int[][] iArr4 = new int[i6][];
            if (z) {
                iArr4[0] = new int[]{12339, 4, 12352, i4, 12324, 5, 12323, 6, 12322, 5, 12325, 16, 12326, 0, 12338, 1, 12337, 4, 12344};
                iArr4[1] = new int[]{12339, 4, 12352, i4, 12324, 5, 12323, 6, 12322, 5, 12325, 16, 12326, 0, 12344};
                iArr = iArr4;
                i2 = i6;
            } else {
                iArr4[0] = new int[]{12339, 4, 12352, i4, 12324, 5, 12323, 6, 12322, 5, 12325, 16, 12326, 0, 12344};
                iArr = iArr4;
                i2 = i6;
            }
        } else {
            iArr = iArr2;
            i2 = i3;
        }
        if (this.h == null) {
            this.d.eglInitialize(this.e, new int[2]);
            int[] iArr5 = new int[1];
            int i7 = 0;
            int i8 = 0;
            while (i8 < i2) {
                this.d.eglChooseConfig(this.e, iArr[i8], null, 0, iArr5);
                i7 = iArr5[0];
                if (i7 > 0) {
                    break;
                } else {
                    i8++;
                }
            }
            if (i7 <= 0) {
                throw new RuntimeException("No configs match configSpec");
            }
            if (z && ((i8 == 3 || i8 == 4) && i == 32)) {
                this.l = true;
            } else {
                this.l = false;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i7];
            this.d.eglChooseConfig(this.e, iArr[i8], eGLConfigArr, i7, iArr5);
            this.h = eGLConfigArr[0];
        }
        if (this.g == null) {
            this.g = this.d.eglCreateContext(this.e, this.h, EGL10.EGL_NO_CONTEXT, new int[]{12440, this.r, 12344});
            if (this.g == null || this.g == EGL10.EGL_NO_CONTEXT) {
                throw new RuntimeException("createContext failed");
            }
        }
    }

    public final void a() {
        this.v = this.c.getSharedPreferences(com.CatShockEntertainment.LiveWallpaperLib.f.b, 0);
        this.v.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.v, null);
    }

    public final boolean b() {
        return this.t != null && this.t.isAlive();
    }

    public final void c() {
        if (this.t == null || !this.t.isAlive()) {
            this.p = System.currentTimeMillis();
            this.b = false;
            this.t = new h(this);
            this.a.d();
            this.t.start();
        }
    }

    public final void d() {
        boolean z = false;
        if (this.t != null && this.t.isAlive()) {
            z = true;
        }
        if (z) {
            this.b = true;
            try {
                this.t.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.t = null;
        }
    }

    public final void e() {
        if (this.l) {
            GLES20.glClear(32768);
        }
        this.a.c();
        if (this.a.b()) {
            this.p = System.currentTimeMillis();
        }
    }

    @Override // android.service.wallpaper.WallpaperService.Engine
    public void onCreate(SurfaceHolder surfaceHolder) {
        this.u = false;
        if (this.d == null) {
            this.d = (EGL10) EGLContext.getEGL();
        }
        if (this.e == null) {
            this.e = this.d.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        }
        a(32, this.s, false);
        this.f = null;
        super.onCreate(surfaceHolder);
        this.a.a();
        setTouchEventsEnabled(true);
    }

    @Override // android.service.wallpaper.WallpaperService.Engine
    public void onDestroy() {
        super.onDestroy();
        d();
        i iVar = this.a;
        if (this.g != null) {
            this.d.eglDestroyContext(this.e, this.g);
            this.g = null;
        }
        if (this.e != null) {
            this.d.eglTerminate(this.e);
            this.e = null;
        }
    }

    @Override // android.service.wallpaper.WallpaperService.Engine
    public void onOffsetsChanged(float f, float f2, float f3, float f4, int i, int i2) {
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        boolean z = sharedPreferences.getBoolean("hs_energy_saving", false);
        int i = sharedPreferences.getInt("hs_es_time_to_reduced_fps", 10);
        this.n = Math.max(sharedPreferences.getInt("reduced_fps", 5), 1);
        this.o = Math.max(i, 5);
        this.q = z;
        this.p = System.currentTimeMillis();
    }

    @Override // android.service.wallpaper.WallpaperService.Engine
    public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        super.onSurfaceChanged(surfaceHolder, i, i2, i3);
        boolean zB = b();
        d();
        if (this.f != null && this.f != EGL10.EGL_NO_SURFACE) {
            this.d.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            this.d.eglDestroySurface(this.e, this.f);
        }
        if (Build.MANUFACTURER.equals("motorola") && Build.VERSION.SDK_INT < 11 && this.i.equals("Imagination Technologies") && !surfaceHolder.isCreating()) {
            surfaceHolder.unlockCanvasAndPost(surfaceHolder.lockCanvas());
        }
        EGLSurface eGLSurfaceEglCreateWindowSurface = this.d.eglCreateWindowSurface(this.e, this.h, surfaceHolder, null);
        if (eGLSurfaceEglCreateWindowSurface != null && eGLSurfaceEglCreateWindowSurface != EGL10.EGL_NO_SURFACE) {
            this.f = eGLSurfaceEglCreateWindowSurface;
        }
        this.d.eglMakeCurrent(this.e, this.f, this.f, this.g);
        this.a.b(i2, i3);
        this.d.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        if (zB) {
            c();
        }
    }

    @Override // android.service.wallpaper.WallpaperService.Engine
    public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.f != null && this.f != EGL10.EGL_NO_SURFACE) {
            this.d.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            this.d.eglDestroySurface(this.e, this.f);
        }
        this.f = this.d.eglCreateWindowSurface(this.e, this.h, surfaceHolder, null);
        if (this.f == null || this.f == EGL10.EGL_NO_SURFACE) {
            a(16, this.s, true);
            this.f = this.d.eglCreateWindowSurface(this.e, this.h, surfaceHolder, null);
            if (this.f == null || this.f == EGL10.EGL_NO_SURFACE) {
                throw new RuntimeException("createWindowSurface failed");
            }
        }
        if (!this.d.eglMakeCurrent(this.e, this.f, this.f, this.g)) {
            throw new RuntimeException("eglMakeCurrent failed.");
        }
        this.l = this.l && GLES10.glGetString(7939).contains("GL_NV_coverage_sample");
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        this.a.a(surfaceFrame.right, surfaceFrame.bottom);
        this.i = GLES10.glGetString(7936);
        this.d.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        super.onSurfaceCreated(surfaceHolder);
    }

    @Override // android.service.wallpaper.WallpaperService.Engine
    public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
        super.onSurfaceDestroyed(surfaceHolder);
        this.u = false;
        d();
        i iVar = this.a;
        if (this.f == null || this.f == EGL10.EGL_NO_SURFACE) {
            return;
        }
        this.d.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        this.d.eglDestroySurface(this.e, this.f);
        this.f = null;
    }

    @Override // android.service.wallpaper.WallpaperService.Engine
    public void onTouchEvent(MotionEvent motionEvent) {
        this.j.lock();
        try {
            this.k.add(MotionEvent.obtain(motionEvent));
            this.j.unlock();
            if (System.currentTimeMillis() - this.p > 1000.0d * this.o) {
                this.p = System.currentTimeMillis();
                if (this.t != null && this.t.isAlive()) {
                    this.t.interrupt();
                }
            }
            super.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            this.j.unlock();
            throw th;
        }
    }

    @Override // android.service.wallpaper.WallpaperService.Engine
    public void onVisibilityChanged(boolean z) {
        this.u = z;
        if (z) {
            this.d.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            c();
            this.p = System.currentTimeMillis();
        } else {
            d();
        }
        this.a.a(z);
        super.onVisibilityChanged(z);
    }
}
