.class public final Lcom/google/ads/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/google/ads/bp;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/google/ads/g;

.field f:Z

.field g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/google/ads/b/y;

.field private n:Lcom/google/ads/d;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/LinkedList;

.field private volatile q:Z

.field private r:Z

.field private s:Lcom/google/ads/e;

.field private t:Z

.field private u:I

.field private v:Ljava/lang/Thread;

.field private w:Z

.field private x:Lcom/google/ads/b/u;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/n;->f:Z

    sget-object v0, Lcom/google/ads/b/u;->b:Lcom/google/ads/b/u;

    iput-object v0, p0, Lcom/google/ads/b/n;->x:Lcom/google/ads/b/u;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/bp;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/google/ads/b/n;->f:Z

    sget-object v0, Lcom/google/ads/b/u;->b:Lcom/google/ads/b/u;

    iput-object v0, p0, Lcom/google/ads/b/n;->x:Lcom/google/ads/b/u;

    iput-object p1, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iput-object v2, p0, Lcom/google/ads/b/n;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/b/n;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/b/n;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/b/n;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/b/n;->p:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/google/ads/b/n;->s:Lcom/google/ads/e;

    iput-boolean v3, p0, Lcom/google/ads/b/n;->t:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/b/n;->u:I

    iput-boolean v3, p0, Lcom/google/ads/b/n;->l:Z

    iput-boolean v3, p0, Lcom/google/ads/b/n;->r:Z

    iput-object v2, p0, Lcom/google/ads/b/n;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    iget-object v0, p1, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->c:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/b/e;

    iget-object v0, p1, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    invoke-direct {v1, v0, v2}, Lcom/google/ads/b/e;-><init>(Lcom/google/ads/bs;Lcom/google/ads/g;)V

    iput-object v1, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    iget-object v0, p1, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    sget-object v2, Lcom/google/ads/b/h;->b:Ljava/util/Map;

    invoke-static {v0, v2, v3, v3}, Lcom/google/ads/b/ad;->a(Lcom/google/ads/b/w;Ljava/util/Map;ZZ)Lcom/google/ads/b/ad;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    new-instance v0, Lcom/google/ads/b/y;

    invoke-direct {v0, p1}, Lcom/google/ads/b/y;-><init>(Lcom/google/ads/bp;)V

    iput-object v0, p0, Lcom/google/ads/b/n;->m:Lcom/google/ads/b/y;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/google/ads/b/n;->m:Lcom/google/ads/b/y;

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->m()Lcom/google/ads/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->m()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    const-string v1, "prl"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/b/ab;->n()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    const-string v1, "prnl"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/b/ab;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "ppcl"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/b/ab;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "pcl"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Lcom/google/ads/b/ab;->j()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    const-string v1, "pcc"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "preqs"

    invoke-static {}, Lcom/google/ads/b/ab;->o()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oar"

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->p()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bas_on"

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->s()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bas_off"

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->v()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "aoi_timeout"

    const-string v5, "true"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Lcom/google/ads/b/ab;->A()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "aoi_nofill"

    const-string v5, "true"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0}, Lcom/google/ads/b/ab;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v5, "pit"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/google/ads/b/ab;->E()J

    move-result-wide v6

    const-string v1, "ptime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->a()V

    invoke-virtual {v0}, Lcom/google/ads/b/ab;->i()V

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    invoke-virtual {v0}, Lcom/google/ads/bs;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "format"

    const-string v1, "interstitial_mb"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "slotname"

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->h:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    const-string v1, "afma-sdk-a-v6.4.1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Lcom/google/ads/e/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "mv"

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->a:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "imbf"

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "msid"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".android."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isu"

    invoke-static {v4}, Lcom/google/ads/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/ads/e/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "net"

    if-nez v0, :cond_a

    const-string v0, "null"

    :cond_a
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/ads/e/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "cap"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "u_audio"

    invoke-static {v4}, Lcom/google/ads/e/a;->g(Landroid/content/Context;)Lcom/google/ads/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/e/c;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/ads/e/a;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "u_sd"

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u_h"

    invoke-static {v4, v0}, Lcom/google/ads/e/a;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u_w"

    invoke-static {v4, v0}, Lcom/google/ads/e/a;->b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v1, v0, Lcom/google/ads/bs;->r:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/ai;

    if-nez v1, :cond_c

    const-string v1, "afma-sdk-a-v6.4.1"

    invoke-static {v1, p2}, Lcom/google/ads/ai;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/ads/ai;

    move-result-object v1

    iget-object v5, v0, Lcom/google/ads/bs;->r:Lcom/google/ads/e/ae;

    invoke-virtual {v5, v1}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/ads/bs;->s:Lcom/google/ads/e/ae;

    new-instance v5, Lcom/google/ads/ak;

    invoke-direct {v5, v1}, Lcom/google/ads/ak;-><init>(Lcom/google/ads/ag;)V

    invoke-virtual {v0, v5}, Lcom/google/ads/e/ae;->a(Ljava/lang/Object;)V

    :cond_c
    const-string v0, "ms"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lcom/google/ads/ah;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->j:Lcom/google/ads/e/ad;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->j:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->j:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Lcom/google/ads/h;->getLocationOnScreen([I)V

    aget v5, v1, v3

    aget v6, v1, v2

    iget-object v1, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v1, v1, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Lcom/google/ads/h;->isShown()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v0}, Lcom/google/ads/h;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    if-lez v8, :cond_1a

    invoke-virtual {v0}, Lcom/google/ads/h;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    if-lez v8, :cond_1a

    if-gt v5, v7, :cond_1a

    if-gt v6, v1, :cond_1a

    move v1, v2

    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "y"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "width"

    invoke-virtual {v0}, Lcom/google/ads/h;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "height"

    invoke-virtual {v0}, Lcom/google/ads/h;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "visible"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_pos"

    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->n:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/g;

    if-eqz v0, :cond_14

    array-length v5, v0

    :goto_2
    if-ge v3, v5, :cond_13

    aget-object v6, v0, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/ads/g;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/ads/g;->b()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/g;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "smart_w"

    const-string v5, "full"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v0}, Lcom/google/ads/g;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "smart_h"

    const-string v5, "auto"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {v0}, Lcom/google/ads/g;->e()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "format"

    invoke-virtual {v0}, Lcom/google/ads/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v5, "w"

    invoke-virtual {v0}, Lcom/google/ads/g;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "h"

    invoke-virtual {v0}, Lcom/google/ads/g;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_frame"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/ads/b/s;

    const-string v1, "NameNotFoundException"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/b/s;-><init>(Lcom/google/ads/b/n;Ljava/lang/String;)V

    throw v0

    :cond_13
    const-string v0, "sz"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v0, "phone"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "carrier"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v1, "pt"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const-string v1, "gnt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/ads/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "simulator"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v0, "session_id"

    invoke-static {}, Lcom/google/ads/ay;->a()Lcom/google/ads/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/ay;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    invoke-static {}, Lcom/google/ads/ay;->a()Lcom/google/ads/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/ay;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "swipeable"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->t:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "d_imp_hdr"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-static {p1}, Lcom/google/ads/e/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v0, v0, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->d:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bq;

    iget-object v0, v0, Lcom/google/ads/bq;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/br;

    iget-object v0, v0, Lcom/google/ads/br;->o:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/b/n;->d()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/b/n;->n:Lcom/google/ads/d;

    const-string v1, "AFMA_buildAdURL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/b/n;->n:Lcom/google/ads/d;

    const-string v1, "</script></head><body></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adRequestUrlHtml: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/b/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/b/n;->n:Lcom/google/ads/d;

    const-string v0, "AFMA_getSdkConstants();"

    goto :goto_3

    :cond_1a
    move v1, v3

    goto/16 :goto_1
