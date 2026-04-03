.class public final Lcom/google/ads/e/r;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public static a(Landroid/webkit/WebSettings;Lcom/google/ads/bs;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Lcom/google/ads/bs;->d:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/bq;

    iget-object v1, v1, Lcom/google/ads/bq;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/br;

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v1, v1, Lcom/google/ads/br;->i:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "admob"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    return-void
.end method
