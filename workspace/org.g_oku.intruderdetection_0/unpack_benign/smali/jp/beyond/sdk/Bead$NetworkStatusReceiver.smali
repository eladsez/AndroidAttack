.class public Ljp/beyond/sdk/Bead$NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/Bead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/Bead;


# direct methods
.method public constructor <init>(Ljp/beyond/sdk/Bead;)V
    .locals 0

    .prologue
    .line 1960
    iput-object p1, p0, Ljp/beyond/sdk/Bead$NetworkStatusReceiver;->this$0:Ljp/beyond/sdk/Bead;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1965
    iget-object v0, p0, Ljp/beyond/sdk/Bead$NetworkStatusReceiver;->this$0:Ljp/beyond/sdk/Bead;

    invoke-virtual {v0, p1}, Ljp/beyond/sdk/Bead;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1966
    const-string v0, "BEAD "

    const-string v1, "Network Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-static {}, Ljp/beyond/sdk/Bead;->access$0()Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1968
    new-instance v0, Ljp/beyond/sdk/Bead$NetworkStatusReceiver$1;

    invoke-direct {v0, p0}, Ljp/beyond/sdk/Bead$NetworkStatusReceiver$1;-><init>(Ljp/beyond/sdk/Bead$NetworkStatusReceiver;)V

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$1(Landroid/content/BroadcastReceiver;)V

    .line 1979
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-static {}, Ljp/beyond/sdk/Bead;->access$0()Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "jp.beyond.MESSAGE_RECEIVED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1985
    :cond_0
    iget-object v0, p0, Ljp/beyond/sdk/Bead$NetworkStatusReceiver;->this$0:Ljp/beyond/sdk/Bead;

    invoke-static {v0}, Ljp/beyond/sdk/Bead;->access$2(Ljp/beyond/sdk/Bead;)Ljp/beyond/sdk/BeadConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljp/beyond/sdk/BeadConnection;->executeRequest()V

    .line 1986
    const-string v0, "BEAD "

    const-string v1, "Re-Request Data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :goto_0
    return-void

    .line 1990
    :cond_1
    const-string v0, "BEAD "

    const-string v1, "Network Not Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
