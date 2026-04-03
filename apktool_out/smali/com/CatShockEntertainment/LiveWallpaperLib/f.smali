.class public Lcom/CatShockEntertainment/LiveWallpaperLib/f;
.super Landroid/service/wallpaper/WallpaperService;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static f:Z

.field public static g:Ljava/lang/String;


# instance fields
.field public h:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

.field public i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GLWallpaperService"

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->a:Ljava/lang/String;

    const-string v0, "GLWallpaperServiceSettings"

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    invoke-static {}, Lcom/CatShockEntertainment/LiveWallpaperLib/k;->a()Lcom/CatShockEntertainment/LiveWallpaperLib/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/k;->a(Lcom/CatShockEntertainment/LiveWallpaperLib/f;)V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 4

    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->h:Lcom/CatShockEntertainment/LiveWallpaperLib/i;

    const/4 v2, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/g;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/f;Lcom/CatShockEntertainment/LiveWallpaperLib/i;ZF)V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/g;

    return-object v0
.end method
