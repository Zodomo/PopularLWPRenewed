.class public final Lcom/google/ads/bx;
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
    .locals 1

    instance-of v0, p3, Lcom/google/ads/b/e;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/ads/b/e;

    invoke-virtual {p3}, Lcom/google/ads/b/e;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/ads/e/i;->c()V

    goto :goto_0
.end method
