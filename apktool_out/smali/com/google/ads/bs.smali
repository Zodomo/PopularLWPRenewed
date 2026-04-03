.class public final Lcom/google/ads/bs;
.super Lcom/google/ads/e/ab;


# instance fields
.field public final a:Lcom/google/ads/e/ad;

.field public final b:Lcom/google/ads/e/ad;

.field public final c:Lcom/google/ads/e/af;

.field public final d:Lcom/google/ads/e/ad;

.field public final e:Lcom/google/ads/e/ad;

.field public final f:Lcom/google/ads/e/ad;

.field public final g:Lcom/google/ads/e/ad;

.field public final h:Lcom/google/ads/e/ad;

.field public final i:Lcom/google/ads/e/ad;

.field public final j:Lcom/google/ads/e/ad;

.field public final k:Lcom/google/ads/e/ad;

.field public final l:Lcom/google/ads/e/ae;

.field public final m:Lcom/google/ads/e/ae;

.field public final n:Lcom/google/ads/e/ae;

.field public final o:Lcom/google/ads/e/ae;

.field public final p:Lcom/google/ads/e/ae;

.field public final q:Lcom/google/ads/e/ae;

.field public final r:Lcom/google/ads/e/ae;

.field public final s:Lcom/google/ads/e/ae;

.field public final t:Lcom/google/ads/e/ae;


# direct methods
.method public constructor <init>(Lcom/google/ads/bq;Lcom/google/ads/a;Lcom/google/ads/h;Lcom/google/ads/j;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/b/ac;Lcom/google/ads/b/w;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/ads/e/ab;-><init>()V

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "currentAd"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->l:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "nextAd"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->m:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "adListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "appEventListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bs;->p:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "swipeableEventListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bs;->q:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "spamSignals"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->r:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "spamSignalsUtil"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->s:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "usesManualImpressions"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->t:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "appState"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->d:Lcom/google/ads/e/ad;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "ad"

    invoke-direct {v1, p0, v2, p2}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "adView"

    invoke-direct {v1, p0, v2, p3}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->j:Lcom/google/ads/e/ad;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "adType"

    invoke-direct {v1, p0, v2, p9}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "adUnitId"

    invoke-direct {v1, p0, v2, p5}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->h:Lcom/google/ads/e/ad;

    new-instance v1, Lcom/google/ads/e/af;

    const-string v2, "activity"

    invoke-direct {v1, p0, v2, p6}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->c:Lcom/google/ads/e/af;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "interstitialAd"

    invoke-direct {v1, p0, v2, p4}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->k:Lcom/google/ads/e/ad;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "bannerContainer"

    invoke-direct {v1, p0, v2, p8}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->i:Lcom/google/ads/e/ad;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "applicationContext"

    invoke-direct {v1, p0, v2, p7}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    new-instance v1, Lcom/google/ads/e/ae;

    const-string v2, "adSizes"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->n:Lcom/google/ads/e/ae;

    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "adManager"

    invoke-direct {v1, p0, v2, p10}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    if-eqz p9, :cond_0

    invoke-virtual {p9}, Lcom/google/ads/b/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/ads/b/a;

    invoke-direct {v0, p0}, Lcom/google/ads/b/a;-><init>(Lcom/google/ads/bs;)V

    :cond_0
    new-instance v1, Lcom/google/ads/e/ad;

    const-string v2, "activationOverlay"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/bs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->a()Z

    move-result v0

    return v0
.end method
