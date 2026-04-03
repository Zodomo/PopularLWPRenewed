.class final Lcom/CatShockEntertainment/LiveWallpaperLib/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/CatShockEntertainment/ColorPicker/b;


# instance fields
.field final synthetic a:Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/e;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 2

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/e;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->a(I)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/e;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;

    invoke-static {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->a(Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/e;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/e;->a:Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;

    invoke-static {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b(Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->a(Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;Ljava/lang/Object;)Z

    return-void
.end method
