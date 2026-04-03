.class public final Lcom/google/ads/bq;
.super Lcom/google/ads/e/ab;


# static fields
.field private static final d:Lcom/google/ads/bq;


# instance fields
.field public final a:Lcom/google/ads/e/ae;

.field public final b:Lcom/google/ads/e/ad;

.field public final c:Lcom/google/ads/e/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/bq;

    invoke-direct {v0}, Lcom/google/ads/bq;-><init>()V

    sput-object v0, Lcom/google/ads/bq;->d:Lcom/google/ads/bq;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/ads/e/ab;-><init>()V

    new-instance v0, Lcom/google/ads/e/ae;

    const-string v1, "marketPackages"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ae;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bq;->a:Lcom/google/ads/e/ae;

    new-instance v0, Lcom/google/ads/e/ad;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/br;

    invoke-direct {v2}, Lcom/google/ads/br;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bq;->b:Lcom/google/ads/e/ad;

    new-instance v0, Lcom/google/ads/e/ad;

    const-string v1, "uiHandler"

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ad;-><init>(Lcom/google/ads/e/ab;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bq;->c:Lcom/google/ads/e/ad;

    return-void
.end method

.method public static a()Lcom/google/ads/bq;
    .locals 1

    sget-object v0, Lcom/google/ads/bq;->d:Lcom/google/ads/bq;

    return-object v0
.end method
