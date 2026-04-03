.class final Lcom/google/ads/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/az;

.field final synthetic b:Lcom/google/ads/d;

.field final synthetic c:Lcom/google/ads/bc;


# direct methods
.method constructor <init>(Lcom/google/ads/bc;Lcom/google/ads/az;Lcom/google/ads/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/bd;->c:Lcom/google/ads/bc;

    iput-object p2, p0, Lcom/google/ads/bd;->a:Lcom/google/ads/az;

    iput-object p3, p0, Lcom/google/ads/bd;->b:Lcom/google/ads/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v10, p0, Lcom/google/ads/bd;->c:Lcom/google/ads/bc;

    iget-object v11, p0, Lcom/google/ads/bd;->a:Lcom/google/ads/az;

    iget-object v12, p0, Lcom/google/ads/bd;->b:Lcom/google/ads/d;

    iget-object v1, v10, Lcom/google/ads/bc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, v10, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    invoke-static {v0, v2}, Lcom/google/ads/e/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Lcom/google/ads/az;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11}, Lcom/google/ads/az;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Lcom/google/ads/az;->b()I

    move-result v1

    int-to-long v8, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/ads/l;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Looking to fetch ads from network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/google/ads/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v14, v2, Lcom/google/ads/l;->c:Ljava/util/List;

    iget-object v7, v2, Lcom/google/ads/l;->e:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/google/ads/l;->d:Ljava/util/List;

    new-instance v0, Lcom/google/ads/bg;

    iget-object v1, v2, Lcom/google/ads/l;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/ads/l;->b:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/google/ads/az;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v11}, Lcom/google/ads/az;->h()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/ads/az;->i()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/bg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v2, v10, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v2}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/bs;->c:Lcom/google/ads/e/af;

    invoke-virtual {v2}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    if-nez v4, :cond_5

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/ads/bd;->c:Lcom/google/ads/bc;

    iget-object v1, v0, Lcom/google/ads/bc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/bd;->c:Lcom/google/ads/bc;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const-wide/16 v8, 0x2710

    goto :goto_0

    :cond_4
    invoke-virtual {v11}, Lcom/google/ads/az;->g()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_5
    iget-object v2, v10, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v2}, Lcom/google/ads/b/w;->m()Lcom/google/ads/b/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/b/ab;->c()V

    move-object v2, v10

    move-object v5, v12

    move-object v6, v0

    invoke-virtual/range {v2 .. v9}, Lcom/google/ads/bc;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/d;Lcom/google/ads/bg;Ljava/util/HashMap;J)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v10}, Lcom/google/ads/bc;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/be;

    invoke-direct {v1, v10, v11}, Lcom/google/ads/be;-><init>(Lcom/google/ads/bc;Lcom/google/ads/az;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
