.class public Lcom/CatShockEntertainment/LiveWallpaperLib/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
.implements Lcom/CatShockEntertainment/LiveWallpaperLib/i;


# static fields
.field protected static f:Landroid/media/audiofx/Visualizer;

.field protected static final g:Ljava/util/concurrent/locks/Lock;

.field public static i:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Z

.field protected h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    const-string v0, "GLWallpaperStdRenderer"

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->d:I

    iput-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->e:Z

    iput-object p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to locate assets, aborting..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a(Landroid/view/MotionEvent;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;II)V
    .locals 3

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a(FFII)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    new-instance v0, Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getCaptureSize()I

    move-result v0

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->h:I

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Visualizer SamplingRate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getSamplingRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Visualizer CaptureSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v0

    sget-object v1, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Visualizer CaptureSizeRange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v1, 0x400

    iput v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->h:I

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->h:I

    const/4 v2, 0x1

    aget v2, v0, v2

    if-le v1, v2, :cond_3

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->h:I

    :cond_3
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->h:I

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    :cond_4
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    sget-object v1, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_5
    throw v0
.end method

.method private static c(Z)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_4

    sget-object v1, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_4
    throw v0
.end method

.method private d(Z)V
    .locals 0

    invoke-static {p1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->c(Z)V

    invoke-direct {p0, p1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->d(Z)V

    :cond_0
    return-void
.end method

.method public a(FFII)V
    .locals 0

    return-void
.end method

.method public final a(II)V
    .locals 2

    iput p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->b:I

    iput p2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->c:I

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->b:I

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->c(II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->d:I

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a(Landroid/view/MotionEvent;I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a(Landroid/view/MotionEvent;I)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v2, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a(Landroid/view/MotionEvent;II)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v3, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a(Landroid/view/MotionEvent;II)V

    :cond_5
    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->d(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->c(Z)V

    goto :goto_0
.end method

.method public a([B[BII)V
    .locals 0

    return-void
.end method

.method public final b(II)V
    .locals 2

    iput p1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->b:I

    iput p2, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->c:I

    iget v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->b:I

    iget v1, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->d(II)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 4

    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    invoke-virtual {p0}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->e()V

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->b(Z)V

    :cond_0
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getCaptureSize()I

    move-result v0

    new-array v1, v0, [B

    new-array v2, v0, [B

    sget-object v3, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3, v1}, Landroid/media/audiofx/Visualizer;->getFft([B)I

    sget-object v3, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3, v2}, Landroid/media/audiofx/Visualizer;->getWaveForm([B)I

    sget-object v3, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Visualizer;->getSamplingRate()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->a([B[BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->f:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->d(Z)V

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public c(II)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 2

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Visualizer -> onFftDataCapture: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x200

    aget-byte v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 2

    sget-object v0, Lcom/CatShockEntertainment/LiveWallpaperLib/j;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Visualizer -> doSetFFTWaveForm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x200

    aget-byte v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
