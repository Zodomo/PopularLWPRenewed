.class public Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularLiveWallpaperSettings;
.super Lcom/CatShockEntertainment/LiveWallpaperLib/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v0, "cameras"

    const-string v1, "Camera 1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "camera_velocity"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularLiveWallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "camera_velocity"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularLiveWallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
