.class Lcom/deploygate/sdk/DeployGate$1;
.super Lcom/deploygate/service/IDeployGateSdkServiceCallback$Stub;
.source "DeployGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deploygate/sdk/DeployGate;
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
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    .line 93
    invoke-direct {p0}, Lcom/deploygate/service/IDeployGateSdkServiceCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/deploygate/sdk/DeployGate$1;)Lcom/deploygate/sdk/DeployGate;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    return-object v0
.end method

.method private onEnableLogcat(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$2(Lcom/deploygate/sdk/DeployGate;)Lcom/deploygate/service/IDeployGateSdkService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-eqz p1, :cond_3

    .line 134
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    new-instance v1, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;

    .line 136
    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v2}, Lcom/deploygate/sdk/DeployGate;->access$1(Lcom/deploygate/sdk/DeployGate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v3}, Lcom/deploygate/sdk/DeployGate;->access$2(Lcom/deploygate/sdk/DeployGate;)Lcom/deploygate/service/IDeployGateSdkService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;-><init>(Ljava/lang/String;Lcom/deploygate/service/IDeployGateSdkService;Z)V

    .line 135
    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$3(Lcom/deploygate/sdk/DeployGate;Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;)V

    .line 137
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v2}, Lcom/deploygate/sdk/DeployGate;->access$4(Lcom/deploygate/sdk/DeployGate;)Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$5(Lcom/deploygate/sdk/DeployGate;Ljava/lang/Thread;)V

    .line 138
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$4(Lcom/deploygate/sdk/DeployGate;)Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;->stop()V

    .line 143
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private onInitialized(ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "isManaged"    # Z
    .param p2, "isAuthorized"    # Z
    .param p3, "loginUsername"    # Ljava/lang/String;
    .param p4, "isStopped"    # Z
    .param p5, "author"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "DeployGate"

    const-string v1, "DeployGate service initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0, p1}, Lcom/deploygate/sdk/DeployGate;->access$6(Lcom/deploygate/sdk/DeployGate;Z)V

    .line 153
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0, p2}, Lcom/deploygate/sdk/DeployGate;->access$7(Lcom/deploygate/sdk/DeployGate;Z)V

    .line 154
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0, p4}, Lcom/deploygate/sdk/DeployGate;->access$8(Lcom/deploygate/sdk/DeployGate;Z)V

    .line 155
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0, p3}, Lcom/deploygate/sdk/DeployGate;->access$9(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0, p5}, Lcom/deploygate/sdk/DeployGate;->access$10(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$11(Lcom/deploygate/sdk/DeployGate;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/deploygate/sdk/DeployGate$1$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/deploygate/sdk/DeployGate$1$1;-><init>(Lcom/deploygate/sdk/DeployGate$1;ZZLjava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$13(Lcom/deploygate/sdk/DeployGate;Z)V

    .line 169
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$14(Lcom/deploygate/sdk/DeployGate;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 170
    return-void
.end method

.method private onOneshotLogcat()V
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    new-instance v1, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;

    .line 123
    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v2}, Lcom/deploygate/sdk/DeployGate;->access$1(Lcom/deploygate/sdk/DeployGate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v3}, Lcom/deploygate/sdk/DeployGate;->access$2(Lcom/deploygate/sdk/DeployGate;)Lcom/deploygate/service/IDeployGateSdkService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;-><init>(Ljava/lang/String;Lcom/deploygate/service/IDeployGateSdkService;Z)V

    .line 122
    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$3(Lcom/deploygate/sdk/DeployGate;Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;)V

    .line 124
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v2}, Lcom/deploygate/sdk/DeployGate;->access$4(Lcom/deploygate/sdk/DeployGate;)Lcom/deploygate/sdk/DeployGate$LogCatTranportWorker;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$5(Lcom/deploygate/sdk/DeployGate;Ljava/lang/Thread;)V

    .line 125
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$0(Lcom/deploygate/sdk/DeployGate;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    :cond_1
    return-void
.end method

.method private onUpdateArrived(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/deploygate/sdk/DeployGate;->access$15(Lcom/deploygate/sdk/DeployGate;Z)V

    .line 175
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0, p1}, Lcom/deploygate/sdk/DeployGate;->access$16(Lcom/deploygate/sdk/DeployGate;I)V

    .line 176
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0, p2}, Lcom/deploygate/sdk/DeployGate;->access$17(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0, p3}, Lcom/deploygate/sdk/DeployGate;->access$18(Lcom/deploygate/sdk/DeployGate;I)V

    .line 179
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$1;->this$0:Lcom/deploygate/sdk/DeployGate;

    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->access$11(Lcom/deploygate/sdk/DeployGate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/deploygate/sdk/DeployGate$1$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/deploygate/sdk/DeployGate$1$2;-><init>(Lcom/deploygate/sdk/DeployGate$1;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 96
    const-string v0, "init"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "isManaged"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    const-string v0, "isAuthorized"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 99
    const-string v0, "loginUsername"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v0, "isStopRequested"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 101
    const-string v0, "author"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/deploygate/sdk/DeployGate$1;->onInitialized(ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "serial"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    const-string v1, "versionName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v2, "versionCode"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 107
    const-string v3, "serialMessage"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/deploygate/sdk/DeployGate$1;->onUpdateArrived(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "oneshotLogcat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate$1;->onOneshotLogcat()V

    goto :goto_0

    .line 112
    :cond_3
    const-string v0, "enableLogcat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/deploygate/sdk/DeployGate$1;->onEnableLogcat(Z)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "disableLogcat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, v4}, Lcom/deploygate/sdk/DeployGate$1;->onEnableLogcat(Z)V

    goto :goto_0
.end method
