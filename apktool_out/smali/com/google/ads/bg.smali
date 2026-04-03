.class public final Lcom/google/ads/bg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/ads/e/g;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/ads/e/g;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Lcom/google/ads/e/g;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/bg;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/bg;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/bg;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/bg;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/google/ads/bg;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/google/ads/bg;->f:Ljava/util/List;

    return-void
.end method
