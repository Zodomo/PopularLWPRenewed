.class final Lcom/CatShockEntertainment/LiveWallpaperLib/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;


# direct methods
.method constructor <init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/u;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/u;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-direct {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;-><init>(Landroid/content/Context;)V

    const-string v1, "bnevermind_es"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "boolean"

    invoke-virtual {v0, v1, v2, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a()V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/u;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    iput-boolean v4, v0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->a:Z

    return-void
.end method
