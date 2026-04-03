.class public final Lcom/google/ads/ai;
.super Lcom/google/ads/ah;


# static fields
.field static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/String;

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/ai;->d:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/google/ads/ai;->e:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/google/ads/ai;->f:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/google/ads/ai;->g:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/google/ads/ai;->h:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/google/ads/ai;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/ads/ai;->j:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/ads/ai;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/ah;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/ads/ai;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/ads/ai;->b(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/google/ads/ai;

    invoke-direct {v0, p1}, Lcom/google/ads/ai;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/ads/ai;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/ads/ai;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/ads/am;->a([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/an; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ads/ao; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .locals 4

    sget-object v0, Lcom/google/ads/ai;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/ads/ai;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b()Ljava/lang/Long;
    .locals 3

    sget-object v0, Lcom/google/ads/ai;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/ads/ai;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 11

    const/4 v0, 0x0

    const-class v1, Lcom/google/ads/ai;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/google/ads/ai;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    sput-object p0, Lcom/google/ads/ai;->i:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/ads/aj; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "ARuhFl7nBw/97YxsDjOCIqF0d9D2SpkzcWN42U/KR6Q="

    invoke-static {v2}, Lcom/google/ads/ap;->a(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    new-instance v0, Lcom/google/ads/an;

    invoke-direct {v0}, Lcom/google/ads/an;-><init>()V

    throw v0
    :try_end_2
    .catch Lcom/google/ads/ao; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/ads/an; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/google/ads/aj; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/google/ads/aj;

    invoke-direct {v2, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Lcom/google/ads/aj; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v3, 0x4

    const/16 v4, 0x10

    :try_start_4
    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_2

    aget-byte v2, v3, v0

    xor-int/lit8 v2, v2, 0x44

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "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"

    invoke-static {v3, v0}, Lcom/google/ads/am;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "dex"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0
    :try_end_4
    .catch Lcom/google/ads/ao; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/ads/an; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/google/ads/aj; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v2, Lcom/google/ads/aj;

    invoke-direct {v2, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Lcom/google/ads/aj; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_6
    const-string v4, "ads"

    const-string v5, ".jar"

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v2, v5, v6, v7, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v5, "KXbn1K9Cz2ZgeOTJa+Veo9TtqgqFQ49etShsU9z+UAP37syBIxS/qy9gK8yB2kKw"

    invoke-static {v3, v5}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "XRMsX/JQwPQGX7sOWjvg2nQVjUMO7xUcwxz6xwHRTKyo/tTIVco9OqenUPNGgQDi"

    invoke-static {v3, v6}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "/XHxH5XHwv8SxKlJV4XyYOIB7MuqmSwqMacPj1bbgbS8IA8tETEArriXswHCehFP"

    invoke-static {v3, v7}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "H7bkbmrRKL7RuC3umfv5Gfu9Jh+fRNmOXlqAhgMuKVVZSJvQgYyRy7HjcKaVodcc"

    invoke-static {v3, v8}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "XONjIhr7f5+v7VYE2sRnrybwgpe9YIOqpcEHDUiel7EzNqAyI0RSFuWdEz2ratN+"

    invoke-static {v3, v9}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v9, "cbSAmn5ZqTUlLC/bgOZkEzXGEOY21uWifgdKJs9yk7A="

    invoke-static {v3, v9}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/ai;->d:Ljava/lang/reflect/Method;

    const-string v5, "m02zlU+rWIGC8/SRFpMtHvda14INo+uzPhZo7qXgVHk="

    invoke-static {v3, v5}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/ai;->e:Ljava/lang/reflect/Method;

    const-string v5, "Jil+B/2MHKx+6dpy/2xm493DojzmiB3wB5+eGz7hPDU="

    invoke-static {v3, v5}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v9

    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/ai;->f:Ljava/lang/reflect/Method;

    const-string v5, "o/Z2yPrC7bUJNorc5zvYvC8KtIwAULd35yQfACbwNXc="

    invoke-static {v3, v5}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v9, Landroid/view/MotionEvent;

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v6, v7

    invoke-virtual {v8, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/ai;->g:Ljava/lang/reflect/Method;

    const-string v5, "LbZjxcpsz6RheqLbO48YwKTUVh9wQrFoY7gJK2jAZFI="

    invoke-static {v3, v5}, Lcom/google/ads/ai;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/ai;->h:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    const-string v4, ".jar"

    const-string v5, ".dex"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Lcom/google/ads/ao; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/ads/an; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/google/ads/aj; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/google/ads/ai;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/google/ads/ai;->j:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/ai;->c:Z
    :try_end_7
    .catch Lcom/google/ads/aj; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_4
    move-exception v0

    :try_start_8
    new-instance v2, Lcom/google/ads/aj;

    invoke-direct {v2, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    new-instance v2, Lcom/google/ads/aj;

    invoke-direct {v2, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v0

    new-instance v2, Lcom/google/ads/aj;

    invoke-direct {v2, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception v0

    new-instance v2, Lcom/google/ads/aj;

    invoke-direct {v2, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_8
    move-exception v0

    new-instance v2, Lcom/google/ads/aj;

    invoke-direct {v2, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catch Lcom/google/ads/aj; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/ads/ai;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/ads/ai;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/ads/ai;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/ads/ai;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/ads/ai;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/ads/ai;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/ads/aj;

    invoke-direct {v0}, Lcom/google/ads/aj;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/ap;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, v0}, Lcom/google/ads/aj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/ads/ai;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ai;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/aj; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/ads/ai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ai;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/ads/aj; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/16 v0, 0x19

    :try_start_2
    invoke-static {}, Lcom/google/ads/ai;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/ads/ai;->a(IJ)V
    :try_end_2
    .catch Lcom/google/ads/aj; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    const/16 v0, 0x18

    :try_start_3
    invoke-static {p1}, Lcom/google/ads/ai;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ai;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/google/ads/aj; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    invoke-static {}, Lcom/google/ads/ai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ai;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/aj; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/ads/ai;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ai;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/ads/aj; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/ads/ai;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/ai;->a(IJ)V

    sget-wide v2, Lcom/google/ads/ai;->j:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    sget-wide v4, Lcom/google/ads/ai;->j:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/ai;->a(IJ)V

    const/16 v0, 0x17

    sget-wide v2, Lcom/google/ads/ai;->j:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/ads/ai;->a(IJ)V
    :try_end_2
    .catch Lcom/google/ads/aj; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/google/ads/ai;->a:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/ads/ai;->b:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/google/ads/ai;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/ads/ai;->a(IJ)V

    const/16 v2, 0xf

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/ads/ai;->a(IJ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/16 v2, 0x10

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/ai;->a(IJ)V
    :try_end_3
    .catch Lcom/google/ads/aj; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_3
    const/16 v0, 0x1b

    :try_start_4
    invoke-static {p1}, Lcom/google/ads/ai;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ai;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/google/ads/aj; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
