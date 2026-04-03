.class final Lcom/CatShockEntertainment/PopularLiveWallpaper/b;
.super Lcom/CatShockEntertainment/LiveWallpaperLib/g;


# instance fields
.field final synthetic d:Lcom/CatShockEntertainment/PopularLiveWallpaper/a;


# direct methods
.method public constructor <init>(Lcom/CatShockEntertainment/PopularLiveWallpaper/a;Lcom/CatShockEntertainment/LiveWallpaperLib/i;)V
    .locals 2

    iput-object p1, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/b;->d:Lcom/CatShockEntertainment/PopularLiveWallpaper/a;

    const/4 v0, 0x1

    const/high16 v1, 0x425c0000    # 55.0f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/f;Lcom/CatShockEntertainment/LiveWallpaperLib/i;ZF)V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, -0x1000000

    const v8, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-super {p0, p1, p2}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    instance-of v0, v1, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/b;->d:Lcom/CatShockEntertainment/PopularLiveWallpaper/a;

    iget-object v0, v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/b;->d:Lcom/CatShockEntertainment/PopularLiveWallpaper/a;

    iget-object v0, v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->d()V

    :cond_0
    const-string v0, "cameras"

    const-string v3, "Camera 1"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Camera 1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setCamera(I)V

    :cond_1
    const-string v0, "Camera 2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v10}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setCamera(I)V

    :cond_2
    const-string v0, "Camera 3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setCamera(I)V

    :cond_3
    const-string v0, "camera_height"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setCameraHeight(F)V

    const-string v0, "camera_velocity"

    invoke-interface {p1, v0, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setCameraVel(F)V

    const-string v0, "touch_sensibility"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setTouchSensibility(F)V

    const-string v0, "animation_speed"

    const v3, 0x3ef2862f

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3ff33333    # 1.9f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setAnimationSpeedFac(F)V

    const-string v0, "background_noise"

    invoke-interface {p1, v0, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setBackgroundNoise(F)V

    const-string v0, "pattern_frequency"

    invoke-interface {p1, v0, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setPatternFrequency(F)V

    const-string v0, "translating_rectangles_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setTranslatingRectanglesFrequency(F)V

    const-string v0, "growing_rectangles_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setGrowingRectangleFrequency(F)V

    const-string v0, "shrinking_rectangles_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setShrinkingRectangleFrequency(F)V

    const-string v0, "route_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setRouteFrequency(F)V

    const-string v0, "raile_route_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setRailrouteFrequency(F)V

    sget-boolean v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->f:Z

    if-nez v0, :cond_9

    const-string v0, "flying_rectangles_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setFlyingRectanglesFrequency(F)V

    const-string v0, "star_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setStarFrequency(F)V

    const-string v0, "growing_android_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setGrowingAndroidFrequency(F)V

    const-string v0, "growing_heart_frequency"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setGrowingHeartFrequency(F)V

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v9}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setGridBackgroundColor(I)V

    :goto_0
    const-string v0, "decay"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setDecay(F)V

    const-string v0, "attenuation"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setAttenuation(F)V

    const-string v0, "visualization_style"

    const-string v3, "Waveform"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRenderMode(I)V

    :cond_4
    const-string v0, "Waveform"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v10}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRenderMode(I)V

    :cond_5
    const-string v0, "Spectrum"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRenderMode(I)V

    :cond_6
    const-string v0, "Equalizer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRenderMode(I)V

    :cond_7
    const-string v0, "panel_size"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRendererSize(F)V

    const-string v0, "amplitude"

    invoke-interface {p1, v0, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRendererAmplitudeFac(F)V

    const-string v0, "color_1"

    const/4 v3, -0x1

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRendererColor1(I)V

    const-string v0, "color_2"

    invoke-interface {p1, v0, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRendererColor2(I)V

    const-string v0, "opacity"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setWaveFormRendererOpacity(F)V

    const-string v0, "excitement_by_music"

    invoke-interface {p1, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setExcitementbyMusic(Z)V

    const-string v0, "excitement_background_noise"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v3}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setNoiseExcitement(F)V

    const-string v0, "excitement_pattern"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    check-cast v1, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v1, v0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setPatternExcitement(F)V

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/b;->d:Lcom/CatShockEntertainment/PopularLiveWallpaper/a;

    iget-object v0, v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->c()V

    :cond_8
    return-void

    :cond_9
    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v7}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setFlyingRectanglesFrequency(F)V

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v7}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setStarFrequency(F)V

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v7}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setGrowingAndroidFrequency(F)V

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v7}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setGrowingHeartFrequency(F)V

    move-object v0, v1

    check-cast v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-virtual {v0, v9}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;->setGridBackgroundColor(I)V

    goto/16 :goto_0
.end method
