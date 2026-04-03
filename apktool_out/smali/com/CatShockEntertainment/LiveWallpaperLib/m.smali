.class public final Lcom/CatShockEntertainment/LiveWallpaperLib/m;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->e:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->requestWindowFeature(I)Z

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ac;->trial_setting_replacement_dialog_layout:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->setContentView(I)V

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->get_full_version_button_id:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->a:Landroid/widget/Button;

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->visit_us_button_id:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->b:Landroid/widget/Button;

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->continue_button_id:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->textView1:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.live-wallpaper.org"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->dismiss()V

    :cond_2
    return-void
.end method
