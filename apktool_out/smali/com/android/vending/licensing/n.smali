.class final Lcom/android/vending/licensing/n;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/android/vending/licensing/l;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Lcom/android/vending/licensing/b;

.field private final f:Lcom/android/vending/licensing/q;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/q;Lcom/android/vending/licensing/b;Lcom/android/vending/licensing/l;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/vending/licensing/n;->f:Lcom/android/vending/licensing/q;

    iput-object p2, p0, Lcom/android/vending/licensing/n;->e:Lcom/android/vending/licensing/b;

    iput-object p3, p0, Lcom/android/vending/licensing/n;->a:Lcom/android/vending/licensing/l;

    iput p4, p0, Lcom/android/vending/licensing/n;->b:I

    iput-object p5, p0, Lcom/android/vending/licensing/n;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/vending/licensing/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/licensing/n;->a:Lcom/android/vending/licensing/l;

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->c()V

    return-void
.end method

.method final a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/licensing/n;->f:Lcom/android/vending/licensing/q;

    invoke-interface {v0, p1, p2}, Lcom/android/vending/licensing/q;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    iget-object v0, p0, Lcom/android/vending/licensing/n;->f:Lcom/android/vending/licensing/q;

    invoke-interface {v0}, Lcom/android/vending/licensing/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/licensing/n;->a:Lcom/android/vending/licensing/l;

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/vending/licensing/n;->a:Lcom/android/vending/licensing/l;

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->b()V

    goto :goto_0
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/licensing/n;->a:Lcom/android/vending/licensing/l;

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->b()V

    return-void
.end method
