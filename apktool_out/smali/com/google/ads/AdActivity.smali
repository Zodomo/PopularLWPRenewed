.class public Lcom/google/ads/AdActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Lcom/google/ads/b/h;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/ads/AdActivity;

.field private static d:Lcom/google/ads/b/w;

.field private static e:Lcom/google/ads/AdActivity;

.field private static f:Lcom/google/ads/AdActivity;

.field private static final g:Lcom/google/ads/b;


# instance fields
.field private h:Lcom/google/ads/b/e;

.field private i:Landroid/widget/FrameLayout;

.field private j:I

.field private k:Landroid/view/ViewGroup;

.field private l:Z

.field private m:J

.field private n:Landroid/widget/RelativeLayout;

.field private o:Lcom/google/ads/AdActivity;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/google/ads/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/ads/b/h;->a:Lcom/google/ads/e/q;

    invoke-interface {v0}, Lcom/google/ads/e/q;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/h;

    sput-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/b/h;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    sput-object v1, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    sput-object v1, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    new-instance v0, Lcom/google/ads/b;

    invoke-direct {v0}, Lcom/google/ads/b;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/b/w;)Lcom/google/ads/b/w;
    .locals 0

    sput-object p0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    return-object p0
.end method

.method private a(Lcom/google/ads/b/e;ZIZZ)V
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/ads/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    sget v1, Lcom/google/ads/e/a;->a:I

    if-lt v1, v7, :cond_0

    iget-boolean v1, p0, Lcom/google/ads/AdActivity;->r:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    const/high16 v1, 0x1000000

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/b/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/b/e;->h()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-virtual {p1}, Lcom/google/ads/b/e;->f()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p3}, Lcom/google/ads/AdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p1, p0}, Lcom/google/ads/b/e;->setAdActivity(Lcom/google/ads/AdActivity;)V

    if-eqz p4, :cond_7

    const/16 v0, 0x32

    :goto_2
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/ads/AdActivity;->j:I

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/google/ads/AdActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/google/ads/AdActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p5}, Lcom/google/ads/AdActivity;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p4, :cond_8

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    iget-object v2, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_2

    sget-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/b/h;

    invoke-static {p1}, Lcom/google/ads/b/h;->a(Landroid/webkit/WebView;)V

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x20

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3
.end method

