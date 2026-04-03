.class public final Lcom/CatShockEntertainment/LiveWallpaperLib/ae;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/SeekBar;

.field d:F

.field private e:Lcom/CatShockEntertainment/LiveWallpaperLib/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/CatShockEntertainment/LiveWallpaperLib/af;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->e:Lcom/CatShockEntertainment/LiveWallpaperLib/af;

    iput p3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->d:F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iput p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->d:F

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->button_ok:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->e:Lcom/CatShockEntertainment/LiveWallpaperLib/af;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/af;->a(F)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->button_cancel:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->dismiss()V

    :cond_1
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ac;->slider_dialog_layout:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->setContentView(I)V

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->button_ok:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->a:Landroid/widget/Button;

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->button_cancel:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->b:Landroid/widget/Button;

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->seekBar_slider:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->c:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->c:Landroid/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->d:F

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->a(F)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->d:F

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
