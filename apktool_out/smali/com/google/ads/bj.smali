.class public final Lcom/google/ads/bj;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/ads/b/ac;

.field b:Lcom/google/ads/c/b;

.field private final c:Lcom/google/ads/bg;

.field private d:Z

.field private e:Z

.field private f:Lcom/google/ads/bi;

.field private final g:Lcom/google/ads/bc;

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/ads/d;

.field private final m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/ads/bc;Lcom/google/ads/b/ac;Lcom/google/ads/bg;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/e/g;->a(Z)V

    iput-object p1, p0, Lcom/google/ads/bj;->g:Lcom/google/ads/bc;

    iput-object p2, p0, Lcom/google/ads/bj;->a:Lcom/google/ads/b/ac;

    iput-object p3, p0, Lcom/google/ads/bj;->c:Lcom/google/ads/bg;

    iput-object p4, p0, Lcom/google/ads/bj;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/ads/bj;->l:Lcom/google/ads/d;

    iput-object p6, p0, Lcom/google/ads/bj;->m:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/ads/bj;->d:Z

    iput-boolean v1, p0, Lcom/google/ads/bj;->e:Z

    iput-object v2, p0, Lcom/google/ads/bj;->f:Lcom/google/ads/bi;

    iput-object v2, p0, Lcom/google/ads/bj;->b:Lcom/google/ads/c/b;

    iput-boolean v1, p0, Lcom/google/ads/bj;->h:Z

    iput-boolean v1, p0, Lcom/google/ads/bj;->i:Z

    iput-object v2, p0, Lcom/google/ads/bj;->j:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bj;->h:Z

    const-string v1, "destroy() called but startLoadAdTask has not been called."

    invoke-static {v0, v1}, Lcom/google/ads/e/g;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/bk;

    invoke-direct {v1, p0}, Lcom/google/ads/bk;-><init>(Lcom/google/ads/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/app/Activity;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/ads/bj;->h:Z

    const-string v2, "startLoadAdTask has already been called."

    invoke-static {v1, v2}, Lcom/google/ads/e/g;->b(ZLjava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/bj;->h:Z

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Handler;

    move-object v7, v0

    new-instance v1, Lcom/google/ads/bl;

    iget-object v4, p0, Lcom/google/ads/bj;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/bj;->l:Lcom/google/ads/d;

    iget-object v6, p0, Lcom/google/ads/bj;->m:Ljava/util/HashMap;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/bl;-><init>(Lcom/google/ads/bj;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized a(Lcom/google/ads/bi;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/bj;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/bj;->d:Z

    iput-object p1, p0, Lcom/google/ads/bj;->f:Lcom/google/ads/bi;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/ads/c/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/bj;->b:Lcom/google/ads/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bj;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bj;->d:Z

    const-string v1, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/e/g;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/bj;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/google/ads/bi;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bj;->f:Lcom/google/ads/bi;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/bi;->d:Lcom/google/ads/bi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/bj;->f:Lcom/google/ads/bi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Landroid/view/View;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bj;->d:Z

    const-string v1, "getAdView() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/e/g;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/bj;->j:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bj;->b:Lcom/google/ads/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/bj;->b:Lcom/google/ads/c/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "\"adapter was not created.\""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/bj;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bj;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