.method public static a(Lcom/google/ads/b/w;Lcom/google/ads/b/x;)V
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/b;

    invoke-static {p0, p1}, Lcom/google/ads/b;->a(Lcom/google/ads/b/w;Lcom/google/ads/b/x;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/b;

    invoke-static {}, Lcom/google/ads/b;->a()Z

    move-result v0

    return v0
.end method

.method private static c(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/b;

    invoke-static {}, Lcom/google/ads/b;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Lcom/google/ads/AdActivity;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method static synthetic f()Lcom/google/ads/AdActivity;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method static synthetic g()Lcom/google/ads/b/w;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->l:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/b/h;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-static {v0}, Lcom/google/ads/b/h;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/b/e;->setAdActivity(Lcom/google/ads/AdActivity;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/b/e;->setIsExpandedMraid(Z)V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->r:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->s:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->f()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    invoke-virtual {v0}, Lcom/google/ads/b/c;->d()V

    iput-object v2, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    :cond_2
    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_3

    sput-object v2, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    :cond_3
    iget-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    sput-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    sget-object v2, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    invoke-virtual {v2}, Lcom/google/ads/b/w;->k()Lcom/google/ads/b/e;

    move-result-object v2

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->a()V

    :cond_4
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->stopLoading()V

    :cond_5
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->r()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->l:Z

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    :cond_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->s:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->g()V

    goto :goto_0

    :cond_9
    :try_start_1
    invoke-static {}, Lcom/google/ads/e/i;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/ads/b/c;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    return-object v0
.end method

.method public final a(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    invoke-static {p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    invoke-virtual {v0}, Lcom/google/ads/b/c;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-nez p1, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/google/ads/AdActivity;->j:I

    iget v3, p0, Lcom/google/ads/AdActivity;->j:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final b(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/b/c;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/b/c;-><init>(Landroid/app/Activity;Lcom/google/ads/b/e;)V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->l()Lcom/google/ads/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/b/ad;->b()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v9, p0, Lcom/google/ads/AdActivity;->l:Z

    sget-object v2, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    if-eqz v0, :cond_5

    sget-object v11, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/b/w;

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_0

    sput-object p0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    invoke-virtual {v11}, Lcom/google/ads/b/w;->s()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    :cond_1
    sput-object p0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    invoke-virtual {v11}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-eq v0, p0, :cond_3

    :cond_2
    invoke-virtual {v11}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/bs;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {v11}, Lcom/google/ads/b/w;->v()V

    :cond_4
    invoke-virtual {v11}, Lcom/google/ads/b/w;->p()Z

    move-result v6

    invoke-virtual {v11}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bs;->d:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bq;

    iget-object v0, v0, Lcom/google/ads/bq;->b:Lcom/google/ads/e/ad;

    invoke-virtual {v0}, Lcom/google/ads/e/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/br;

    sget v3, Lcom/google/ads/e/a;->a:I

    iget-object v1, v0, Lcom/google/ads/br;->b:Lcom/google/ads/e/ae;

    invoke-virtual {v1}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v3, v1, :cond_6

    move v1, v8

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/AdActivity;->s:Z

    sget v1, Lcom/google/ads/e/a;->a:I

    iget-object v0, v0, Lcom/google/ads/br;->d:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_7

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->r:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    iput-boolean v9, p0, Lcom/google/ads/AdActivity;->p:Z

    iput-boolean v8, p0, Lcom/google/ads/AdActivity;->q:Z

    iput-object v5, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/b/c;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.ads.AdOpener"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    :goto_2
    return-void

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    move v1, v9

    goto :goto_0

    :cond_7
    move v0, v9

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/google/ads/b/x;

    invoke-direct {v1, v0}, Lcom/google/ads/b/x;-><init>(Landroid/os/Bundle;)V

    iget-object v0, v1, Lcom/google/ads/b/x;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/ads/b/x;->b:Ljava/util/HashMap;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez v7, :cond_9

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    goto :goto_2

    :cond_9
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v0, "u"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "i"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "p"

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "c"

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "f"

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "e"

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    move v7, v8

    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    move v10, v8

    :goto_4
    if-eqz v7, :cond_12

    if-eqz v10, :cond_12

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/google/ads/e/a;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_c

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: Could not parse component name from open GMSG: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    :cond_d
    aget-object v1, v0, v9

    aget-object v0, v0, v8

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    :goto_7
    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    :goto_8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_15

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "v"

    packed-switch v4, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Warning: Unknown type in extras from open GMSG: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->h()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_10
    move v7, v9

    goto/16 :goto_3

    :cond_11
    move v10, v9

    goto/16 :goto_4

    :cond_12
    if-eqz v7, :cond_13

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_13
    if-eqz v10, :cond_a

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_14
    if-eqz v7, :cond_b

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning: Could not parse flags from open GMSG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v9

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    goto/16 :goto_7

    :pswitch_0
    :try_start_4
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning: Could not parse extras from open GMSG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->h()V

    :cond_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v12, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    goto/16 :goto_2

    :pswitch_1
    :try_start_5
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_9

    :pswitch_2
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    :pswitch_3
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_9

    :pswitch_4
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_9

    :cond_16
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launching an intent from AdActivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    invoke-virtual {p0, v12}, Lcom/google/ads/AdActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/AdActivity;->m:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_17

    sput-object p0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    invoke-virtual {v11}, Lcom/google/ads/b/w;->t()V

    :cond_17
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1

    throw v0
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->d()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    goto/16 :goto_2

    :cond_18
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v0, Lcom/google/ads/b/e;

    invoke-virtual {v11}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bs;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/ads/b/e;-><init>(Lcom/google/ads/bs;Lcom/google/ads/g;)V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    sget-object v1, Lcom/google/ads/b/h;->d:Ljava/util/Map;

    if-nez v6, :cond_1a

    move v0, v8

    :goto_a
    invoke-static {v11, v1, v8, v0}, Lcom/google/ads/b/ad;->a(Lcom/google/ads/b/w;Ljava/util/Map;ZZ)Lcom/google/ads/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/b/ad;->d()V

    if-eqz v6, :cond_19

    invoke-virtual {v0}, Lcom/google/ads/b/ad;->a()V

    :cond_19
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v1, v0}, Lcom/google/ads/b/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "u"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "baseurl"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v1, v0}, Lcom/google/ads/b/e;->loadUrl(Ljava/lang/String;)V

    :goto_b
    const-string v0, "o"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/google/ads/e/a;->b()I

    move-result v3

    :goto_c
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    if-eqz v7, :cond_20

    const-string v0, "1"

    const-string v2, "custom_close"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v5, v8

    :goto_d
    move-object v0, p0

    move v2, v9

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/b/e;ZIZZ)V

    goto/16 :goto_2

    :cond_1a
    move v0, v9

    goto :goto_a

    :cond_1b
    if-eqz v2, :cond_1c

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/b/e;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1c
    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    goto/16 :goto_2

    :cond_1d
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/google/ads/e/a;->a()I

    move-result v3

    goto :goto_c

    :cond_1e
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_1f

    invoke-virtual {v11}, Lcom/google/ads/b/w;->n()I

    move-result v3

    goto :goto_c

    :cond_1f
    const/4 v3, -0x1

    goto :goto_c

    :cond_20
    move v5, v9

    goto :goto_d

    :cond_21
    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_22
    invoke-virtual {v11}, Lcom/google/ads/b/w;->k()Lcom/google/ads/b/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v11}, Lcom/google/ads/b/w;->n()I

    move-result v3

    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0, v8}, Lcom/google/ads/b/e;->setIsExpandedMraid(Z)V

    iput-boolean v9, p0, Lcom/google/ads/AdActivity;->q:Z

    if-eqz v7, :cond_23

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v9, v8

    :cond_23
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->r:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->s:Z

    if-nez v0, :cond_26

    invoke-static {}, Lcom/google/ads/e/i;->a()V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->g()V

    move v5, v9

    :goto_e
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    move-object v0, p0

    move v2, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/b/e;ZIZZ)V

    goto/16 :goto_2

    :cond_24
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->i()Z

    move-result v9

    move v5, v9

    goto :goto_e

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AdOpener, <action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/e/i;->c()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    goto/16 :goto_2

    :cond_26
    move v5, v9

    goto :goto_e

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/ads/AdActivity;->h()V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    invoke-virtual {v0}, Lcom/google/ads/b/e;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/b/e;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/AdActivity;->h()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/AdActivity;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/google/ads/e/i;->g()V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
