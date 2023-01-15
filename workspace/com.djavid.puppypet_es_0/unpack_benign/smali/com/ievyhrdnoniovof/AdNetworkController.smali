.class public Lcom/ievyhrdnoniovof/AdNetworkController;
.super Lcom/ievyhrdnoniovof/AdController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ievyhrdnoniovof/AdNetworkController$1;
    }
.end annotation


# static fields
.field private static final synthetic E:Ljava/lang/String; = "AdOrmmaNetworkController"


# instance fields
.field private synthetic M:Landroid/content/IntentFilter;

.field private synthetic k:Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;

.field private synthetic l:I

.field private synthetic m:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V
    .locals 1
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Landroid/content/Context;

    .prologue
    const-string v0, "D>I?B2S8Q8S("

    invoke-direct {p0, p1, p2}, Lcom/ievyhrdnoniovof/AdController;-><init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->m:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getNetwork()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->m:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const-string v0, "\'\u00079\u0007=\u001e<"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    const-string v0, ">A7K8I4"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "AdOrmmaNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\u000e7\u001d\u001c\u000c&\u001e=\u001b9Sr"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    sget-object v2, Lcom/ievyhrdnoniovof/AdNetworkController$1;->k:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "\n7\u0005>"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "\'\u00079\u0007=\u001e<"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, ">A7K8I4"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "P8A8"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionChanged()V
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "&N?C>P\u007fH#J<F\'N4P\u007fA8U4d9F?@4b\'B?Sy\\qI4S&H#Lk\u0007v"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdNetworkController;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "N/@i"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdOrmmaNetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->d:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public startNetworkListener()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->l:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;-><init>(Lcom/ievyhrdnoniovof/AdNetworkController;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->k:Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->M:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->M:Landroid/content/IntentFilter;

    const-string v1, "\u0008<\r \u0006;\r|\u00077\u001d|\n=\u0007<G\u0011&\u001c\'\u0017*\u0006 \u0004 \u00060\r*\u001a(\u001c.\u0017"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->l:I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->W:Landroid/content/Context;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->k:Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->M:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopAllListeners()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->l:I

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->W:Landroid/content/Context;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->k:Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopNetworkListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->l:I

    iget v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->W:Landroid/content/Context;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->k:Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->k:Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;

    iput-object v2, p0, Lcom/ievyhrdnoniovof/AdNetworkController;->M:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method
