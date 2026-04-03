.class final Lcom/CatShockEntertainment/LiveWallpaperLib/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/content/SharedPreferences$Editor;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/b;->b:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/b;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/b;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontshowagain"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
