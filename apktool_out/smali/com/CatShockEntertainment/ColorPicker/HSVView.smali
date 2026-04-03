.class public Lcom/CatShockEntertainment/ColorPicker/HSVView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:[F

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->b:F

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getPreviewView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0xff

    iget-object v2, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 2

    const/16 v0, 0xff

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getHSV()[F
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method getHSectorView()Lcom/CatShockEntertainment/ColorPicker/HSectorView;
    .locals 1

    sget v0, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_HSector:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/ColorPicker/HSectorView;

    return-object v0
.end method

.method getHView()Lcom/CatShockEntertainment/ColorPicker/HView;
    .locals 1

    sget v0, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_H:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/ColorPicker/HView;

    return-object v0
.end method

.method getPreviewView()Landroid/widget/ImageView;
    .locals 1

    sget v0, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_Preview:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method getSVView()Lcom/CatShockEntertainment/ColorPicker/SVView;
    .locals 1

    sget v0, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_SV:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/ColorPicker/SVView;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->b:F

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getSVView()Lcom/CatShockEntertainment/ColorPicker/SVView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/c;->a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHView()Lcom/CatShockEntertainment/ColorPicker/HView;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/CatShockEntertainment/ColorPicker/c;->a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHSectorView()Lcom/CatShockEntertainment/ColorPicker/HSectorView;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/CatShockEntertainment/ColorPicker/c;->a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v0, v5, v6, v2, v2}, Lcom/CatShockEntertainment/ColorPicker/c;->a(Landroid/graphics/Rect;FFFF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    iget-object v2, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    aput v1, v2, v4

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getSVView()Lcom/CatShockEntertainment/ColorPicker/SVView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1, v9}, Lcom/CatShockEntertainment/ColorPicker/SVView;->a([FZ)V

    invoke-direct {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a()V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHView()Lcom/CatShockEntertainment/ColorPicker/HView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/CatShockEntertainment/ColorPicker/HView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    move v3, v2

    :goto_1
    invoke-static {v7, v5, v6, v3, v0}, Lcom/CatShockEntertainment/ColorPicker/c;->a(Landroid/graphics/Rect;FFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHView()Lcom/CatShockEntertainment/ColorPicker/HView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/CatShockEntertainment/ColorPicker/HView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_2
    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getSVView()Lcom/CatShockEntertainment/ColorPicker/SVView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1, v4}, Lcom/CatShockEntertainment/ColorPicker/SVView;->a([FZ)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHSectorView()Lcom/CatShockEntertainment/ColorPicker/HSectorView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->setHFromHSV$49655cd4([F)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHView()Lcom/CatShockEntertainment/ColorPicker/HView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/HView;->setHFromHSV([F)V

    invoke-direct {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a()V

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    move v3, v1

    goto :goto_1

    :cond_2
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHSectorView()Lcom/CatShockEntertainment/ColorPicker/HSectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    invoke-static {v8, v5, v6, v2, v1}, Lcom/CatShockEntertainment/ColorPicker/c;->a(Landroid/graphics/Rect;FFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHSectorView()Lcom/CatShockEntertainment/ColorPicker/HSectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->getOrientation()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_4
    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHSectorView()Lcom/CatShockEntertainment/ColorPicker/HSectorView;

    iget-object v3, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-static {v3}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->a([F)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3f7efeff

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v3

    mul-float/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getSVView()Lcom/CatShockEntertainment/ColorPicker/SVView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1, v4}, Lcom/CatShockEntertainment/ColorPicker/SVView;->a([FZ)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHView()Lcom/CatShockEntertainment/ColorPicker/HView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/HView;->setHFromHSV([F)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHSectorView()Lcom/CatShockEntertainment/ColorPicker/HSectorView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->setHFromHSV$49655cd4([F)V

    invoke-direct {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a()V

    move v0, v4

    goto/16 :goto_0

    :cond_4
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_3

    :cond_5
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_4

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public setHSVFromColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getSVView()Lcom/CatShockEntertainment/ColorPicker/SVView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/CatShockEntertainment/ColorPicker/SVView;->a([FZ)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHView()Lcom/CatShockEntertainment/ColorPicker/HView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/HView;->setHFromHSV([F)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getHSectorView()Lcom/CatShockEntertainment/ColorPicker/HSectorView;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a:[F

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/HSectorView;->setHFromHSV$49655cd4([F)V

    invoke-direct {p0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->a()V

    return-void
.end method
