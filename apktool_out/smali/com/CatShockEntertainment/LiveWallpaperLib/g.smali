.class public Lcom/CatShockEntertainment/LiveWallpaperLib/g;
.super Landroid/service/wallpaper/WallpaperService$Engine;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

.field volatile b:Z

.field final synthetic c:Lcom/CatShockEntertainment/LiveWallpaperLib/f;

.field private d:Ljavax/microedition/khronos/egl/EGL10;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:Ljavax/microedition/khronos/egl/EGLSurface;

.field private g:Ljavax/microedition/khronos/egl/EGLContext;

.field private h:Ljavax/microedition/khronos/egl/EGLConfig;

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/concurrent/locks/Lock;

.field private volatile k:Ljava/util/ArrayList;

.field private l:Z

.field private volatile m:F

.field private volatile n:F

.field private volatile o:D

.field private volatile p:J

.field private volatile q:Z

.field private r:I

.field private s:Z

.field private t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

.field private u:Z

.field private v:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/CatShockEntertainment/LiveWallpaperLib/f;Lcom/CatShockEntertainment/LiveWallpaperLib/i;ZF)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->c:Lcom/CatShockEntertainment/LiveWallpaperLib/f;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->j:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->k:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b:Z

    iput-boolean v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    iput-object p2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    iput p4, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->m:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->r:I

    iput-boolean p3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->s:Z

    iput-boolean v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->q:Z

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->o:D

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->n:F

    return-void
.end method

