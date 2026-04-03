.class public final Lcom/google/ads/av;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field d:I

.field final e:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/ads/av;->d:I

    iput-object p1, p0, Lcom/google/ads/av;->e:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/ads/av;->a:[B

    iput v0, p0, Lcom/google/ads/av;->c:I

    array-length v0, p2

    iput v0, p0, Lcom/google/ads/av;->b:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/ads/av;->e:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/aw;

    invoke-direct {v0}, Lcom/google/ads/aw;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/av;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/ads/av;->a:[B

    iget v2, p0, Lcom/google/ads/av;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/ads/av;->c:I

    return-void
.end method

.method public final a(I)V
    .locals 4

    int-to-byte v0, p1

    iget v1, p0, Lcom/google/ads/av;->c:I

    iget v2, p0, Lcom/google/ads/av;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/av;->a()V

    :cond_0
    iget-object v1, p0, Lcom/google/ads/av;->a:[B

    iget v2, p0, Lcom/google/ads/av;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/ads/av;->c:I

    aput-byte v0, v1, v2

    iget v0, p0, Lcom/google/ads/av;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/av;->d:I

    return-void
.end method

.method public final a(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/ads/ax;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ads/av;->b(I)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/ads/av;->a(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/ads/av;->a(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
