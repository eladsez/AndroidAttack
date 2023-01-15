.class public Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic k:Lcom/ievyhrdnoniovof/AdNetworkController;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdNetworkController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdNetworkController;

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;->k:Lcom/ievyhrdnoniovof/AdNetworkController;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "y~|bwy|>vul>{\u007fv~6SW^VU[DQFQDAO[XY^_U"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdNetworkBroadcastReceiver;->k:Lcom/ievyhrdnoniovof/AdNetworkController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdNetworkController;->onConnectionChanged()V

    :cond_0
    return-void
.end method
