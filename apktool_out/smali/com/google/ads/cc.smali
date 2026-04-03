.class public final Lcom/google/ads/cc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/bt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    goto :goto_0
.end method

.method private static b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    goto :goto_0
.end method

.method private static c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/b/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v5

    iget-object v0, v5, Lcom/google/ads/bs;->d:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bq;

    iget-object v0, v0, Lcom/google/ads/bq;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/br;

    const-string v1, "as_domains"

    iget-object v2, v0, Lcom/google/ads/br;->a:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "bad_ad_report_path"

    iget-object v2, v0, Lcom/google/ads/br;->h:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "min_hwa_banner"

    iget-object v2, v0, Lcom/google/ads/br;->b:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "min_hwa_activation_overlay"

    iget-object v2, v0, Lcom/google/ads/br;->c:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "min_hwa_overlay"

    iget-object v2, v0, Lcom/google/ads/br;->d:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "mraid_banner_path"

    iget-object v2, v0, Lcom/google/ads/br;->e:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "mraid_expanded_banner_path"

    iget-object v2, v0, Lcom/google/ads/br;->f:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "mraid_interstitial_path"

    iget-object v2, v0, Lcom/google/ads/br;->g:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "ac_max_size"

    iget-object v2, v0, Lcom/google/ads/br;->i:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "ac_padding"

    iget-object v2, v0, Lcom/google/ads/br;->j:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "ac_total_quota"

    iget-object v2, v0, Lcom/google/ads/br;->k:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "db_total_quota"

    iget-object v2, v0, Lcom/google/ads/br;->l:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "db_quota_per_origin"

    iget-object v2, v0, Lcom/google/ads/br;->m:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    const-string v1, "db_quota_step_size"

    iget-object v2, v0, Lcom/google/ads/br;->n:Lcom/google/ads/e/ae;

    invoke-static {p2, v1, v2}, Lcom/google/ads/cc;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/e/ae;)V

    invoke-virtual {p1}, Lcom/google/ads/b/w;->k()Lcom/google/ads/b/e;

    move-result-object v2

    sget v1, Lcom/google/ads/e/a;->a:I

    const/16 v6, 0xb

    if-lt v1, v6, :cond_0

    invoke-virtual {v2}, Lcom/google/ads/b/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/google/ads/e/r;->a(Landroid/webkit/WebSettings;Lcom/google/ads/bs;)V

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/google/ads/e/r;->a(Landroid/webkit/WebSettings;Lcom/google/ads/bs;)V

    :cond_0
    iget-object v1, v5, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/b/ac;

    invoke-virtual {v1}, Lcom/google/ads/b/ac;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/google/ads/b/e;->j()Z

    move-result v6

    sget v7, Lcom/google/ads/e/a;->a:I

    iget-object v1, v0, Lcom/google/ads/br;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v7, v1, :cond_4

    move v1, v3

    :goto_0
    if-nez v1, :cond_5

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-virtual {v2}, Lcom/google/ads/b/e;->g()V

    :cond_1
    :goto_1
    iget-object v1, v5, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/b/a;

    iget-object v2, v5, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/ac;

    invoke-virtual {v2}, Lcom/google/ads/b/ac;->b()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/ads/b/a;->j()Z

    move-result v6

    sget v7, Lcom/google/ads/e/a;->a:I

    iget-object v2, v0, Lcom/google/ads/br;->c:Lcom/google/ads/e/ae;

    invoke-virtual {v2}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v7, v2, :cond_6

    move v2, v3

    :goto_2
    if-nez v2, :cond_7

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-virtual {v1}, Lcom/google/ads/b/a;->g()V

    :cond_2
    :goto_3
    iget-object v1, v0, Lcom/google/ads/br;->a:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v5, Lcom/google/ads/bs;->s:Lcom/google/ads/e/ae;

    invoke-virtual {v2}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/ak;

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/ads/ak;->a:[Ljava/lang/String;

    :cond_3
    iget-object v0, v0, Lcom/google/ads/br;->o:Lcom/google/ads/e/ae;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    move v1, v4

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_1

    if-nez v6, :cond_1

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-virtual {v2}, Lcom/google/ads/b/e;->f()V

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_2

    if-nez v6, :cond_2

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-virtual {v1}, Lcom/google/ads/b/a;->f()V

    goto :goto_3
.end method
