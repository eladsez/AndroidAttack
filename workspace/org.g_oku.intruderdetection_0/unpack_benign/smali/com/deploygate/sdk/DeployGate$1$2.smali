.class Lcom/deploygate/sdk/DeployGate$1$2;
.super Ljava/lang/Object;
.source "DeployGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deploygate/sdk/DeployGate$1;->onUpdateArrived(ILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/deploygate/sdk/DeployGate$1;

.field private final synthetic val$serial:I

.field private final synthetic val$versionCode:I

.field private final synthetic val$versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deploygate/sdk/DeployGate$1;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate$1$2;->this$1:Lcom/deploygate/sdk/DeployGate$1;

    iput p2, p0, Lcom/deploygate/sdk/DeployGate$1$2;->val$serial:I

    iput-object p3, p0, Lcom/deploygate/sdk/DeployGate$1$2;->val$versionName:Ljava/lang/String;

    iput p4, p0, Lcom/deploygate/sdk/DeployGate$1$2;->val$versionCode:I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 182
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate$1$2;->this$1:Lcom/deploygate/sdk/DeployGate$1;

    invoke-static {v1}, Lcom/deploygate/sdk/DeployGate$1;->access$0(Lcom/deploygate/sdk/DeployGate$1;)Lcom/deploygate/sdk/DeployGate;

    move-result-object v1

    invoke-static {v1}, Lcom/deploygate/sdk/DeployGate;->access$12(Lcom/deploygate/sdk/DeployGate;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    return-void

    .line 182
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deploygate/sdk/DeployGateCallback;

    .line 183
    .local v0, "callback":Lcom/deploygate/sdk/DeployGateCallback;
    iget v2, p0, Lcom/deploygate/sdk/DeployGate$1$2;->val$serial:I

    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate$1$2;->val$versionName:Ljava/lang/String;

    iget v4, p0, Lcom/deploygate/sdk/DeployGate$1$2;->val$versionCode:I

    invoke-interface {v0, v2, v3, v4}, Lcom/deploygate/sdk/DeployGateCallback;->onUpdateAvailable(ILjava/lang/String;I)V

    goto :goto_0
.end method
