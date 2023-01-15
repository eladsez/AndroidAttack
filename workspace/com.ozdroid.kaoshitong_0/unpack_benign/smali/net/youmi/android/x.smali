.class Lnet/youmi/android/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lnet/youmi/android/AdView;

.field b:Lnet/youmi/android/y;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lnet/youmi/android/AdView;Lnet/youmi/android/y;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe9

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/x;->b:Lnet/youmi/android/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/x;->a:Lnet/youmi/android/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/x;->a:Lnet/youmi/android/AdView;

    iget-object v1, p0, Lnet/youmi/android/x;->b:Lnet/youmi/android/y;

    invoke-virtual {v0, v1}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/y;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
