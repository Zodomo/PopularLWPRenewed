.class public final Lcom/android/vending/licensing/s;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/SharedPreferences$Editor;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/android/vending/licensing/p;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/android/vending/licensing/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/vending/licensing/s;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/vending/licensing/s;->c:Lcom/android/vending/licensing/p;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/licensing/s;->a:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/vending/licensing/s;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/licensing/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/licensing/s;->a:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/android/vending/licensing/s;->c:Lcom/android/vending/licensing/p;

    invoke-interface {v0, p2}, Lcom/android/vending/licensing/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/licensing/s;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/vending/licensing/s;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/vending/licensing/s;->c:Lcom/android/vending/licensing/p;

    invoke-interface {v1, v0}, Lcom/android/vending/licensing/p;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/vending/licensing/v; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validation error while reading preference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
