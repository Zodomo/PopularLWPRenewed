.class public Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/Toast;

.field b:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/CatShockEntertainment/LiveWallpaperLib/ac;->launcher_toast_layout:I

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->launcher_toast_layout_root:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->launcher_toast_layout_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/CatShockEntertainment/LiveWallpaperLib/aa;->toast_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->launcher_toast_layout_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Choose "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/CatShockEntertainment/LiveWallpaperLib/ad;->app_name:I

    invoke-virtual {p0, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in the list to start the Live Wallpaper."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->a:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->a:Landroid/widget/Toast;

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/n;

    invoke-direct {v0, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/n;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;)V

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/n;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->b:Landroid/os/CountDownTimer;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/LiveWallpaperLauncher;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method
