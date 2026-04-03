.class public final Lcom/CatShockEntertainment/LiveWallpaperLib/w;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/SeekBar;

.field d:Landroid/widget/EditText;

.field e:I

.field f:I

.field g:I

.field h:Ljava/lang/String;

.field private i:Lcom/CatShockEntertainment/LiveWallpaperLib/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/CatShockEntertainment/LiveWallpaperLib/x;III)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/x;

    iput p3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    iput p4, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    iput p5, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    :cond_0
    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->h:Ljava/lang/String;

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->textView_label:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    iget v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_4
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->button_ok:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->i:Lcom/CatShockEntertainment/LiveWallpaperLib/x;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    invoke-interface {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/x;->a(I)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->button_cancel:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->dismiss()V

    :cond_1
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-ltz v0, :cond_2

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ac;->number_edit_dialog_seekbar_layout:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->setContentView(I)V

    :goto_0
    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->button_ok:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->a:Landroid/widget/Button;

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->button_cancel:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->b:Landroid/widget/Button;

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-ltz v0, :cond_0

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->seekBar:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->c:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    iget v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->editText_number:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->a(I)V

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ac;->number_edit_dialog_layout:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->setContentView(I)V

    goto :goto_0
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->g:I

    if-ltz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->seekBar:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->d:Landroid/widget/EditText;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->e:I

    :cond_1
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

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
