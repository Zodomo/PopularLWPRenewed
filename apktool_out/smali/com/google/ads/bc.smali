.class public final Lcom/google/ads/bc;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/ads/b/w;

.field public b:Ljava/lang/Thread;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public final e:Ljava/lang/Object;

.field private f:Lcom/google/ads/bj;

.field private final g:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/bc;->f:Lcom/google/ads/bj;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/bc;->g:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/bc;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/bc;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/bc;->e:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/b/w;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/bc;->f:Lcom/google/ads/bj;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/bc;->g:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/bc;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/bc;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/bc;->e:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/e/g;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    return-void
.end method

.method private b()Z
    .locals 2

    iget-object v1, p0, Lcom/google/ads/bc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/az;Lcom/google/ads/d;)V
    .locals 5

    iget-object v1, p0, Lcom/google/ads/bc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/az;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {p1}, Lcom/google/ads/az;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/ads/b/w;->a(F)V

    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->g()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {p1}, Lcom/google/ads/az;->j()Lcom/google/ads/b/ac;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/bs;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/az;->j()Lcom/google/ads/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/bd;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/ads/bd;-><init>(Lcom/google/ads/bc;Lcom/google/ads/az;Lcom/google/ads/d;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->f()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/az;->j()Lcom/google/ads/b/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/b/ac;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in the ad-type field in the mediation UI."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/az;->j()Lcom/google/ads/b/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    move-result-object v2

    if-eq v2, v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mediation server returned ad size: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', while the AdView was created with ad size: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'. Using the ad-size passed to the AdView on creation."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/ads/bc;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/bc;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Lcom/google/ads/bj;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/ads/bc;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/bc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/bj;->a()V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/d;Lcom/google/ads/bg;Ljava/util/HashMap;J)Z
    .locals 8

    new-instance v0, Lcom/google/ads/bj;

    iget-object v1, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v1}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/ac;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/bj;-><init>(Lcom/google/ads/bc;Lcom/google/ads/b/ac;Lcom/google/ads/bg;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/ads/bj;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/bj;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p6, v2

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, p6, p7}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    sub-long v2, v4, v2

    sub-long/2addr p6, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted while waiting for ad network to load ad using adapter class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    :cond_0
    iget-object v1, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v1}, Lcom/google/ads/b/w;->m()Lcom/google/ads/b/ab;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/ads/bj;->d()Lcom/google/ads/bi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/b/ab;->a(Lcom/google/ads/bi;)V

    invoke-virtual {v0}, Lcom/google/ads/bj;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/bj;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/bc;->a:Lcom/google/ads/b/w;

    invoke-virtual {v1}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/bs;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/bf;

    invoke-direct {v3, p0, v0, v2, p4}, Lcom/google/ads/bf;-><init>(Lcom/google/ads/bc;Lcom/google/ads/bj;Landroid/view/View;Lcom/google/ads/bg;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_2
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/bj;->e()Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/bj;->b()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout occurred in adapter class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/ads/bj;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    :cond_3
    invoke-virtual {v0}, Lcom/google/ads/bj;->a()V

    const/4 v1, 0x0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b(Lcom/google/ads/bj;)V
    .locals 2

    iget-object v1, p0, Lcom/google/ads/bc;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/bc;->f:Lcom/google/ads/bj;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/bc;->f:Lcom/google/ads/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/bc;->f:Lcom/google/ads/bj;

    invoke-virtual {v0}, Lcom/google/ads/bj;->a()V

    :cond_0
    iput-object p1, p0, Lcom/google/ads/bc;->f:Lcom/google/ads/bj;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
