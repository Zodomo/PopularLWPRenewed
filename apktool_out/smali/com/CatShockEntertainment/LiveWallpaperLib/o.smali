.class public Lcom/CatShockEntertainment/LiveWallpaperLib/o;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final c:[B


# instance fields
.field a:Z

.field private b:Lcom/google/ads/h;

.field private d:Lcom/android/vending/licensing/l;

.field private e:Lcom/android/vending/licensing/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->c:[B

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x4t
        0x59t
        -0xbt
        -0x43t
        -0x35t
        0x63t
        -0x4dt
        0xdt
        0x7ft
        -0x6et
        -0x15t
        -0x1bt
        -0x29t
        -0x8t
        0x70t
        0x4t
        -0x41t
        0x5bt
        0x1ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->e:Lcom/android/vending/licensing/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->a:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ac;->preference_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->setContentView(I)V

    sget-boolean v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/ads/h;

    sget-object v1, Lcom/google/ads/g;->a:Lcom/google/ads/g;

    sget-object v2, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->g:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/h;-><init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->b:Lcom/google/ads/h;

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/ab;->preference_ad:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->b:Lcom/google/ads/h;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/google/ads/d;

    invoke-direct {v0}, Lcom/google/ads/d;-><init>()V

    sget-object v1, Lcom/google/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/d;->a(Ljava/lang/String;)Lcom/google/ads/d;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->b:Lcom/google/ads/h;

    invoke-virtual {v1, v0}, Lcom/google/ads/h;->a(Lcom/google/ads/d;)V

    :cond_0
    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    sget-object v1, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    sget v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->e:I

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->f:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/CatShockEntertainment/LiveWallpaperLib/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/CatShockEntertainment/LiveWallpaperLib/v;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;B)V

    iput-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->d:Lcom/android/vending/licensing/l;

    new-instance v1, Lcom/android/vending/licensing/h;

    new-instance v2, Lcom/android/vending/licensing/u;

    new-instance v3, Lcom/android/vending/licensing/a;

    sget-object v4, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->c:[B

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/vending/licensing/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/android/vending/licensing/u;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/p;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgL6Wt3AKdHz9w3v4CpicWRtwRfG87PBL/FNUgWmSpbE5SVIPDkZd4TPOLduGN7Qnr+JHOQTEw4HxWtl8xmUU3HrTxukQD/SyjH9aqmEBCMQTnQumftRiyCmQ2hrxqIDfoiNMD2ToIfP2D2YzA/fL2JWu3KNp1Qoy5eH98bIbf5EanczqccSgoj4zyV9wtJ7I306Ez0TSDuNNsz1pUZueENlYgbYkDpgInqGWxP7IzJqwpuWa7503xkfbQCKhW771A2TyaQpZXbQjQdQVbPgbkw3X3lzLHe+OVlIcb2ffgXLJYa1KLIBJlaOAGjXiHMOgtOmxkzTCij+wl/7V5NROcQIDAQAB"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/vending/licensing/h;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/q;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->e:Lcom/android/vending/licensing/h;

    sget-boolean v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->e:Lcom/android/vending/licensing/h;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->e:Lcom/android/vending/licensing/h;

    iget-object v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->d:Lcom/android/vending/licensing/l;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/h;->a(Lcom/android/vending/licensing/l;)V

    :cond_1
    sget-boolean v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->f:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/CatShockEntertainment/LiveWallpaperLib/m;

    invoke-direct {v0, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/m;->show()V

    :cond_2
    const-string v0, "hs_es_time_to_reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b(I)V

    const-string v0, "hs_es_time_to_reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c(I)V

    const-string v0, "hs_es_time_to_reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;

    const-string v1, "Seconds"

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->a(Ljava/lang/String;)V

    const-string v0, "reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;

    invoke-virtual {v0, v6}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->c(I)V

    const-string v0, "reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->b(I)V

    const-string v0, "reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;

    const-string v1, "FPS"

    invoke-virtual {v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/NumberEditPreference;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/CatShockEntertainment/LiveWallpaperLib/p;

    invoke-direct {v1, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/p;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ad;->unlicensed_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ad;->unlicensed_dialog_body:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ad;->buy_button:I

    new-instance v2, Lcom/CatShockEntertainment/LiveWallpaperLib/q;

    invoke-direct {v2, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/q;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ad;->quit_button:I

    new-instance v2, Lcom/CatShockEntertainment/LiveWallpaperLib/r;

    invoke-direct {v2, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/r;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/CatShockEntertainment/LiveWallpaperLib/s;

    invoke-direct {v1, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/s;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Home Screen ES"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "You have enabled the home screen energy saving feature which is intended for people tending to let their android idling on its home screen. It lets you minimize the battery impact by reducing the framerate after a defined time of idling. Touching or other events of activity will cause recovering of the full framerate."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/CatShockEntertainment/LiveWallpaperLib/t;

    invoke-direct {v2, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/t;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Never mind"

    new-instance v2, Lcom/CatShockEntertainment/LiveWallpaperLib/u;

    invoke-direct {v2, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/u;-><init>(Lcom/CatShockEntertainment/LiveWallpaperLib/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    sget-boolean v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->b:Lcom/google/ads/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->b:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    sget-boolean v0, Lcom/CatShockEntertainment/LiveWallpaperLib/f;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->e:Lcom/android/vending/licensing/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->e:Lcom/android/vending/licensing/h;

    invoke-virtual {v0}, Lcom/android/vending/licensing/h;->a()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "hs_energy_saving"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hs_es_time_to_reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const-string v0, "hs_energy_saving"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;

    invoke-direct {v1, p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;-><init>(Landroid/content/Context;)V

    const-string v0, "bnevermind_es"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/ah;->a()V

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->a:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "hs_es_time_to_reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "reduced_fps"

    invoke-virtual {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
