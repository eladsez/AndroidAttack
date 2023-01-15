.class public Lcom/ievyhrdnoniovof/AdJSInterface;
.super Ljava/lang/Object;


# instance fields
.field private synthetic M:Lcom/ievyhrdnoniovof/AdListener;

.field private synthetic k:Landroid/content/Context;

.field private synthetic m:Lcom/ievyhrdnoniovof/AdController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdListener;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdController;
    .param p3, "arg2"    # Lcom/ievyhrdnoniovof/AdListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->m:Lcom/ievyhrdnoniovof/AdController;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->M:Lcom/ievyhrdnoniovof/AdListener;

    return-void
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdListener;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdJSInterface;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->M:Lcom/ievyhrdnoniovof/AdListener;

    return-object v0
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdJSInterface;)Lcom/ievyhrdnoniovof/AdController;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdJSInterface;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->m:Lcom/ievyhrdnoniovof/AdController;

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, -0x1

    xor-int/lit8 v0, v0, 0x10

    int-to-char v0, v0

    aput-char v0, v3, v1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x18

    int-to-char v1, v1

    aput-char v1, v3, v4

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private synthetic l()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->k:Landroid/content/Context;

    const-string v1, "\u0013\u0001&\u0015&\u0001&\u001d \u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "YTGST_KUZELDW^GSTY[[]T"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/ievyhrdnoniovof/AdJSInterface$2;

    invoke-direct {v1, p0}, Lcom/ievyhrdnoniovof/AdJSInterface$2;-><init>(Lcom/ievyhrdnoniovof/AdJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdJSInterface;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public complete()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->m:Lcom/ievyhrdnoniovof/AdController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->setCompleted(Z)V

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdJSInterface;->l()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->m:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->triggerAdCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0004\u001c*\u001d$S7\u001cc\u00031\u001c \u00160\u0000c26\u0017*\u001cc&\u0011?0SnS"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "40"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->m:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/ievyhrdnoniovof/AdController;->checkForAudioAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdJSInterface;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/ievyhrdnoniovof/AdJSInterface$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ievyhrdnoniovof/AdJSInterface$1;-><init>(Lcom/ievyhrdnoniovof/AdJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
