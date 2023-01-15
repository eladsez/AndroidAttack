.class Lnet/youmi/android/cn;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/youmi/android/cn;


# instance fields
.field private b:Lnet/youmi/android/af;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/youmi/android/af;

    invoke-direct {v0, p0}, Lnet/youmi/android/af;-><init>(Lnet/youmi/android/cn;)V

    iput-object v0, p0, Lnet/youmi/android/cn;->b:Lnet/youmi/android/af;

    return-void
.end method

.method static a()Lnet/youmi/android/cn;
    .locals 1

    sget-object v0, Lnet/youmi/android/cn;->a:Lnet/youmi/android/cn;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/cn;

    invoke-direct {v0}, Lnet/youmi/android/cn;-><init>()V

    sput-object v0, Lnet/youmi/android/cn;->a:Lnet/youmi/android/cn;

    :cond_0
    sget-object v0, Lnet/youmi/android/cn;->a:Lnet/youmi/android/cn;

    return-object v0
.end method


# virtual methods
.method b()Lnet/youmi/android/af;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cn;->b:Lnet/youmi/android/af;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/af;

    invoke-direct {v0, p0}, Lnet/youmi/android/af;-><init>(Lnet/youmi/android/cn;)V

    iput-object v0, p0, Lnet/youmi/android/cn;->b:Lnet/youmi/android/af;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cn;->b:Lnet/youmi/android/af;

    return-object v0
.end method
