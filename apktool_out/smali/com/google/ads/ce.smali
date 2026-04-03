.class public final Lcom/google/ads/ce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/bt;


# instance fields
.field private a:Lcom/google/ads/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/ads/b;

    invoke-direct {v0}, Lcom/google/ads/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/ads/ce;-><init>(Lcom/google/ads/b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/ce;->a:Lcom/google/ads/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/b/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2

    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/ce;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/b/x;

    const-string v1, "webapp"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/b/x;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/b/w;Lcom/google/ads/b/x;)V

    goto :goto_0

    :cond_1
    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/ce;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/b/x;

    const-string v1, "expand"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/b/x;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/b/w;Lcom/google/ads/b/x;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/ce;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/b/x;

    const-string v1, "intent"

    invoke-direct {v0, v1, p2}, Lcom/google/ads/b/x;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/b;->a(Lcom/google/ads/b/w;Lcom/google/ads/b/x;)V

    goto :goto_0
.end method