.end method

.method private a(Lcom/google/ads/e;Z)V
    .locals 7

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/b/r;

    iget-object v1, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v1, v1, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/bs;

    iget-object v1, v1, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v1}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/b/w;

    iget-object v2, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/ads/b/n;->m:Lcom/google/ads/b/y;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/b/r;-><init>(Lcom/google/ads/b/w;Landroid/webkit/WebView;Lcom/google/ads/b/y;Lcom/google/ads/e;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b/n;->n:Lcom/google/ads/d;

    instance-of v0, v0, Lcom/google/ads/d/a;

    if-eqz v0, :cond_0

    const-string v0, "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>"

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/n;->v:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/n;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/b/n;->v:Ljava/lang/Thread;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/b/n;->m:Lcom/google/ads/b/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/b/n;->m:Lcom/google/ads/b/y;

    iput-boolean v1, v0, Lcom/google/ads/b/y;->a:Z

    :cond_2
    iput-boolean v1, p0, Lcom/google/ads/b/n;->q:Z

    return-void
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/b/n;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/b/u;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/b/n;->x:Lcom/google/ads/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/google/ads/d;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/b/n;->n:Lcom/google/ads/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/b/n;->q:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/b/n;->v:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/b/n;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/ads/e;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/b/n;->s:Lcom/google/ads/e;

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

.method public final declared-synchronized a(Lcom/google/ads/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/b/n;->p:Ljava/util/LinkedList;

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

.method protected final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/ads/b/n;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/b/n;->i:Ljava/lang/String;

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

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/b/n;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/b/n;->t:Z

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

.method protected final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/b/n;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/b/n;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/b/n;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/b/n;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/b/n;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/b/n;->o:Ljava/lang/String;

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

.method public final declared-synchronized d(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/b/n;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/b/n;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/b/n;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 14

    const/4 v5, 0x0

    const-wide/16 v12, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/b/n;->m:Lcom/google/ads/b/y;

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/ads/e/i;->h()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->c:Lcom/google/ads/e/af;

    invoke-virtual {v2}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v3, v3, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/bs;

    iget-object v3, v3, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/b/w;

    invoke-virtual {v3}, Lcom/google/ads/b/w;->o()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v4, p0, Lcom/google/ads/b/n;->n:Lcom/google/ads/d;

    iget-object v3, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v3, v3, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/bs;

    iget-object v3, v3, Lcom/google/ads/bs;->f:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v4, v3}, Lcom/google/ads/d;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v10

    const-string v3, "extras"

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/util/Map;

    const-string v4, "_adUrl"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v11, v4, Ljava/lang/String;

    if-eqz v11, :cond_3

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/google/ads/b/n;->h:Ljava/lang/String;

    :cond_3
    const-string v4, "_requestUrl"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v11, v4, Ljava/lang/String;

    if-eqz v11, :cond_4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/google/ads/b/n;->o:Ljava/lang/String;

    :cond_4
    const-string v4, "_activationOverlayUrl"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v11, v4, Ljava/lang/String;

    if-eqz v11, :cond_5

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/google/ads/b/n;->c:Ljava/lang/String;

    :cond_5
    const-string v4, "_orientation"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v11, v4, Ljava/lang/String;

    if-eqz v11, :cond_6

    const-string v11, "p"

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v4, 0x1

    iput v4, p0, Lcom/google/ads/b/n;->u:I

    :cond_6
    :goto_1
    const-string v4, "_norefresh"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v3, v3, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/bs;

    iget-object v3, v3, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/b/w;

    invoke-virtual {v3}, Lcom/google/ads/b/w;->e()V

    :cond_7
    iget-object v3, p0, Lcom/google/ads/b/n;->h:Ljava/lang/String;

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/google/ads/b/n;->o:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_e

    :try_start_5
    invoke-direct {p0, v10, v2}, Lcom/google/ads/b/n;->a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/google/ads/b/s; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    :try_start_6
    iget-object v2, p0, Lcom/google/ads/b/n;->n:Lcom/google/ads/d;

    instance-of v2, v2, Lcom/google/ads/d/a;

    if-eqz v2, :cond_a

    const-string v2, "http://www.gstatic.com/safa/"

    move-object v3, v2

    :goto_2
    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v10, Lcom/google/ads/b/t;

    iget-object v11, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    invoke-direct {v10, p0, v11, v3, v4}, Lcom/google/ads/b/t;-><init>(Lcom/google/ads/b/n;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v2

    sub-long/2addr v2, v8

    sub-long v2, v6, v2

    cmp-long v4, v2, v12

    if-lez v4, :cond_8

    :try_start_7
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_8
    :try_start_8
    iget-boolean v2, p0, Lcom/google/ads/b/n;->q:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_b

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_9
    :try_start_a
    const-string v11, "l"

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    iput v4, p0, Lcom/google/ads/b/n;->u:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_b
    invoke-static {}, Lcom/google/ads/e/i;->d()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V

    :goto_3
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught internal exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :cond_a
    :try_start_e
    const-string v2, "http://media.admob.com/"

    move-object v3, v2

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdLoader InterruptedException while getting the URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :cond_b
    :try_start_10
    iget-object v2, p0, Lcom/google/ads/b/n;->s:Lcom/google/ads/e;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/ads/b/n;->s:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    :cond_c
    :try_start_12
    iget-object v2, p0, Lcom/google/ads/b/n;->o:Ljava/lang/String;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdLoader timed out after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms while getting the URL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    sget-object v2, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    :cond_d
    :try_start_14
    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/ac;

    invoke-virtual {v2}, Lcom/google/ads/b/ac;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/ads/b/n;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_0

    :cond_e
    :try_start_16
    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/w;

    invoke-virtual {v2}, Lcom/google/ads/b/w;->m()Lcom/google/ads/b/ab;

    move-result-object v2

    sget-object v3, Lcom/google/ads/b/q;->a:[I

    iget-object v4, p0, Lcom/google/ads/b/n;->x:Lcom/google/ads/b/u;

    invoke-virtual {v4}, Lcom/google/ads/b/u;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_4
    iget-boolean v2, p0, Lcom/google/ads/b/n;->g:Z

    if-nez v2, :cond_12

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v2, p0, Lcom/google/ads/b/n;->m:Lcom/google/ads/b/y;

    iget-boolean v3, p0, Lcom/google/ads/b/n;->w:Z

    iput-boolean v3, v2, Lcom/google/ads/b/y;->b:Z

    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/ac;

    invoke-virtual {v2}, Lcom/google/ads/b/ac;->b()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->e:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/a;

    invoke-virtual {v2}, Lcom/google/ads/b/a;->d()Lcom/google/ads/b/ad;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ads/b/ad;->c()V

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/b/o;

    invoke-direct {v3, p0}, Lcom/google/ads/b/o;-><init>(Lcom/google/ads/b/n;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v5

    :goto_5
    iget-object v3, p0, Lcom/google/ads/b/n;->m:Lcom/google/ads/b/y;

    iget-object v4, p0, Lcom/google/ads/b/n;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/ads/b/y;->a(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :goto_6
    :try_start_17
    iget-boolean v3, p0, Lcom/google/ads/b/n;->q:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/google/ads/b/n;->s:Lcom/google/ads/e;

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/google/ads/b/n;->i:Ljava/lang/String;

    if-nez v3, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    sub-long v4, v6, v4

    cmp-long v3, v4, v12

    if-lez v3, :cond_f

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v2

    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdLoader InterruptedException while getting the ad server\'s response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_1a
    invoke-virtual {v2}, Lcom/google/ads/b/ab;->r()V

    invoke-virtual {v2}, Lcom/google/ads/b/ab;->u()V

    invoke-virtual {v2}, Lcom/google/ads/b/ab;->x()V

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v2}, Lcom/google/ads/b/ab;->t()V

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v2}, Lcom/google/ads/b/ab;->w()V

    invoke-virtual {v2}, Lcom/google/ads/b/ab;->q()V

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v2}, Lcom/google/ads/b/ab;->q()V

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    sget-object v2, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_0

    :cond_f
    :try_start_1c
    iget-boolean v3, p0, Lcom/google/ads/b/n;->q:Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v3, :cond_10

    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_0

    :cond_10
    :try_start_1e
    iget-object v3, p0, Lcom/google/ads/b/n;->s:Lcom/google/ads/e;

    if-eqz v3, :cond_11

    iget-object v2, p0, Lcom/google/ads/b/n;->s:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_0

    :cond_11
    :try_start_20
    iget-object v3, p0, Lcom/google/ads/b/n;->i:Ljava/lang/String;

    if-nez v3, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdLoader timed out after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms while waiting for the ad server\'s response."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    sget-object v2, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :try_start_21
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_0

    :cond_12
    :try_start_22
    iget-object v2, p0, Lcom/google/ads/b/n;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/b/n;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using loadUrl.  adBaseUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/b/n;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v3, v5

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    :goto_7
    iget-boolean v2, p0, Lcom/google/ads/b/n;->g:Z

    if-nez v2, :cond_1c

    iget-boolean v2, p0, Lcom/google/ads/b/n;->l:Z

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/w;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/ads/b/w;->b(Z)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :try_start_23
    iget-object v2, p0, Lcom/google/ads/b/n;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :goto_8
    :try_start_24
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_0

    :cond_13
    :try_start_25
    iget-object v2, p0, Lcom/google/ads/b/n;->k:Ljava/lang/String;

    const-string v3, "application/json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got a mediation response with a content type: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/b/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Expected something starting with \'application/json\'. Aborting mediation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto :goto_8

    :catch_4
    move-exception v2

    :try_start_26
    invoke-static {}, Lcom/google/ads/e/i;->d()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto :goto_8

    :cond_14
    :try_start_27
    iget-object v2, p0, Lcom/google/ads/b/n;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/ads/az;->a(Ljava/lang/String;)Lcom/google/ads/az;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/b/n;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/w;

    invoke-virtual {v2}, Lcom/google/ads/b/w;->i()Lcom/google/ads/bb;

    move-result-object v2

    if-eqz v4, :cond_15

    const-string v5, "no-store"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "no-cache"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "max-age\\s*=\\s*(\\d+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    move-result v6

    if-eqz v6, :cond_16

    const/4 v4, 0x1

    :try_start_28
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput-object v3, v2, Lcom/google/ads/bb;->a:Lcom/google/ads/az;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/google/ads/bb;->b:J

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Caching gWhirl configuration for: %d seconds"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_5
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    :cond_15
    :goto_9
    :try_start_29
    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/google/ads/b/p;

    invoke-direct {v4, p0, v3}, Lcom/google/ads/b/p;-><init>(Lcom/google/ads/b/n;Lcom/google/ads/az;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :catch_5
    move-exception v2

    invoke-static {}, Lcom/google/ads/e/i;->d()V

    goto :goto_9

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized cacheControlDirective: \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'. Not caching configuration."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto :goto_9

    :cond_17
    :try_start_2a
    iget-object v2, p0, Lcom/google/ads/b/n;->k:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/ads/b/n;->k:Ljava/lang/String;

    const-string v4, "application/json"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/google/ads/b/n;->k:Ljava/lang/String;

    const-string v4, "text/javascript"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected HTML but received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/b/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :try_start_2b
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto/16 :goto_0

    :cond_19
    :try_start_2c
    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->n:Lcom/google/ads/e/ae;

    invoke-virtual {v2}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    if-nez v2, :cond_1a

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    :try_start_2d
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto/16 :goto_0

    :cond_1a
    :try_start_2e
    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->n:Lcom/google/ads/e/ae;

    invoke-virtual {v2}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The ad server did not respond with a supported AdSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_0
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    :try_start_2f
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto/16 :goto_0

    :cond_1b
    :try_start_30
    iget-object v2, p0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    :cond_1c
    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/w;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/ads/b/w;->b(Z)V

    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/w;

    invoke-virtual {v2}, Lcom/google/ads/b/w;->k()Lcom/google/ads/b/e;

    move-result-object v4

    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/w;

    invoke-virtual {v2}, Lcom/google/ads/b/w;->l()Lcom/google/ads/b/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/b/ad;->c()V

    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/w;

    invoke-virtual {v2}, Lcom/google/ads/b/w;->m()Lcom/google/ads/b/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/b/ab;->h()V

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v5, Lcom/google/ads/b/t;

    iget-object v10, p0, Lcom/google/ads/b/n;->h:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/ads/b/n;->i:Ljava/lang/String;

    invoke-direct {v5, p0, v4, v10, v11}, Lcom/google/ads/b/t;-><init>(Lcom/google/ads/b/n;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    :goto_a
    :try_start_31
    iget-boolean v2, p0, Lcom/google/ads/b/n;->q:Z

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/google/ads/b/n;->t:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v2, v2, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->g:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/ac;

    invoke-virtual {v2}, Lcom/google/ads/b/ac;->b()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v3}, Lcom/google/ads/b/ad;->e()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    sub-long v4, v6, v4

    cmp-long v2, v4, v12

    if-lez v2, :cond_1e

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_31} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_0
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    goto :goto_a

    :catch_6
    move-exception v2

    :try_start_32
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdLoader InterruptedException while loading the HTML: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_0
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    :try_start_33
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto/16 :goto_0

    :cond_1e
    :try_start_34
    iget-boolean v2, p0, Lcom/google/ads/b/n;->t:Z

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/google/ads/bq;->a()Lcom/google/ads/bq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/Handler;

    move-object v11, v0

    new-instance v2, Lcom/google/ads/b/v;

    iget-object v3, p0, Lcom/google/ads/b/n;->b:Lcom/google/ads/bp;

    iget-object v3, v3, Lcom/google/ads/bp;->a:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/bs;

    iget-object v3, v3, Lcom/google/ads/bs;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v3}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/b/w;

    iget-object v5, p0, Lcom/google/ads/b/n;->a:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/google/ads/b/n;->p:Ljava/util/LinkedList;

    iget v7, p0, Lcom/google/ads/b/n;->u:I

    iget-boolean v8, p0, Lcom/google/ads/b/n;->r:Z

    iget-object v9, p0, Lcom/google/ads/b/n;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/ads/b/n;->e:Lcom/google/ads/g;

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/ads/b/v;-><init>(Lcom/google/ads/b/n;Lcom/google/ads/b/w;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/g;)V

    invoke-virtual {v11, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdLoader timed out after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms while loading the HTML."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->e()V

    sget-object v2, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/ads/b/n;->a(Lcom/google/ads/e;Z)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_0
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    goto/16 :goto_3

    :cond_20
    move-object v3, v2

    goto/16 :goto_7

    :cond_21
    move-object v2, v5

    goto/16 :goto_5

    :cond_22
    move-object v3, v5

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
