.class final Lcom/google/ads/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/az;

.field final synthetic b:Lcom/google/ads/bc;


# direct methods
.method constructor <init>(Lcom/google/ads/bc;Lcom/google/ads/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/be;->b:Lcom/google/ads/bc;

    iput-object p2, p0, Lcom/google/ads/be;->a:Lcom/google/ads/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/be;->b:Lcom/google/ads/bc;

    iget-object v0, v0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    iget-object v1, p0, Lcom/google/ads/be;->a:Lcom/google/ads/az;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->b(Lcom/google/ads/az;)V

    return-void
.end method
