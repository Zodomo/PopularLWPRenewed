.class final Lcom/google/ads/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/bj;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/ads/d;

.field private final d:Ljava/util/HashMap;

.field private final e:Z

.field private final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/ads/bj;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/bj;

    iput-object p3, p0, Lcom/google/ads/bl;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bl;->f:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/ads/bl;->c:Lcom/google/ads/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/ads/bl;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/ads/bl;->d:Ljava/util/HashMap;

    const-string v1, "gwhirl_share_location"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/ads/bl;->e:Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received an illegal value, \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', for the special share location parameter from mediation server (expected \'0\' or \'1\'). Will not share the location."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/ads/bi;)V
    .locals 1

    invoke-static {}, Lcom/google/ads/e/i;->d()V

    iget-object v0, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/bj;

    invoke-virtual {v0, p1}, Lcom/google/ads/bj;->a(Lcom/google/ads/bi;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to instantiate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/bl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/bl;->b:Ljava/lang/String;

    const-class v1, Lcom/google/ads/c/b;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c/b;

    iget-object v1, p0, Lcom/google/ads/bl;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/ads/bm;

    const-string v1, "Activity became null while trying to instantiate adapter."

    invoke-direct {v0, v1}, Lcom/google/ads/bm;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find adapter class \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/bl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Did you link the ad network\'s mediation adapter? Skipping ad network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/google/ads/bi;->e:Lcom/google/ads/bi;

    invoke-direct {p0, v0}, Lcom/google/ads/bl;->a(Lcom/google/ads/bi;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/bj;

    invoke-virtual {v2, v0}, Lcom/google/ads/bj;->a(Lcom/google/ads/c/b;)V

    invoke-interface {v0}, Lcom/google/ads/c/b;->c()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/c/e;

    iget-object v3, p0, Lcom/google/ads/bl;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/google/ads/c/e;->a(Ljava/util/Map;)V

    :cond_1
    invoke-interface {v0}, Lcom/google/ads/c/b;->b()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/ads/bl;->c:Lcom/google/ads/d;

    invoke-virtual {v3, v2}, Lcom/google/ads/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Lcom/google/ads/c/a;

    iget-object v3, p0, Lcom/google/ads/bl;->c:Lcom/google/ads/d;

    iget-boolean v4, p0, Lcom/google/ads/bl;->e:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/google/ads/c/a;-><init>(Lcom/google/ads/d;Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/bj;

    iget-object v1, v1, Lcom/google/ads/bj;->a:Lcom/google/ads/b/ac;

    invoke-virtual {v1}, Lcom/google/ads/b/ac;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/google/ads/c/d;

    if-nez v1, :cond_3

    new-instance v0, Lcom/google/ads/bm;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/bl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationInterstitialAdapter interface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/bm;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/google/ads/bi;->f:Lcom/google/ads/bi;

    invoke-direct {p0, v0}, Lcom/google/ads/bl;->a(Lcom/google/ads/bi;)V

    goto :goto_0

    :cond_3
    :try_start_2
    check-cast v0, Lcom/google/ads/c/d;

    new-instance v1, Lcom/google/ads/bo;

    iget-object v2, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/bj;

    invoke-direct {v1, v2}, Lcom/google/ads/bo;-><init>(Lcom/google/ads/bj;)V

    invoke-interface {v0}, Lcom/google/ads/c/d;->d()V

    :goto_1
    iget-object v0, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/bj;

    invoke-virtual {v0}, Lcom/google/ads/bj;->g()V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/google/ads/c/c;

    if-nez v1, :cond_5

    new-instance v0, Lcom/google/ads/bm;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/bl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationBannerAdapter interface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/bm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v0, Lcom/google/ads/c/c;

    new-instance v1, Lcom/google/ads/bn;

    iget-object v2, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/bj;

    invoke-direct {v1, v2}, Lcom/google/ads/bn;-><init>(Lcom/google/ads/bj;)V

    iget-object v1, p0, Lcom/google/ads/bl;->a:Lcom/google/ads/bj;

    iget-object v1, v1, Lcom/google/ads/bj;->a:Lcom/google/ads/b/ac;

    invoke-virtual {v1}, Lcom/google/ads/b/ac;->c()Lcom/google/ads/g;

    invoke-interface {v0}, Lcom/google/ads/c/c;->d()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
