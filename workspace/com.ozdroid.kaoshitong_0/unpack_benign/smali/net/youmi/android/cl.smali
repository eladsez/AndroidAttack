.class Lnet/youmi/android/cl;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/youmi/android/y;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/cl;->b:Z

    return-void
.end method


# virtual methods
.method a()Lnet/youmi/android/y;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/y;

    return-object v0
.end method

.method a(Lnet/youmi/android/y;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/y;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/youmi/android/cl;->b:Z

    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/cl;->b:Z

    return v0
.end method
