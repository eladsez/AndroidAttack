.class Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "DeployGateUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeployGateUncaughtExceptionHandler"


# instance fields
.field private final mParentHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "parentHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;->mParentHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 20
    return-void
.end method

.method private sendExceptionToService(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->getInstance()Lcom/deploygate/sdk/DeployGate;

    move-result-object v0

    .line 33
    .local v0, "instance":Lcom/deploygate/sdk/DeployGate;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/deploygate/sdk/DeployGate;->sendCrashReport(Ljava/lang/Throwable;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    const-string v0, "DeployGateUncaughtExceptionHandler"

    const-string v1, "DeployGate caught exception, trying to send to service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0, p2}, Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;->sendExceptionToService(Ljava/lang/Throwable;)V

    .line 27
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;->mParentHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;->mParentHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 29
    :cond_0
    return-void
.end method
