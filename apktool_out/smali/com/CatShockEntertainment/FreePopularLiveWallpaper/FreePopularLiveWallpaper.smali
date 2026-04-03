.class public Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;
.super Lcom/CatShockEntertainment/PopularLiveWallpaper/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/CatShockEntertainment/PopularLiveWallpaper/a;->onCreate()V

    const-string v0, "Free Popular Live Wallpaper"

    sput-object v0, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->a:Ljava/lang/String;

    const-string v0, "Free PopularLWPSettings"

    sput-object v0, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->b:Ljava/lang/String;

    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->c:Ljava/lang/String;

    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->d:Ljava/lang/String;

    const v0, 0x7f040003

    sput v0, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->e:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->f:Z

    const-string v0, "ca-app-pub-1633067632258161/9159271131"

    sput-object v0, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/CatShockEntertainment/FreePopularLiveWallpaper/FreePopularLiveWallpaper;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
