.class public final Lcom/google/ads/l;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/util/List;

.field final d:Ljava/util/List;

.field final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/ads/e/g;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/ads/e/g;->a(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/google/ads/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/l;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/google/ads/l;->e:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/ads/l;->d:Ljava/util/List;

    return-void
.end method
