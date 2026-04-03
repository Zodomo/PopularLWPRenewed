.class public Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/CatShockEntertainment/ColorPicker/a;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/16 v2, 0x7f

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b:Lcom/CatShockEntertainment/ColorPicker/a;

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->a:Landroid/content/Context;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->d:I

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    return-void
.end method

.method static synthetic a(Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic a(Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->persistInt(I)Z

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->d:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b:Lcom/CatShockEntertainment/ColorPicker/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b:Lcom/CatShockEntertainment/ColorPicker/a;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/ColorPicker/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b:Lcom/CatShockEntertainment/ColorPicker/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/CatShockEntertainment/ColorPicker/a;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->a:Landroid/content/Context;

    new-instance v2, Lcom/CatShockEntertainment/LiveWallpaperLib/e;

    invoke-direct {v2, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/e;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;)V

    iget v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/CatShockEntertainment/ColorPicker/a;-><init>(Landroid/content/Context;Lcom/CatShockEntertainment/ColorPicker/b;I)V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b:Lcom/CatShockEntertainment/ColorPicker/a;

    :goto_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b:Lcom/CatShockEntertainment/ColorPicker/a;

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b:Lcom/CatShockEntertainment/ColorPicker/a;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/ColorPicker/a;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->b:Lcom/CatShockEntertainment/ColorPicker/a;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/ColorPicker/a;->a(I)V

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->d:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    :goto_1
    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->a(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->d:I

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/ColorPickerPreference;->c:I

    goto :goto_1
.end method
