.class Lcom/deploygate/sdk/DeployGate$4;
.super Ljava/lang/Object;
.source "DeployGate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deploygate/sdk/DeployGate;->bindToService(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deploygate/sdk/DeployGate;

.field private final synthetic val$isBoot:Z


# direct methods
.method constructor <init>(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate$4;->this$0:Lcom/deploygate/sdk/DeployGate;

    iput-boolean p2, p0, Lcom/deploygate/sdk/DeployGate$4;->val$isBoot:Z

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 267
    const-string v0, "DeployGate"

    const-string v1, "DeployGate service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$4;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {p2}, Lcom/deploygate/service/IDeployGateSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/deploygate/service/IDeployGateSdkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$21(Lcom/deploygate/sdk/DeployGate;Lcom/deploygate/service/IDeployGateSdkService;)V

    .line 269
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$4;->this$0:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v1, p0, Lcom/deploygate/sdk/DeployGate$4;->val$isBoot:Z

    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$22(Lcom/deploygate/sdk/DeployGate;Z)V

    .line 270
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 274
    const-string v0, "DeployGate"

    const-string v1, "DeployGate service disconneced"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$4;->this$0:Lcom/deploygate/sdk/DeployGate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$21(Lcom/deploygate/sdk/DeployGate;Lcom/deploygate/service/IDeployGateSdkService;)V

    .line 276
    return-void
.end method
