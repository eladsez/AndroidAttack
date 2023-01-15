.class Ljp/beyond/sdk/Bead$1;
.super Landroid/content/BroadcastReceiver;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/Bead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/Bead;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/Bead;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/Bead$1;->this$0:Ljp/beyond/sdk/Bead;

    .line 311
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 314
    .local v2, "noConnectivity":Z
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "reason":Ljava/lang/String;
    const-string v5, "isFailover"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 317
    .local v1, "isFailover":Z
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 318
    .local v0, "currentNetworkInfo":Landroid/net/NetworkInfo;
    const-string v5, "otherNetwork"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 320
    .local v3, "otherNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    iget-object v5, p0, Ljp/beyond/sdk/Bead$1;->this$0:Ljp/beyond/sdk/Bead;

    invoke-virtual {v5}, Ljp/beyond/sdk/Bead;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Connected"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v5, p0, Ljp/beyond/sdk/Bead$1;->this$0:Ljp/beyond/sdk/Bead;

    invoke-virtual {v5}, Ljp/beyond/sdk/Bead;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Not Connected"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
