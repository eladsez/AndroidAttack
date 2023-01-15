.class public Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic k:I

.field private synthetic m:Lcom/ievyhrdnoniovof/AdDisplayController;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdDisplayController;)V
    .locals 1
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdDisplayController;

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;->m:Lcom/ievyhrdnoniovof/AdDisplayController;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;->m:Lcom/ievyhrdnoniovof/AdDisplayController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdDisplayController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;->k:I

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

    const-string v1, "\u0012-\u00171\u001c*\u0017m\u001a-\u0007&\u001d7]\"\u00107\u001a,\u001dm0\u000c=\u0005:\u0004&\u00112\u0017:\u000c=\u001c0\u000b2\r4\u00067"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;->m:Lcom/ievyhrdnoniovof/AdDisplayController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdDisplayController;->getOrientation()I

    move-result v0

    iget v1, p0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;->k:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;->k:I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;->m:Lcom/ievyhrdnoniovof/AdDisplayController;

    iget v1, p0, Lcom/ievyhrdnoniovof/AdConfigurationBroadcastReceiver;->k:I

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdDisplayController;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method
