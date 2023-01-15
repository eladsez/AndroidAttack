.class Lcom/eaglerex/mcpemodificator/ny;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/splash;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/splash;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/ny;->a:Lcom/eaglerex/mcpemodificator/splash;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/eaglerex/mcpemodificator/ny;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAINACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/ny;->a:Lcom/eaglerex/mcpemodificator/splash;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/splash;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAINACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/ny;->a:Lcom/eaglerex/mcpemodificator/splash;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/splash;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.eaglerex.mcpemodificator.MAINACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/ny;->a:Lcom/eaglerex/mcpemodificator/splash;

    invoke-virtual {v2, v1}, Lcom/eaglerex/mcpemodificator/splash;->startActivity(Landroid/content/Intent;)V

    throw v0
.end method
