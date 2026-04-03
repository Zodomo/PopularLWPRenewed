.class final Lcom/google/ads/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/b/n;


# direct methods
.method constructor <init>(Lcom/google/ads/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/b/o;->a:Lcom/google/ads/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/b/o;->a:Lcom/google/ads/b/n;

    iget-object v0, v0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a;

    iget-object v1, p0, Lcom/google/ads/b/o;->a:Lcom/google/ads/b/n;

    iget-object v1, v1, Lcom/google/ads/b/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/a;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
