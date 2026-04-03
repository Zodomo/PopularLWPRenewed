.class final Lcom/google/ads/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/bj;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/google/ads/bg;

.field final synthetic d:Lcom/google/ads/bc;


# direct methods
.method constructor <init>(Lcom/google/ads/bc;Lcom/google/ads/bj;Landroid/view/View;Lcom/google/ads/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/bf;->d:Lcom/google/ads/bc;

    iput-object p2, p0, Lcom/google/ads/bf;->a:Lcom/google/ads/bj;

    iput-object p3, p0, Lcom/google/ads/bf;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/google/ads/bf;->c:Lcom/google/ads/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/bf;->d:Lcom/google/ads/bc;

    iget-object v1, p0, Lcom/google/ads/bf;->a:Lcom/google/ads/bj;

    invoke-virtual {v0, v1}, Lcom/google/ads/bc;->a(Lcom/google/ads/bj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/bf;->d:Lcom/google/ads/bc;

    iget-object v0, v0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    iget-object v1, p0, Lcom/google/ads/bf;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/bf;->a:Lcom/google/ads/bj;

    iget-object v3, p0, Lcom/google/ads/bf;->c:Lcom/google/ads/bg;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/b/w;->a(Landroid/view/View;Lcom/google/ads/bj;Lcom/google/ads/bg;)V

    goto :goto_0
.end method
