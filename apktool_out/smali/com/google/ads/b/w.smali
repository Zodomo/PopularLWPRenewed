.class public final Lcom/google/ads/b/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private final b:Lcom/google/ads/bs;

.field private c:Lcom/google/ads/b/n;

.field private d:Lcom/google/ads/d;

.field private e:Lcom/google/ads/b/ab;

.field private f:Lcom/google/ads/b/e;

.field private g:Lcom/google/ads/b/ad;

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/SharedPreferences;

.field private p:J

.field private q:Lcom/google/ads/q;

.field private r:Z

.field private s:Ljava/util/LinkedList;

.field private t:Ljava/util/LinkedList;

.field private u:Ljava/util/LinkedList;

.field private v:I

.field private w:Ljava/lang/Boolean;

.field private x:Lcom/google/ads/bb;

.field private y:Lcom/google/ads/bc;

.field private z:Lcom/google/ads/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/b/w;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/a;Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/w;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/b/w;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/w;->A:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/w;->B:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/w;->r:Z

    new-instance v0, Lcom/google/ads/b/ab;

    invoke-direct {v0}, Lcom/google/ads/b/ab;-><init>()V

    iput-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/w;->d:Lcom/google/ads/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/w;->k:Z

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/google/ads/b/w;->p:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/w;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/w;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/w;->m:Z

    if-nez p3, :cond_1

    sget-object v9, Lcom/google/ads/b/ac;->a:Lcom/google/ads/b/ac;

    :goto_0
    instance-of v0, p1, Lcom/google/ads/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/google/ads/b/ac;->d()V

    :cond_0
    if-nez p2, :cond_4

    new-instance v0, Lcom/google/ads/bs;

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v1

    instance-of v2, p1, Lcom/google/ads/h;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/google/ads/h;

    move-object v3, v2

    :goto_1
    instance-of v2, p1, Lcom/google/ads/j;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/google/ads/j;

    move-object v4, v2

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p4

    move-object/from16 v8, p5

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/ads/bs;-><init>(Lcom/google/ads/bq;Lcom/google/ads/a;Lcom/google/ads/h;Lcom/google/ads/j;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/b/ac;Lcom/google/ads/b/w;)V

    iput-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    :goto_3
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/ads/b/ac;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/b/ac;

    move-result-object v9

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/google/ads/b/w;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/w;->o:Landroid/content/SharedPreferences;

    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/google/ads/b/w;->i:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/ads/bs;

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v1

    instance-of v2, p1, Lcom/google/ads/h;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/google/ads/h;

    move-object v3, v2

    :goto_4
    instance-of v2, p1, Lcom/google/ads/j;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Lcom/google/ads/j;

    move-object v4, v2

    :goto_5
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object v2, p1

    move-object v5, p4

    move-object v6, p2

    move-object/from16 v8, p5

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/ads/bs;-><init>(Lcom/google/ads/bq;Lcom/google/ads/a;Lcom/google/ads/h;Lcom/google/ads/j;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/b/ac;Lcom/google/ads/b/w;)V

    iput-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    new-instance v0, Lcom/google/ads/q;

    invoke-direct {v0, p0}, Lcom/google/ads/q;-><init>(Lcom/google/ads/b/w;)V

    iput-object v0, p0, Lcom/google/ads/b/w;->q:Lcom/google/ads/q;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/b/w;->s:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/b/w;->t:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/b/w;->u:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/ads/b/w;->a()V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/e/a;->h(Landroid/content/Context;)V

    new-instance v0, Lcom/google/ads/bb;

    invoke-direct {v0}, Lcom/google/ads/bb;-><init>()V

    iput-object v0, p0, Lcom/google/ads/b/w;->x:Lcom/google/ads/bb;

    new-instance v0, Lcom/google/ads/bc;

    invoke-direct {v0, p0}, Lcom/google/ads/bc;-><init>(Lcom/google/ads/b/w;)V

    iput-object v0, p0, Lcom/google/ads/b/w;->y:Lcom/google/ads/bc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/w;->w:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/w;->z:Lcom/google/ads/bg;

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private declared-synchronized A()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    invoke-virtual {v0}, Lcom/google/ads/b/n;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized B()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->c:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/ads/e/i;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/b/w;->u:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/p;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/p;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->i:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->i:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->i:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    iget-object v3, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v3, v3, Lcom/google/ads/bs;->l:Lcom/google/ads/e/ae;

    invoke-virtual {v3}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/b/w;->a(ZIIII)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a;

    invoke-virtual {v0}, Lcom/google/ads/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->i:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v3, v3, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/b/ac;

    invoke-virtual {v3}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/g;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/ads/e/a;->a(Landroid/content/Context;I)I

    move-result v4

    iget-object v2, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v3, v3, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/b/ac;

    invoke-virtual {v3}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/g;->b()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/ads/e/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/ads/ay;->a()Lcom/google/ads/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/ay;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ads/ay;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->h:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "@gw_adlocid@"

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_qdata@"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sdkver@"

    const-string v6, "afma-sdk-a-v6.4.1"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sessid@"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_seqnum@"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_devid@"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v0, "@gw_adnetid@"

    invoke-virtual {v1, v0, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "@gw_allocid@"

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz p6, :cond_2

    const-string v0, "@gw_adt@"

    invoke-virtual {v1, v0, p6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p7, :cond_3

    const-string v0, "@gw_aec@"

    invoke-virtual {v1, v0, p7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_1
    const-string v6, "@gw_adnetrefresh@"

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_4
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/google/ads/p;

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v7, v1, v0}, Lcom/google/ads/p;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "0"

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->b()V

    return-void
.end method

.method private declared-synchronized y()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized z()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->c:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/ads/e/i;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/b/w;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/p;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/p;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    move-result-object v1

    sget v0, Lcom/google/ads/e/a;->a:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/google/ads/e/e;

    iget-object v2, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-direct {v0, v2, v1}, Lcom/google/ads/e/e;-><init>(Lcom/google/ads/bs;Lcom/google/ads/g;)V

    :goto_0
    iput-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/b/e;->setVisibility(I)V

    sget-object v0, Lcom/google/ads/b/h;->d:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-virtual {v2}, Lcom/google/ads/bs;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/b/ad;->a(Lcom/google/ads/b/w;Ljava/util/Map;ZZ)Lcom/google/ads/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/w;->g:Lcom/google/ads/b/ad;

    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    iget-object v1, p0, Lcom/google/ads/b/w;->g:Lcom/google/ads/b/ad;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->d:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bq;

    iget-object v0, v0, Lcom/google/ads/bq;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/br;

    sget v1, Lcom/google/ads/e/a;->a:I

    iget-object v0, v0, Lcom/google/ads/br;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/ads/b/e;

    iget-object v2, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-direct {v0, v2, v1}, Lcom/google/ads/b/e;-><init>(Lcom/google/ads/bs;Lcom/google/ads/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/b/w;->p:J

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/google/ads/b/w;->p:J

    invoke-virtual {p0}, Lcom/google/ads/b/w;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ads/b/w;->p:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/b/w;->f()V

    invoke-virtual {p0}, Lcom/google/ads/b/w;->g()V
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

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/b/w;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(IIII)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a;

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-gez p3, :cond_2

    iget-object v2, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/ac;

    invoke-virtual {v2}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/g;->a()I

    move-result v2

    :goto_0
    invoke-static {v1, v2}, Lcom/google/ads/e/a;->a(Landroid/content/Context;I)I

    move-result v3

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-gez p4, :cond_0

    iget-object v2, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/ac;

    invoke-virtual {v2}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/g;->b()I

    move-result p4

    :cond_0
    invoke-static {v1, p4}, Lcom/google/ads/e/a;->a(Landroid/content/Context;I)I

    move-result v1

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-gez p3, :cond_4

    move v2, v4

    move v1, v4

    :goto_1
    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/b/a;

    invoke-virtual {v1}, Lcom/google/ads/b/a;->c()I

    move-result v1

    move v3, v1

    :goto_2
    if-gez v2, :cond_1

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/b/a;

    invoke-virtual {v1}, Lcom/google/ads/b/a;->b()I

    move-result v1

    move v2, v1

    :cond_1
    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/b/a;

    invoke-virtual {v1, v3}, Lcom/google/ads/b/a;->setXPosition(I)V

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/b/a;

    invoke-virtual {v1, v2}, Lcom/google/ads/b/a;->setYPosition(I)V

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/google/ads/e/a;->a(Landroid/content/Context;I)I

    move-result v3

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/ads/e/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v5, v3, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v5}, Lcom/google/ads/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    move v2, p3

    goto/16 :goto_0

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, p2

    move v1, p1

    goto :goto_1
.end method

.method public final a(J)V
    .locals 5

    sget-object v1, Lcom/google/ads/b/w;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v3, v3, Lcom/google/ads/bs;->h:Lcom/google/ads/e/ad;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/google/ads/b/w;->r:Z

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/ads/b/w;->i:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Landroid/view/View;Lcom/google/ads/bj;Lcom/google/ads/bg;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/ads/e/i;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/w;->k:Z

    iput-object p3, p0, Lcom/google/ads/b/w;->z:Lcom/google/ads/bg;

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-virtual {v0}, Lcom/google/ads/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/ads/b/w;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v1, p3, Lcom/google/ads/bg;->d:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p3, Lcom/google/ads/bg;->b:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/ads/bg;->a:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/ads/bg;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/b/w;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/b/w;->y:Lcom/google/ads/bc;

    invoke-virtual {v0, p2}, Lcom/google/ads/bc;->b(Lcom/google/ads/bj;)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/az;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    iget-object v0, p0, Lcom/google/ads/b/w;->y:Lcom/google/ads/bc;

    iget-object v1, p0, Lcom/google/ads/b/w;->d:Lcom/google/ads/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/bc;->a(Lcom/google/ads/az;Lcom/google/ads/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/d;)V
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/ads/e/i;->g()V

    iget-boolean v0, p0, Lcom/google/ads/b/w;->h:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/ads/e/i;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/ads/b/w;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/ads/e/i;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/ads/AdActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/e/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/e/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->o:Landroid/content/SharedPreferences;

    const-string v2, "GoogleAdMobDoritosLife"

    const-wide/32 v4, 0xea60

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/google/ads/as;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->c:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/as;->a(Landroid/app/Activity;)V

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/w;->k:Z

    iget-object v0, p0, Lcom/google/ads/b/w;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/ads/b/w;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/google/ads/b/w;->d:Lcom/google/ads/d;

    iget-object v0, p0, Lcom/google/ads/b/w;->x:Lcom/google/ads/bb;

    iget-object v2, v0, Lcom/google/ads/bb;->a:Lcom/google/ads/az;

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/ads/bb;->b:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/b/w;->y:Lcom/google/ads/bc;

    iget-object v1, p0, Lcom/google/ads/b/w;->x:Lcom/google/ads/bb;

    iget-object v1, v1, Lcom/google/ads/bb;->a:Lcom/google/ads/az;

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/bc;->a(Lcom/google/ads/az;Lcom/google/ads/d;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/google/ads/bp;

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-direct {v0, v1}, Lcom/google/ads/bp;-><init>(Lcom/google/ads/bs;)V

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->m:Lcom/google/ads/e/ae;

    invoke-virtual {v1, v0}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/ads/bp;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/n;

    iput-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    iget-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    invoke-virtual {v0, p1}, Lcom/google/ads/b/n;->a(Lcom/google/ads/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/ads/e;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Lcom/google/ads/b/w;->a(F)V

    invoke-virtual {p0}, Lcom/google/ads/b/w;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/b/w;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/w;->n:Z

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-virtual {v0}, Lcom/google/ads/bs;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->B()V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailedToReceiveAd("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/google/ads/b/w;->B:Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/ads/e/a;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/w;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/b/w;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/w;->A:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/LinkedList;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding a click tracking URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/b/w;->u:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/b/w;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ZIIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/ads/b/a;->setOverlayActivated(Z)V

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/ads/b/w;->a(IIII)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->q:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->q:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->q:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->y:Lcom/google/ads/bc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/w;->y:Lcom/google/ads/bc;

    iget-object v1, v0, Lcom/google/ads/bc;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lcom/google/ads/bc;->d:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/bc;->b(Lcom/google/ads/bj;)V

    iget-object v2, v0, Lcom/google/ads/bc;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v0, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/google/ads/bc;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->p:Lcom/google/ads/e/ae;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/ads/b/w;->A()V

    invoke-virtual {p0}, Lcom/google/ads/b/w;->f()V

    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->destroy()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/w;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
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

.method public final declared-synchronized b(Lcom/google/ads/az;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-virtual {p1}, Lcom/google/ads/az;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/az;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/b/w;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding a tracking URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/b/w;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/w;->w:Ljava/lang/Boolean;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/w;->A:Ljava/lang/String;

    return-object v0
.end method

.method protected final declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding a manual tracking URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/b/w;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/w;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/b/w;->m:Z

    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/b/w;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/b/w;->q:Lcom/google/ads/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/w;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/b/w;->n:Z

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-virtual {v0}, Lcom/google/ads/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/ads/b/w;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/b/w;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling refreshing every "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/ads/b/w;->p:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/b/w;->q:Lcom/google/ads/q;

    iget-wide v2, p0, Lcom/google/ads/b/w;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/w;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/ads/e/i;->a()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final h()Lcom/google/ads/bs;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    return-object v0
.end method

.method public final declared-synchronized i()Lcom/google/ads/bb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->x:Lcom/google/ads/bb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/google/ads/b/n;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Lcom/google/ads/b/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Lcom/google/ads/b/ad;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->g:Lcom/google/ads/b/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()Lcom/google/ads/b/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    return-object v0
.end method

.method public final declared-synchronized n()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/b/w;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/b/w;->i:J

    return-wide v0
.end method

.method public final declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/b/w;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/b/w;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->C()V

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;
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

.method public final declared-synchronized s()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;
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

.method public final declared-synchronized t()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;
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

.method public final declared-synchronized u()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->p:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;
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

.method public final v()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->f()V

    invoke-direct {p0}, Lcom/google/ads/b/w;->B()V

    return-void
.end method

.method public final declared-synchronized w()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/b/w;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/b/w;->d:Lcom/google/ads/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-virtual {v0}, Lcom/google/ads/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->j:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/ads/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/w;->d:Lcom/google/ads/d;

    invoke-virtual {p0, v0}, Lcom/google/ads/b/w;->a(Lcom/google/ads/d;)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/ads/b/w;->n:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/b/w;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/ads/e/i;->a()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/b/w;->q:Lcom/google/ads/q;

    iget-wide v2, p0, Lcom/google/ads/b/w;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/ads/e/i;->a()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final declared-synchronized x()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/b/w;->c:Lcom/google/ads/b/n;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/b/w;->k:Z

    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/b/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-virtual {v0}, Lcom/google/ads/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/w;->f:Lcom/google/ads/b/e;

    invoke-direct {p0, v0}, Lcom/google/ads/b/w;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/w;->e:Lcom/google/ads/b/ab;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->g()V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    invoke-virtual {v0}, Lcom/google/ads/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/ads/b/w;->z()V

    :cond_1
    invoke-static {}, Lcom/google/ads/e/i;->e()V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->o:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->l:Lcom/google/ads/e/ae;

    iget-object v1, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->m:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/b/w;->b:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->m:Lcom/google/ads/e/ae;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
