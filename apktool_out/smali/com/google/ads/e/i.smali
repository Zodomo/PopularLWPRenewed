.class public final Lcom/google/ads/e/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/ads/e/k;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/e/i;->a:Lcom/google/ads/e/k;

    const/4 v0, 0x5

    sput v0, Lcom/google/ads/e/i;->b:I

    return-void
.end method

.method public static a()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->b:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Lcom/google/ads/e/i;->b:I

    if-lt p1, v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->b:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method public static c()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->e:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method public static d()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->e:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method public static e()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->c:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method public static f()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->c:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method public static g()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->a:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method public static h()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->d:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method public static i()V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/google/ads/e/j;->d:Lcom/google/ads/e/j;

    invoke-static {}, Lcom/google/ads/e/i;->j()V

    return-void
.end method

.method private static j()V
    .locals 1

    sget-object v0, Lcom/google/ads/e/i;->a:Lcom/google/ads/e/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/e/i;->a:Lcom/google/ads/e/k;

    :cond_0
    return-void
.end method
