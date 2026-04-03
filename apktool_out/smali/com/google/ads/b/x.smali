.class public final Lcom/google/ads/b/x;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/b/x;->a:Ljava/lang/String;

    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/HashMap;

    :goto_0
    iput-object v0, p0, Lcom/google/ads/b/x;->b:Ljava/util/HashMap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/b/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/b/x;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/ads/b/x;->b:Ljava/util/HashMap;

    return-void
.end method
