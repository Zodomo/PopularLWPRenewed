.class public final Lcom/CatShockEntertainment/ColorPicker/c;
.super Ljava/lang/Object;


# direct methods
.method static a(III)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v8, 0x43b40000    # 360.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p2, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int v1, p0, p1

    new-array v1, v1, [I

    const/4 v3, 0x3

    new-array v5, v3, [F

    aput v4, v5, v6

    aput v4, v5, v7

    move v4, v2

    :goto_0
    if-lt v4, p0, :cond_0

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_1
    return-object v0

    :cond_0
    int-to-float v3, v4

    mul-float/2addr v3, v8

    add-int/lit8 v6, p0, -0x1

    int-to-float v6, v6

    div-float/2addr v3, v6

    aput v3, v5, v2

    const/16 v3, 0xff

    invoke-static {v3, v5}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    move v3, v2

    :goto_2
    if-lt v3, p1, :cond_1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    mul-int v7, v3, p0

    add-int/2addr v7, v4

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int v1, p0, p1

    new-array v1, v1, [I

    const/4 v3, 0x3

    new-array v5, v3, [F

    aput v4, v5, v6

    aput v4, v5, v7

    move v4, v2

    :goto_3
    if-lt v4, p1, :cond_3

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_1

    :cond_3
    int-to-float v3, v4

    mul-float/2addr v3, v8

    add-int/lit8 v6, p1, -0x1

    int-to-float v6, v6

    div-float/2addr v3, v6

    aput v3, v5, v2

    const/16 v3, 0xff

    invoke-static {v3, v5}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    move v3, v2

    :goto_4
    if-lt v3, p0, :cond_4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    :cond_4
    mul-int v7, v4, p0

    add-int/2addr v7, v3

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method static a(IIII)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p3, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int v1, p0, p1

    new-array v1, v1, [I

    const/4 v3, 0x3

    new-array v5, v3, [F

    aput v4, v5, v6

    aput v4, v5, v7

    move v4, v2

    :goto_0
    if-lt v4, p0, :cond_0

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_1
    return-object v0

    :cond_0
    int-to-float v3, p2

    int-to-float v6, v4

    add-int/lit8 v7, p0, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    mul-float/2addr v3, v8

    aput v3, v5, v2

    const/16 v3, 0xff

    invoke-static {v3, v5}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    move v3, v2

    :goto_2
    if-lt v3, p1, :cond_1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    mul-int v7, v3, p0

    add-int/2addr v7, v4

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int v1, p0, p1

    new-array v1, v1, [I

    const/4 v3, 0x3

    new-array v5, v3, [F

    aput v4, v5, v6

    aput v4, v5, v7

    move v4, v2

    :goto_3
    if-lt v4, p1, :cond_3

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_1

    :cond_3
    int-to-float v3, p2

    int-to-float v6, v4

    add-int/lit8 v7, p1, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    mul-float/2addr v3, v8

    aput v3, v5, v2

    const/16 v3, 0xff

    invoke-static {v3, v5}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    move v3, v2

    :goto_4
    if-lt v3, p0, :cond_4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    :cond_4
    mul-int v7, v4, p0

    add-int/2addr v7, v3

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method static a([F)Landroid/graphics/Bitmap;
    .locals 10

    const v9, 0x3c820821

    const/4 v2, 0x0

    const/16 v3, 0x40

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x1000

    new-array v1, v1, [I

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    move v6, v2

    :goto_0
    if-lt v6, v3, :cond_0

    move v4, v2

    move v5, v2

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0

    :cond_0
    const/4 v5, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v8, v6

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v4, v5

    move v5, v2

    :goto_1
    if-lt v5, v3, :cond_1

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    int-to-float v8, v5

    mul-float/2addr v8, v9

    aput v8, v4, v7

    mul-int/lit8 v7, v6, 0x40

    add-int/2addr v7, v5

    const/16 v8, 0xff

    invoke-static {v8, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    aput v8, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method static a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1
.end method

.method static a(Landroid/graphics/Rect;FFFF)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
