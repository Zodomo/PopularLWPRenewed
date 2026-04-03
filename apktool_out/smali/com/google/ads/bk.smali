.class final Lcom/google/ads/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/bj;


# direct methods
.method constructor <init>(Lcom/google/ads/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/bk;->a:Lcom/google/ads/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/bk;->a:Lcom/google/ads/bj;

    invoke-virtual {v0}, Lcom/google/ads/bj;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/bk;->a:Lcom/google/ads/bj;

    iget-object v0, v0, Lcom/google/ads/bj;->b:Lcom/google/ads/c/b;

    invoke-static {v0}, Lcom/google/ads/e/g;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bk;->a:Lcom/google/ads/bj;

    iget-object v0, v0, Lcom/google/ads/bj;->b:Lcom/google/ads/c/b;

    invoke-interface {v0}, Lcom/google/ads/c/b;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called destroy() for adapter with class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/bk;->a:Lcom/google/ads/bj;

    iget-object v1, v1, Lcom/google/ads/bj;->b:Lcom/google/ads/c/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while destroying adapter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/bk;->a:Lcom/google/ads/bj;

    invoke-virtual {v1}, Lcom/google/ads/bj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->d()V

    goto :goto_0
.end method
