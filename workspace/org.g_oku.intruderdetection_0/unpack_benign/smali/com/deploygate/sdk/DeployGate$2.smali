.class Lcom/deploygate/sdk/DeployGate$2;
.super Ljava/lang/Object;
.source "DeployGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deploygate/sdk/DeployGate;->callbackDeployGateUnavailable()V
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
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate$2;->this$0:Lcom/deploygate/sdk/DeployGate;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate$2;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v1}, Lcom/deploygate/sdk/DeployGate;->access$12(Lcom/deploygate/sdk/DeployGate;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    return-void

    .line 194
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deploygate/sdk/DeployGateCallback;

    .line 195
    .local v0, "callback":Lcom/deploygate/sdk/DeployGateCallback;
    invoke-interface {v0, v3}, Lcom/deploygate/sdk/DeployGateCallback;->onInitialized(Z)V

    .line 196
    const/4 v2, 0x0

    invoke-interface {v0, v3, v3, v2, v3}, Lcom/deploygate/sdk/DeployGateCallback;->onStatusChanged(ZZLjava/lang/String;Z)V

    goto :goto_0
.end method
