.class Lnet/youmi/android/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lnet/youmi/android/p;->a:Landroid/content/Context;

    const-string v0, "sendStartUpLog2"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/p;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "sendStartUpLog3"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/ag;->a()Lnet/youmi/android/ag;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/p;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/youmi/android/ag;->a(Landroid/content/Context;)V

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lnet/youmi/android/ag;->a()Lnet/youmi/android/ag;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ag;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {}, Lnet/youmi/android/ag;->a()Lnet/youmi/android/ag;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/ag;->c()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-nez v0, :cond_3

    :try_start_4
    const-string v0, ""

    move-object v1, v0

    :goto_3
    if-nez v2, :cond_1

    const-string v0, ""

    move-object v2, v0

    :cond_1
    const-string v0, ""

    const-string v3, ""

    iget-object v4, p0, Lnet/youmi/android/p;->a:Landroid/content/Context;

    invoke-static {v4}, Lnet/youmi/android/cg;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v0

    :goto_4
    const-string v0, "sendStartUpLog4"

    invoke-static {v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/p;->a:Landroid/content/Context;

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/bp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v4, v3

    move-object v3, v0

    goto :goto_4

    :cond_3
    move-object v1, v0

    goto :goto_3
.end method
