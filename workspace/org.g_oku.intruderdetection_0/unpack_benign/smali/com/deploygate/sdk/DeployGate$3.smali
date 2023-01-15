.class Lcom/deploygate/sdk/DeployGate$3;
.super Landroid/content/BroadcastReceiver;
.source "DeployGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deploygate/sdk/DeployGate;->prepareBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deploygate/sdk/DeployGate;


# direct methods
.method constructor <init>(Lcom/deploygate/sdk/DeployGate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate$3;->this$0:Lcom/deploygate/sdk/DeployGate;

    .line 250
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    if-nez p2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$3;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$19(Lcom/deploygate/sdk/DeployGate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$3;->this$0:Lcom/deploygate/sdk/DeployGate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$20(Lcom/deploygate/sdk/DeployGate;Z)V

    goto :goto_0
.end method
