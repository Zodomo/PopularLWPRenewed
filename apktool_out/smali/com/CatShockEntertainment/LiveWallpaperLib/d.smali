.class final Lcom/CatShockEntertainment/LiveWallpaperLib/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/SharedPreferences$Editor;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/d;->a:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/d;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/d;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/d;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontshowagain"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/d;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/d;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
