.class Lnet/youmi/android/be;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lnet/youmi/android/af;


# direct methods
.method constructor <init>(Lnet/youmi/android/af;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/be;->a:Lnet/youmi/android/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lnet/youmi/android/u;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :try_start_0
    const-string v1, "\u8fde\u63a5\u7f51\u7edc..."

    invoke-interface {p1, v0, v1}, Lnet/youmi/android/u;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Lnet/youmi/android/u;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x19

    :try_start_0
    const-string v1, "\u6b63\u5728\u63a5\u6536\u6570\u636e..."

    invoke-interface {p1, v0, v1}, Lnet/youmi/android/u;->b(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method c(Lnet/youmi/android/u;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :try_start_0
    const-string v1, "\u63a5\u6536\u6570\u636e\u5b8c\u6210..."

    invoke-interface {p1, v0, v1}, Lnet/youmi/android/u;->b(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
