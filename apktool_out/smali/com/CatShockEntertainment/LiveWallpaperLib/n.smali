.class final Lcom/CatShockEntertainment/LiveWallpaperLib/n;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;


# direct methods
.method constructor <init>(Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;)V
    .locals 4

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/n;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;

    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/n;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;

    iget-object v0, v0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onTick(J)V
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/n;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;

    iget-object v0, v0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
