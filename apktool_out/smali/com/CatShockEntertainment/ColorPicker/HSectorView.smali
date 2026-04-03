.class public Lcom/CatShockEntertainment/ColorPicker/HSectorView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:[F

.field private b:Landroid/graphics/Paint;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->c:Z

    return-void
.end method

.method static a([F)I
    .locals 2

    const/4 v0, 0x0

    aget v0, p0, v0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->c:Z

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 2

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/16 v6, 0x100

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getOrientation()I

    move-result v1

    iget-boolean v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->c:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a:[F

    invoke-static {v0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a([F)I

    move-result v0

    invoke-static {v6, v3, v0, v1}, Lcom/CatShockEntertainment/ColorPicker/c;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v5, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->c:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->b:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->b:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a:[F

    aget v3, v0, v5

    invoke-static {v0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a([F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    div-float/2addr v0, v4

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a:[F

    invoke-static {v0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a([F)I

    move-result v0

    invoke-static {v3, v6, v0, v1}, Lcom/CatShockEntertainment/ColorPicker/c;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->b:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a()V

    return-void
.end method

.method public final setHFromHSV$49655cd4([F)V
    .locals 1

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a:[F

    invoke-direct {p0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a()V

    return-void
.end method
