.class public Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field protected a:F

.field protected b:F

.field protected c:Landroid/content/Context;

.field d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->b:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->c:Landroid/content/Context;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->b:F

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    return-void
.end method

.method static synthetic a(Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic a(Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iput p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->persistFloat(F)Z

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->b:F

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->getPersistedFloat(F)F

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    if-nez v0, :cond_1

    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->c:Landroid/content/Context;

    new-instance v2, Lcom/CatShockEntertainment/LiveWallpaperLib/ag;

    invoke-direct {v2, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ag;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;)V

    iget v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    invoke-direct {v0, v1, v2, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;-><init>(Landroid/content/Context;Lcom/CatShockEntertainment/LiveWallpaperLib/af;F)V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    :goto_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->d:Lcom/CatShockEntertainment/LiveWallpaperLib/ae;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ae;->a(F)V

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->b:F

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->getPersistedFloat(F)F

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    :goto_1
    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->b:F

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/SliderPreference;->a:F

    goto :goto_1
.end method
