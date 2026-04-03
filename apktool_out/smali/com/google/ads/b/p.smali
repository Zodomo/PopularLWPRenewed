.class final Lcom/google/ads/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/az;

.field final synthetic b:Lcom/google/ads/b/n;


# direct methods
.method constructor <init>(Lcom/google/ads/b/n;Lcom/google/ads/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iput-object p2, p0, Lcom/google/ads/b/p;->a:Lcom/google/ads/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v0, v0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v0, v0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v0, v0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v0, v0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    iget-object v1, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v1, v1, Lcom/google/ads/b/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v0, v0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v0, v0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    iget-object v1, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v1, v1, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/ac;->b(Lcom/google/ads/g;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/b/p;->b:Lcom/google/ads/b/n;

    iget-object v0, v0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    iget-object v1, p0, Lcom/google/ads/b/p;->a:Lcom/google/ads/az;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(Lcom/google/ads/az;)V

    return-void
.end method
