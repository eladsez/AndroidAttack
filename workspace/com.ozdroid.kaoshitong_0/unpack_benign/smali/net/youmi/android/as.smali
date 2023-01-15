.class Lnet/youmi/android/as;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lnet/youmi/android/u;ILjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lnet/youmi/android/u;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf9

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static a(Lnet/youmi/android/u;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lnet/youmi/android/u;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf4

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static b(Lnet/youmi/android/u;ILjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lnet/youmi/android/u;->b(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
