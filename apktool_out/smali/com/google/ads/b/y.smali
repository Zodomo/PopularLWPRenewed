.class public final Lcom/google/ads/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field volatile a:Z

.field b:Z

.field private final c:Lcom/google/ads/bp;

.field private final d:Lcom/google/ads/b/aa;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/ads/bp;)V
    .locals 1

    new-instance v0, Lcom/google/ads/b/z;

    invoke-direct {v0}, Lcom/google/ads/b/z;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/ads/b/y;-><init>(Lcom/google/ads/bp;Lcom/google/ads/b/aa;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/bp;Lcom/google/ads/b/aa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/y;->f:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iput-object p2, p0, Lcom/google/ads/b/y;->d:Lcom/google/ads/b/aa;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    invoke-virtual {v0, v2}, Lcom/google/ads/b/n;->f(Ljava/lang/String;)V

    :cond_0
    const-string v0, "X-Afma-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    invoke-virtual {v0, v5}, Lcom/google/ads/b/w;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const-string v0, "X-Afma-Manual-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    invoke-virtual {v0, v5}, Lcom/google/ads/b/w;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    invoke-virtual {v0, v4}, Lcom/google/ads/b/n;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const-string v0, "X-Afma-Refresh-Rate"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_d

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(F)V

    invoke-virtual {v0}, Lcom/google/ads/b/w;->q()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/ads/b/w;->g()V

    :cond_4
    :goto_3
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/b/w;->a(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_4
    const-string v0, "X-Afma-Orientation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    invoke-static {}, Lcom/google/ads/e/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->a(I)V

    :cond_6
    :goto_5
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_2
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/b/w;->b(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_6
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->c(Ljava/lang/String;)V

    :cond_8
    const-string v0, "X-Afma-Mediation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->b(Z)V

    :cond_9
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->b(Ljava/lang/String;)V

    :cond_a
    const-string v0, "X-Afma-Ad-Size"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_3
    const-string v1, "x"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v6, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse size header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->h()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_b
    :goto_7
    const-string v0, "X-Afma-Disable-Activation-And-Scroll"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->a(Z)V

    :cond_c
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not get refresh value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->i()V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v0}, Lcom/google/ads/b/w;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/ads/b/w;->f()V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not get timeout value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->i()V

    goto/16 :goto_4

    :cond_e
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    invoke-static {}, Lcom/google/ads/e/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->a(I)V

    goto/16 :goto_5

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got bad value of Doritos cookie cache life from header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Using default value instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    goto/16 :goto_6

    :cond_f
    const/4 v2, 0x0

    :try_start_4
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    new-instance v3, Lcom/google/ads/g;

    invoke-direct {v3, v2, v1}, Lcom/google/ads/g;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/g;)V

    goto/16 :goto_7

    :catch_3
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse size header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    goto/16 :goto_7
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/y;->f:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/ads/b/y;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/y;->a:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/b/y;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/b/y;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 5

    const/16 v4, 0x190

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/b/y;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/b/y;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/b/y;->d:Lcom/google/ads/b/aa;

    invoke-interface {v1, v0}, Lcom/google/ads/b/aa;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "drt"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/ads/b/y;->b:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/google/ads/e/a;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    const-string v2, "X-Afma-drt-Cookie"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ads/e/a;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x12c

    if-gt v2, v0, :cond_4

    if-ge v0, v4, :cond_4

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get redirect location from a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " redirect."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/y;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/ads/e/i;->d()V

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    sget-object v1, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_3
    const-string v2, "Cookie"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/ads/e/i;->d()V

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    sget-object v1, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;)V

    goto :goto_3

    :cond_3
    :try_start_5
    invoke-direct {p0, v1}, Lcom/google/ads/b/y;->a(Ljava/net/HttpURLConnection;)V

    iput-object v2, p0, Lcom/google/ads/b/y;->e:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_6

    invoke-direct {p0, v1}, Lcom/google/ads/b/y;->a(Ljava/net/HttpURLConnection;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/ads/e/a;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Response content is: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Response message is null or zero length: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    sget-object v2, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/y;->a:Z

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    iget-object v3, p0, Lcom/google/ads/b/y;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/b/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/y;->a:Z

    goto/16 :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    sget-object v2, Lcom/google/ads/e;->a:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/y;->a:Z

    goto/16 :goto_2

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/y;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/google/ads/e/i;->d()V

    iget-object v0, p0, Lcom/google/ads/b/y;->c:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    sget-object v1, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;)V

    goto/16 :goto_3
.end method
