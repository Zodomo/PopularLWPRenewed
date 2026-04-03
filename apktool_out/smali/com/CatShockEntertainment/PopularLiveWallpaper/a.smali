.class public Lcom/CatShockEntertainment/PopularLiveWallpaper/a;
.super Lcom/CatShockEntertainment/LiveWallpaperLib/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->onCreate()V

    const-string v0, "Popular Live Wallpaper"

    sput-object v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->a:Ljava/lang/String;

    const-string v0, "PopularLWPSettings"

    sput-object v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->b:Ljava/lang/String;

    sget v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/d;->get_full_version_android_market_url:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->c:Ljava/lang/String;

    sget v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/d;->trial_version_descryption:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->d:Ljava/lang/String;

    sget v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/e;->settings:I

    sput v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->e:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->f:Z

    const-string v0, "ca-app-pub-1633067632258161/7682537936"

    sput-object v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    iget-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->onVisibilityChanged(Z)V

    :cond_0
    new-instance v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;

    invoke-direct {v0, p0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/PopularRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->h:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    new-instance v0, Lcom/CatShockEntertainment/PopularLiveWallpaper/b;

    iget-object v1, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->h:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    invoke-direct {v0, p0, v1}, Lcom/CatShockEntertainment/PopularLiveWallpaper/b;-><init>(Lcom/CatShockEntertainment/PopularLiveWallpaper/a;Lcom/CatShockEntertainment/LiveWallpaperLib/i;)V

    iput-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    iget-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;->a()V

    iget-object v0, p0, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    return-object v0
.end method