.method static synthetic a(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method private a(IZZ)V
    .locals 10

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v2, 0x4

    iget v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->r:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/16 v3, 0x20

    if-ne p1, v3, :cond_3

    if-eqz p2, :cond_5

    const/16 v0, 0x8

    :goto_0
    new-array v1, v0, [[I

    if-eqz p2, :cond_6

    const/4 v3, 0x0

    const/16 v4, 0x13

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x18

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3032

    aput v6, v4, v5

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3031

    aput v6, v4, v5

    const/16 v5, 0x11

    const/4 v6, 0x4

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/16 v4, 0x13

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3032

    aput v6, v4, v5

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3031

    aput v6, v4, v5

    const/16 v5, 0x11

    const/4 v6, 0x4

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x13

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x6

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x5

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3032

    aput v6, v4, v5

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3031

    aput v6, v4, v5

    const/16 v5, 0x11

    const/4 v6, 0x4

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x13

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x18

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x30e0

    aput v6, v4, v5

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x30e1

    aput v6, v4, v5

    const/16 v5, 0x11

    const/4 v6, 0x5

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const/16 v4, 0x11

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x30e0

    aput v6, v4, v5

    const/16 v5, 0xd

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x30e1

    aput v6, v4, v5

    const/16 v5, 0xf

    const/4 v6, 0x5

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const/16 v4, 0x11

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3021

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x18

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const/16 v4, 0x11

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3021

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const/16 v4, 0xf

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x6

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x5

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    :cond_3
    :goto_1
    const/16 v3, 0x10

    if-ne p1, v3, :cond_10

    if-eqz p2, :cond_7

    const/4 v0, 0x2

    :goto_2
    new-array v1, v0, [[I

    if-eqz p2, :cond_8

    const/4 v3, 0x0

    const/16 v4, 0x13

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x6

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x5

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3032

    aput v6, v4, v5

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3031

    aput v6, v4, v5

    const/16 v5, 0x11

    const/4 v6, 0x4

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/16 v4, 0xf

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v2, 0x4

    const/16 v5, 0x3024

    aput v5, v4, v2

    const/4 v2, 0x5

    const/4 v5, 0x5

    aput v5, v4, v2

    const/4 v2, 0x6

    const/16 v5, 0x3023

    aput v5, v4, v2

    const/4 v2, 0x7

    const/4 v5, 0x6

    aput v5, v4, v2

    const/16 v2, 0x8

    const/16 v5, 0x3022

    aput v5, v4, v2

    const/16 v2, 0x9

    const/4 v5, 0x5

    aput v5, v4, v2

    const/16 v2, 0xa

    const/16 v5, 0x3025

    aput v5, v4, v2

    const/16 v2, 0xb

    const/16 v5, 0x10

    aput v5, v4, v2

    const/16 v2, 0xc

    const/16 v5, 0x3026

    aput v5, v4, v2

    const/16 v2, 0xe

    const/16 v5, 0x3038

    aput v5, v4, v2

    aput-object v4, v1, v3

    move-object v6, v1

    move v7, v0

    :goto_3
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_c

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v8, v0

    :goto_4
    if-lt v8, v7, :cond_9

    :cond_4
    if-gtz v4, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    const/16 v4, 0x11

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3021

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x0

    const/16 v4, 0x11

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3021

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x18

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0xf

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x3024

    aput v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x3023

    aput v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x6

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3022

    aput v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, 0x5

    aput v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x3025

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x3026

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3038

    aput v6, v4, v5

    aput-object v4, v1, v3

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x0

    const/16 v4, 0xf

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x3033

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3040

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    const/4 v2, 0x4

    const/16 v5, 0x3024

    aput v5, v4, v2

    const/4 v2, 0x5

    const/4 v5, 0x5

    aput v5, v4, v2

    const/4 v2, 0x6

    const/16 v5, 0x3023

    aput v5, v4, v2

    const/4 v2, 0x7

    const/4 v5, 0x6

    aput v5, v4, v2

    const/16 v2, 0x8

    const/16 v5, 0x3022

    aput v5, v4, v2

    const/16 v2, 0x9

    const/4 v5, 0x5

    aput v5, v4, v2

    const/16 v2, 0xa

    const/16 v5, 0x3025

    aput v5, v4, v2

    const/16 v2, 0xb

    const/16 v5, 0x10

    aput v5, v4, v2

    const/16 v2, 0xc

    const/16 v5, 0x3026

    aput v5, v4, v2

    const/16 v2, 0xe

    const/16 v5, 0x3038

    aput v5, v4, v2

    aput-object v4, v1, v3

    move-object v6, v1

    move v7, v0

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v2, v6, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v0, 0x0

    aget v4, v5, v0

    if-gtz v4, :cond_4

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_4

    :cond_a
    if-eqz p2, :cond_e

    const/4 v0, 0x3

    if-eq v8, v0, :cond_b

    const/4 v0, 0x4

    if-ne v8, v0, :cond_e

    :cond_b
    const/16 v0, 0x20

    if-ne p1, v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->l:Z

    :goto_5
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v2, v6, v8

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v0, 0x0

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    :cond_c
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_f

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3098

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->r:I

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_f

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "createContext failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->l:Z

    goto :goto_5

    :cond_f
    return-void

    :cond_10
    move-object v6, v0

    move v7, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/CatShockEntertainment/LiveWallpaperLib/g;J)V
    .locals 1

    iput-wide p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->p:J

    return-void
.end method

.method static synthetic b(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic c(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic d(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic e(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)F
    .locals 1

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->m:F

    return v0
.end method

.method static synthetic f(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->j:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic g(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Lcom/CatShockEntertainment/LiveWallpaperLib/i;
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    return-object v0
.end method

.method static synthetic i(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->q:Z

    return v0
.end method

.method static synthetic j(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->p:J

    return-wide v0
.end method

.method static synthetic k(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)D
    .locals 2

    iget-wide v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->o:D

    return-wide v0
.end method

.method static synthetic l(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)F
    .locals 1

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->n:F

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->c:Lcom/CatShockEntertainment/LiveWallpaperLib/f;

    sget-object v1, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->v:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->v:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    invoke-virtual {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final c()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->p:J

    iput-boolean v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b:Z

    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    invoke-direct {v0, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/g;)V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    invoke-interface {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/i;->d()V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->start()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    invoke-virtual {v2}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->l:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    invoke-interface {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/i;->c()V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    invoke-interface {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->p:J

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->u:Z

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_1
    const/16 v0, 0x20

    iget-boolean v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->s:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a(IZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    invoke-interface {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/i;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->setTouchEventsEnabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d()V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iput-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_1
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x5

    const-string v0, "hs_energy_saving"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "hs_es_time_to_reduced_fps"

    const/16 v2, 0xa

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "reduced_fps"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->n:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->o:D

    iput-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->q:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->p:J

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b()Z

    move-result v0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d()V

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "motorola"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->i:Ljava/lang/String;

    const-string v2, "Imagination Technologies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_2

    iput-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_2
    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    invoke-interface {v1, p3, p4}, Lcom/CatShockEntertainment/LiveWallpaperLib/i;->b(II)V

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->c()V

    :cond_3
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, p1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_3

    :cond_1
    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->s:Z

    invoke-direct {p0, v1, v2, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a(IZZ)V

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, p1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "createWindowSurface failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x1f03

    invoke-static {v1}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GL_NV_coverage_sample"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->l:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    :goto_0
    iput-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->l:Z

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/i;->a(II)V

    const/16 v0, 0x1f00

    invoke-static {v0}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->u:Z

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d()V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->p:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    iget-wide v4, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->o:D

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->p:J

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->t:Lcom/CatShockEntertainment/LiveWallpaperLib/h;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/h;->interrupt()V

    :cond_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onVisibilityChanged(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->u:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->p:J

    :goto_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    invoke-interface {v0, p1}, Lcom/CatShockEntertainment/LiveWallpaperLib/i;->a(Z)V

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d()V

    goto :goto_0
.end method
