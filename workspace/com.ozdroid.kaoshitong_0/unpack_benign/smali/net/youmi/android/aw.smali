.class Lnet/youmi/android/aw;
.super Lnet/youmi/android/v;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/v;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/aw;->a:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->a:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/aw;->b:Ljava/lang/String;

    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/aw;->c:Ljava/lang/String;

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->c:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/aw;->d:Ljava/lang/String;

    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->d:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnet/youmi/android/aw;->e:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->e:Ljava/lang/String;

    return-object v0
.end method
