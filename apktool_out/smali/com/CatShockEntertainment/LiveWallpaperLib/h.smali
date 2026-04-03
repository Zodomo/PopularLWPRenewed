.class final Lcom/CatShockEntertainment/LiveWallpaperLib/h;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;


# direct methods
.method constructor <init>(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->c(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iget-object v4, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v4}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->c(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v5}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a(Lcom/CatShockEntertainment/LiveWallpaperLib/g;J)V

    :goto_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)F

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    move v3, v2

    :goto_2
    array-length v0, v6

    if-lt v3, v0, :cond_3

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a(Lcom/CatShockEntertainment/LiveWallpaperLib/g;J)V

    :cond_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->i(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->j(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->k(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    cmpl-double v0, v6, v8

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->l(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)F

    move-result v0

    :goto_3
    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-virtual {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e()V

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v6, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v6}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->c(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v0, v1, v0

    float-to-int v0, v0

    sub-long v4, v6, v4

    long-to-int v1, v4

    sub-int/2addr v0, v1

    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    iget-boolean v1, v1, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b:Z

    if-nez v1, :cond_4

    int-to-long v0, v0

    :try_start_1
    invoke-static {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    :try_start_2
    aget-object v0, v6, v3

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v7, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v7}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->h(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/i;->a(Landroid/view/MotionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-static {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_3
.end method
