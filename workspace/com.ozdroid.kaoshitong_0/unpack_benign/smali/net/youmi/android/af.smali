.class Lnet/youmi/android/af;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lnet/youmi/android/cn;

.field private b:Lnet/youmi/android/be;


# direct methods
.method constructor <init>(Lnet/youmi/android/cn;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/af;->a:Lnet/youmi/android/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lnet/youmi/android/be;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/af;->b:Lnet/youmi/android/be;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/be;

    invoke-direct {v0, p0}, Lnet/youmi/android/be;-><init>(Lnet/youmi/android/af;)V

    iput-object v0, p0, Lnet/youmi/android/af;->b:Lnet/youmi/android/be;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/af;->b:Lnet/youmi/android/be;

    return-object v0
.end method
