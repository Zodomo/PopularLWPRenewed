.class public final Lcom/google/ads/e/p;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation


# direct methods
.method static a(Landroid/content/Context;FI)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int p2, v0

    :cond_0
    return p2
.end method
