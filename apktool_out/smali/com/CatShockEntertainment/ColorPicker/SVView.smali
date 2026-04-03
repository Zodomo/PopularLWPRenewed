.class public Lcom/CatShockEntertainment/ColorPicker/SVView;
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

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->a:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->a:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->a:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->c:Z

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->c:Z

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/SVView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public final a([FZ)V
    .locals 1

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->a:[F

    invoke-direct {p0, p2}, Lcom/CatShockEntertainment/ColorPicker/SVView;->a(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->a:[F

    invoke-static {v1}, Lcom/CatShockEntertainment/ColorPicker/c;->a([F)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/CatShockEntertainment/ColorPicker/SVView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v1}, Lcom/CatShockEntertainment/ColorPicker/SVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->c:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->a:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    const/high16 v0, -0x1000000

    :cond_1
    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->a:[F

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x1

    aget v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aget v1, v1, v5

    sub-float v1, v4, v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/SVView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/SVView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->b:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, v1, -0x5

    add-int/lit8 v4, v2, -0x5

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/SVView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/SVView;->a(Z)V

    return-void
.end method
