.class public final Lcom/CatShockEntertainment/LiveWallpaperLib/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/CatShockEntertainment/LiveWallpaperLib/k;


# instance fields
.field private b:Lcom/CatShockEntertainment/LiveWallpaperLib/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/k;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/k;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/f;

    return-void
.end method

.method public static a()Lcom/CatShockEntertainment/LiveWallpaperLib/k;
    .locals 1

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/k;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/k;

    invoke-direct {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/k;-><init>()V

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/k;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/k;

    :cond_0
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/k;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/k;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/CatShockEntertainment/LiveWallpaperLib/f;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/k;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/f;

    return-void
.end method
