.class public Lcom/ievyhrdnoniovof/ReEngagementService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic l(Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "H\u0000X\u0011R\nU\u000c_"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "6^\u0017M\u000cX\u0000\u001b\u0016O\u0004I\u0011i\u0000~\u000b\\\u0004\\\u0000V\u0000U\u0011\u001bX\u001b"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/ReEngagementService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "5I\u0000]\u0000I\u0000U\u0006^"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "I\u0000^\u000b\\\u0004\\\u0000V\u0000U\u0011Z\tZ\u0017V"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    new-instance v1, Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/ReEngagementService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdController;->loadReEngagement()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Lcom/ievyhrdnoniovof/AdWakeLock;->release()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ievyhrdnoniovof/AdWakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ievyhrdnoniovof/AdWakeLock;->release()V

    throw v0
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

    invoke-direct {p0, p1}, Lcom/ievyhrdnoniovof/ReEngagementService;->l(Landroid/content/Intent;)V

    return v0
.end method
