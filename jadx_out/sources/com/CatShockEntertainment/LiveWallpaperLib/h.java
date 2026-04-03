package com.CatShockEntertainment.LiveWallpaperLib;

import android.view.MotionEvent;
import javax.microedition.khronos.egl.EGL10;

/* JADX INFO: loaded from: classes.dex */
final class h extends Thread {
    final /* synthetic */ g a;

    h(g gVar) {
        this.a = gVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (!this.a.d.eglMakeCurrent(this.a.e, this.a.f, this.a.f, this.a.g)) {
            return;
        }
        this.a.p = System.currentTimeMillis();
        while (true) {
            float f = this.a.m;
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.a.j.lock();
            try {
                for (Object obj : this.a.k.toArray()) {
                    this.a.a.a((MotionEvent) obj);
                }
                int size = this.a.k.size();
                this.a.k.clear();
                if (size > 0) {
                    this.a.p = System.currentTimeMillis();
                }
                float f2 = (!this.a.q || ((double) (System.currentTimeMillis() - this.a.p)) <= 1000.0d * this.a.o) ? f : this.a.n;
                this.a.e();
                this.a.d.eglSwapBuffers(this.a.e, this.a.f);
                int iCurrentTimeMillis = ((int) (1000.0f / f2)) - ((int) (System.currentTimeMillis() - jCurrentTimeMillis));
                if (iCurrentTimeMillis < 0) {
                    iCurrentTimeMillis = 0;
                }
                if (this.a.b) {
                    this.a.d.eglMakeCurrent(this.a.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                    return;
                }
                try {
                    sleep(iCurrentTimeMillis);
                } catch (InterruptedException e) {
                }
            } finally {
                this.a.j.unlock();
            }
        }
    }
}
