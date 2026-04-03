.class public final Lcom/CatShockEntertainment/ColorPicker/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:I

.field private d:Lcom/CatShockEntertainment/ColorPicker/HSVView;

.field private e:Lcom/CatShockEntertainment/ColorPicker/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/CatShockEntertainment/ColorPicker/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/CatShockEntertainment/ColorPicker/a;->c:I

    iput-object p2, p0, Lcom/CatShockEntertainment/ColorPicker/a;->e:Lcom/CatShockEntertainment/ColorPicker/b;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/CatShockEntertainment/ColorPicker/a;->c:I

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->d:Lcom/CatShockEntertainment/ColorPicker/HSVView;

    invoke-virtual {v0, p1}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->setHSVFromColor(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_OkButton:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->d:Lcom/CatShockEntertainment/ColorPicker/HSVView;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getColor()I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->c:I

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->e:Lcom/CatShockEntertainment/ColorPicker/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->e:Lcom/CatShockEntertainment/ColorPicker/b;

    iget v1, p0, Lcom/CatShockEntertainment/ColorPicker/a;->c:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/CatShockEntertainment/ColorPicker/a;->c:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/CatShockEntertainment/ColorPicker/a;->c:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/CatShockEntertainment/ColorPicker/b;->a(III)V

    :cond_0
    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/a;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_CancelButton:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->d:Lcom/CatShockEntertainment/ColorPicker/HSVView;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->getColor()I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->c:I

    invoke-virtual {p0}, Lcom/CatShockEntertainment/ColorPicker/a;->dismiss()V

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/CatShockEntertainment/ColorPicker/f;->color_picker_hsv_dialog:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/a;->setContentView(I)V

    sget v0, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_OkButton:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->a:Landroid/widget/Button;

    sget v0, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_CancelButton:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->b:Landroid/widget/Button;

    sget v0, Lcom/CatShockEntertainment/ColorPicker/e;->colorPickerHSV_linearLayout:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/ColorPicker/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/ColorPicker/HSVView;

    iput-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->d:Lcom/CatShockEntertainment/ColorPicker/HSVView;

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->d:Lcom/CatShockEntertainment/ColorPicker/HSVView;

    iget v1, p0, Lcom/CatShockEntertainment/ColorPicker/a;->c:I

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/HSVView;->setHSVFromColor(I)V

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/ColorPicker/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
