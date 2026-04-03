.class public final Lcom/google/ads/bp;
.super Lcom/google/ads/e/ab;


# instance fields
.field public final a:Lcom/google/ads/e/ad;

.field public final b:Lcom/google/ads/e/ae;

.field public final c:Lcom/google/ads/e/ae;


# direct methods
.method public constructor <init>(Lcom/google/ads/bs;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/e/ab;-><init>()V

    new-instance v0, Lcom/google/ads/e/ae;

    const-string v1, "disableNativeScroll"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bp;->c:Lcom/google/ads/e/ae;

    new-instance v0, Lcom/google/ads/e/ad;

    const-string v1, "slotState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    new-instance v0, Lcom/google/ads/e/ae;

    const-string v1, "adLoader"

    new-instance v2, Lcom/google/ads/b/n;

    invoke-direct {v2, p0}, Lcom/google/ads/b/n;-><init>(Lcom/google/ads/bp;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    return-void
.end method
