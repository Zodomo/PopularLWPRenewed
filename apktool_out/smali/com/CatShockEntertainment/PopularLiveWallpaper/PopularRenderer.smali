.class Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;
.super Lcom/CatShockEntertainment/LiveWallpaperLib/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "popular_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;-><init>(Landroid/content/Context;)V

    const-string v0, "Popular LWP Renderer"

    sput-object v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->i:Ljava/lang/String;

    return-void
.end method

.method private native changeRenderBufferSize(II)V
.end method

.method private native framemove()V
.end method

.method private native init(II)V
.end method

.method private native initJNI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native render()V
.end method


# virtual methods
.method public final a(FFII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->onTouchEvent(FFII)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->initJNI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a([B[BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setFFTWaveForm([B[BII)V

    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->isMusicPlaying()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->c()V

    invoke-direct {p0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->framemove()V

    iget v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->b:I

    iget v1, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->c:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-direct {p0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->render()V

    return-void
.end method

.method public final c(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->init(II)V

    return-void
.end method

.method public native cancelAllTouches()V
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->cancelAllTouches()V

    return-void
.end method

.method public final d(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->changeRenderBufferSize(II)V

    return-void
.end method

.method public final e()V
    .locals 1

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setVolume(F)V

    return-void
.end method

.method public native isMusicPlaying()Z
.end method

.method public native onTouchEvent(FFII)V
.end method

.method public native setAnimationSpeedFac(F)V
.end method

.method public native setAttenuation(F)V
.end method

.method public native setBackgroundNoise(F)V
.end method

.method public native setCamera(I)V
.end method

.method public native setCameraHeight(F)V
.end method

.method public native setCameraVel(F)V
.end method

.method public native setDecay(F)V
.end method

.method public native setExcitementbyMusic(Z)V
.end method

.method public native setFFTWaveForm([B[BII)V
.end method

.method public native setFlyingRectanglesFrequency(F)V
.end method

.method public native setGridBackgroundColor(I)V
.end method

.method public native setGrowingAndroidFrequency(F)V
.end method

.method public native setGrowingHeartFrequency(F)V
.end method

.method public native setGrowingRectangleFrequency(F)V
.end method

.method public native setNoiseExcitement(F)V
.end method

.method public native setPatternExcitement(F)V
.end method

.method public native setPatternFrequency(F)V
.end method

.method public native setRailrouteFrequency(F)V
.end method

.method public native setRouteFrequency(F)V
.end method

.method public native setShrinkingRectangleFrequency(F)V
.end method

.method public native setStarFrequency(F)V
.end method

.method public native setTouchSensibility(F)V
.end method

.method public native setTranslatingRectanglesFrequency(F)V
.end method

.method public native setVolume(F)V
.end method

.method public native setWaveFormRenderMode(I)V
.end method

.method public native setWaveFormRendererAmplitudeFac(F)V
.end method

.method public native setWaveFormRendererColor1(I)V
.end method

.method public native setWaveFormRendererColor2(I)V
.end method

.method public native setWaveFormRendererOpacity(F)V
.end method

.method public native setWaveFormRendererSize(F)V
.end method
