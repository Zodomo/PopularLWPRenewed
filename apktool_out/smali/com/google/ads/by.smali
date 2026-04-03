.class public final Lcom/google/ads/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/bt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/b/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2

    instance-of v0, p3, Lcom/google/ads/b/e;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/ads/b/e;

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/ads/b/e;->setCustomClose(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/ads/e/i;->c()V

    goto :goto_0
.end method
