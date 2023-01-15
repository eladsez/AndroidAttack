.class Lnet/youmi/android/ci;
.super Lnet/youmi/android/v;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/v;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ci;->b:Ljava/lang/String;

    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->b:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ci;->c:Ljava/lang/String;

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->c:Ljava/lang/String;

    return-object v0
.end method
