.class Lnet/youmi/android/ae;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lnet/youmi/android/bl;

.field private c:Lnet/youmi/android/bm;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x9

    iput v0, p0, Lnet/youmi/android/ae;->a:I

    sget-object v0, Lnet/youmi/android/bm;->a:Lnet/youmi/android/bm;

    iput-object v0, p0, Lnet/youmi/android/ae;->c:Lnet/youmi/android/bm;

    return-void
.end method


# virtual methods
.method a()Lnet/youmi/android/bl;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ae;->b:Lnet/youmi/android/bl;

    return-object v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lnet/youmi/android/ae;->a:I

    return-void
.end method

.method a(Lnet/youmi/android/bl;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ae;->b:Lnet/youmi/android/bl;

    return-void
.end method

.method a(Lnet/youmi/android/bm;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ae;->c:Lnet/youmi/android/bm;

    return-void
.end method
