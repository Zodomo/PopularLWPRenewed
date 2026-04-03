.class final Lcom/CatShockEntertainment/LiveWallpaperLib/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/licensing/l;


# instance fields
.field final synthetic a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;


# direct methods
.method private constructor <init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/v;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/CatShockEntertainment/LiveWallpaperLib/v;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/v;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/v;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-direct {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;-><init>(Landroid/content/Context;)V

    const-string v1, "b"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "boolean"

    invoke-virtual {v0, v1, v2, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "i"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "int"

    invoke-virtual {v0, v1, v2, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 8

    const/4 v7, 0x0

    const/16 v1, 0x1e

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/v;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/v;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-direct {v2, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;-><init>(Landroid/content/Context;)V

    const-string v0, "b"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v0, "i"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const-string v4, "i"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "int"

    invoke-virtual {v2, v4, v5, v6}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a()V

    if-eqz v3, :cond_3

    if-le v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/v;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-virtual {v0, v7}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->showDialog(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/v;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
