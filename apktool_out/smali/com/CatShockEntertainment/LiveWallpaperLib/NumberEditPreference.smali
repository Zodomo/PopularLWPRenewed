.class public Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v3, 0x3c

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->d:I

    iput v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->e:I

    iput v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->a:Landroid/content/Context;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->d:I

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    iput v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->e:I

    iput v2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->f:I

    return-void
.end method

.method static synthetic a(Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic a(Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;)I
    .locals 1

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->persistInt(I)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->g:Ljava/lang/String;

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->e:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->f:I

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->d:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    if-nez v0, :cond_1

    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->a:Landroid/content/Context;

    new-instance v2, Lcom/CatShockEntertainment/LiveWallpaperLib/y;

    invoke-direct {v2, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/y;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;)V

    iget v3, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    iget v4, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->f:I

    iget v5, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->e:I

    invoke-direct/range {v0 .. v5}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;-><init>(Landroid/content/Context;Lcom/CatShockEntertainment/LiveWallpaperLib/x;III)V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    :goto_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b:Lcom/CatShockEntertainment/LiveWallpaperLib/w;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/w;->a(I)V

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->d:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    :goto_1
    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->a(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->d:I

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c:I

    goto :goto_1
.end method
