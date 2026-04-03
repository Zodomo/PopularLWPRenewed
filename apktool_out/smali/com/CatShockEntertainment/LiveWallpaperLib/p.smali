.class final Lcom/CatShockEntertainment/LiveWallpaperLib/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;


# direct methods
.method constructor <init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/p;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/p;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/o;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->finish()V

    return-void
.end method
