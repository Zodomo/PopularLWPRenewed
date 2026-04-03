.class public Lcom/google/ads/e/t;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private final a:Lcom/google/ads/bs;


# direct methods
.method public constructor <init>(Lcom/google/ads/bs;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/google/ads/e/t;->a:Lcom/google/ads/bs;

    return-void
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
    .locals 8

    const v7, 0x104000a

    const/high16 v6, 0x1040000

    const/4 v0, 0x1

    instance-of v1, p0, Lcom/google/ads/b/e;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/google/ads/b/e;

    invoke-virtual {p0}, Lcom/google/ads/b/e;->h()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/ads/e/z;

    invoke-direct {v2, p5, v5}, Lcom/google/ads/e/z;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/ads/e/y;

    invoke-direct {v2, p5}, Lcom/google/ads/e/y;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/ads/e/x;

    invoke-direct {v2, p5}, Lcom/google/ads/e/x;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/ads/e/w;

    invoke-direct {v2, p4}, Lcom/google/ads/e/w;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/ads/e/v;

    invoke-direct {v2, p4}, Lcom/google/ads/e/v;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/ads/e/u;

    invoke-direct {v2, p4}, Lcom/google/ads/e/u;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    instance-of v0, p1, Lcom/google/ads/b/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/ads/b/e;

    invoke-virtual {p1}, Lcom/google/ads/b/e;->e()V

    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/google/ads/e/s;->a:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-static {}, Lcom/google/ads/e/i;->c()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/google/ads/e/i;->h()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/google/ads/e/i;->e()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/google/ads/e/i;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 9

    const-wide/16 v4, 0x0

    iget-object v2, p0, Lcom/google/ads/e/t;->a:Lcom/google/ads/bs;

    iget-object v2, v2, Lcom/google/ads/bs;->d:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/bq;

    iget-object v2, v2, Lcom/google/ads/bq;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v2}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/br;

    iget-object v3, v2, Lcom/google/ads/br;->l:Lcom/google/ads/e/ae;

    invoke-virtual {v3}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v6, p7

    cmp-long v3, v6, v4

    if-gtz v3, :cond_0

    move-object/from16 v0, p9

    invoke-interface {v0, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_0
    return-void

    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_2

    cmp-long v3, p5, v6

    if-gtz v3, :cond_1

    iget-object v2, v2, Lcom/google/ads/br;->m:Lcom/google/ads/e/ae;

    invoke-virtual {v2}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p5, v2

    if-gtz v2, :cond_1

    :goto_1
    move-object/from16 v0, p9

    invoke-interface {v0, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    :cond_1
    move-wide p5, v4

    goto :goto_1

    :cond_2
    cmp-long v3, p5, v4

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/google/ads/br;->n:Lcom/google/ads/e/ae;

    invoke-virtual {v3}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, p3

    iget-object v2, v2, Lcom/google/ads/br;->m:Lcom/google/ads/e/ae;

    invoke-virtual {v2}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_3
    :goto_2
    move-wide p5, p3

    goto :goto_1

    :cond_4
    iget-object v2, v2, Lcom/google/ads/br;->m:Lcom/google/ads/e/ae;

    invoke-virtual {v2}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v2, p5, v2

    if-gtz v2, :cond_3

    add-long/2addr p3, p5

    goto :goto_2
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/ads/e/t;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/ads/e/t;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/ads/e/t;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/ads/e/t;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/e/t;->a:Lcom/google/ads/bs;

    iget-object v0, v0, Lcom/google/ads/bs;->d:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bq;

    iget-object v0, v0, Lcom/google/ads/bq;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/br;

    iget-object v1, v0, Lcom/google/ads/br;->k:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p3

    iget-object v0, v0, Lcom/google/ads/br;->j:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
