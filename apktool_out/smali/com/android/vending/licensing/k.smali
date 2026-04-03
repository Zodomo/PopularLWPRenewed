.class final Lcom/android/vending/licensing/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/vending/licensing/i;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/i;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/licensing/k;->a:Lcom/android/vending/licensing/i;

    iput p2, p0, Lcom/android/vending/licensing/k;->b:I

    iput-object p3, p0, Lcom/android/vending/licensing/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/vending/licensing/k;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/vending/licensing/k;->a:Lcom/android/vending/licensing/i;

    invoke-static {v0}, Lcom/android/vending/licensing/i;->c(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/h;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/licensing/h;->b(Lcom/android/vending/licensing/h;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/k;->a:Lcom/android/vending/licensing/i;

    invoke-static {v1}, Lcom/android/vending/licensing/i;->a(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/n;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/licensing/k;->a:Lcom/android/vending/licensing/i;

    invoke-static {v0}, Lcom/android/vending/licensing/i;->b(Lcom/android/vending/licensing/i;)V

    iget-object v0, p0, Lcom/android/vending/licensing/k;->a:Lcom/android/vending/licensing/i;

    invoke-static {v0}, Lcom/android/vending/licensing/i;->a(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/n;

    move-result-object v2

    iget-object v0, p0, Lcom/android/vending/licensing/k;->a:Lcom/android/vending/licensing/i;

    invoke-static {v0}, Lcom/android/vending/licensing/i;->c(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/h;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/licensing/h;->c(Lcom/android/vending/licensing/h;)Ljava/security/PublicKey;

    move-result-object v1

    iget v3, p0, Lcom/android/vending/licensing/k;->b:I

    iget-object v4, p0, Lcom/android/vending/licensing/k;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/vending/licensing/k;->d:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    if-eq v3, v6, :cond_0

    if-ne v3, v7, :cond_7

    :cond_0
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-static {v5}, Lcom/android/vending/licensing/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/android/vending/licensing/n;->b()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/vending/licensing/a/b; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    iget-object v0, p0, Lcom/android/vending/licensing/k;->a:Lcom/android/vending/licensing/i;

    invoke-static {v0}, Lcom/android/vending/licensing/i;->c(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/k;->a:Lcom/android/vending/licensing/i;

    invoke-static {v1}, Lcom/android/vending/licensing/i;->a(Lcom/android/vending/licensing/i;)Lcom/android/vending/licensing/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/licensing/h;->b(Lcom/android/vending/licensing/h;Lcom/android/vending/licensing/n;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/vending/licensing/m;->e:Lcom/android/vending/licensing/m;

    invoke-virtual {v2}, Lcom/android/vending/licensing/n;->a()V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v2}, Lcom/android/vending/licensing/n;->b()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, v4}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    :catch_4
    move-exception v0

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/vending/licensing/n;->b()V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_5
    const-string v4, "|"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    const/4 v5, 0x6

    if-ge v0, v5, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/android/vending/licensing/t;

    invoke-direct {v0}, Lcom/android/vending/licensing/t;-><init>()V

    iput-object v1, v0, Lcom/android/vending/licensing/t;->g:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/vending/licensing/t;->a:I

    const/4 v1, 0x1

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/vending/licensing/t;->b:I

    const/4 v1, 0x2

    aget-object v1, v4, v1

    iput-object v1, v0, Lcom/android/vending/licensing/t;->c:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v4, v1

    iput-object v1, v0, Lcom/android/vending/licensing/t;->d:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v4, v1

    iput-object v1, v0, Lcom/android/vending/licensing/t;->e:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/vending/licensing/t;->f:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    iget v1, v0, Lcom/android/vending/licensing/t;->a:I

    if-ne v1, v3, :cond_3

    iget v1, v0, Lcom/android/vending/licensing/t;->b:I

    iget v4, v2, Lcom/android/vending/licensing/n;->b:I

    if-ne v1, v4, :cond_3

    iget-object v1, v0, Lcom/android/vending/licensing/t;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/vending/licensing/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/vending/licensing/t;->d:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/vending/licensing/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/vending/licensing/t;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_7
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iget-object v1, v2, Lcom/android/vending/licensing/n;->e:Lcom/android/vending/licensing/b;

    invoke-interface {v1}, Lcom/android/vending/licensing/b;->a()Lcom/android/vending/licensing/r;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    :sswitch_1
    sget-object v1, Lcom/android/vending/licensing/r;->b:Lcom/android/vending/licensing/r;

    invoke-virtual {v2, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    :sswitch_2
    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    invoke-virtual {v2, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    :sswitch_3
    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    invoke-virtual {v2, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    :sswitch_4
    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    invoke-virtual {v2, v1, v0}, Lcom/android/vending/licensing/n;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    goto/16 :goto_0

    :sswitch_5
    sget-object v0, Lcom/android/vending/licensing/m;->a:Lcom/android/vending/licensing/m;

    invoke-virtual {v2}, Lcom/android/vending/licensing/n;->a()V

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/android/vending/licensing/m;->b:Lcom/android/vending/licensing/m;

    invoke-virtual {v2}, Lcom/android/vending/licensing/n;->a()V

    goto/16 :goto_0

    :sswitch_7
    sget-object v0, Lcom/android/vending/licensing/m;->c:Lcom/android/vending/licensing/m;

    invoke-virtual {v2}, Lcom/android/vending/licensing/n;->a()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method
