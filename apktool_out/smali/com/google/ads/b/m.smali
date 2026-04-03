.class public final Lcom/google/ads/b/m;
.super Ljava/lang/Exception;


# instance fields
.field public final a:Z


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/ads/b/m;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-static {}, Lcom/google/ads/e/i;->b()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/b/m;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/b/m;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
