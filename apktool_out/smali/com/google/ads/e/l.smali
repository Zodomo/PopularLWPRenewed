.class public Lcom/google/ads/e/l;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/ads/e/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/ads/e/l;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lcom/google/ads/e/n;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lcom/google/ads/e/n;-><init>([B)V

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/e/n;->a([BI)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v2, Lcom/google/ads/e/n;->b:I

    iget-object v1, v2, Lcom/google/ads/e/n;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, v2, Lcom/google/ads/e/n;->a:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, v2, Lcom/google/ads/e/n;->b:I

    new-array v0, v0, [B

    iget-object v1, v2, Lcom/google/ads/e/n;->a:[B

    iget v2, v2, Lcom/google/ads/e/n;->b:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
