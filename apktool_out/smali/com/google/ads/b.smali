.class public final Lcom/google/ads/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/ads/b/w;Lcom/google/ads/b/x;)V
    .locals 6

    invoke-static {}, Lcom/google/ads/AdActivity;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->g()Lcom/google/ads/b/w;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/b/w;)Lcom/google/ads/b/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    invoke-virtual {p0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bs;->c:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->g()Lcom/google/ads/b/w;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/ads/AdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.ads.AdOpener"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "action"

    iget-object v5, p1, Lcom/google/ads/b/x;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "params"

    iget-object v5, p1, Lcom/google/ads/b/x;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_2
    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/ads/e/i;->d()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/google/ads/AdActivity;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->e()Lcom/google/ads/AdActivity;

    move-result-object v0

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

.method public static b()Z
    .locals 2

    invoke-static {}, Lcom/google/ads/AdActivity;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->f()Lcom/google/ads/AdActivity;

    move-result-object v0

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
