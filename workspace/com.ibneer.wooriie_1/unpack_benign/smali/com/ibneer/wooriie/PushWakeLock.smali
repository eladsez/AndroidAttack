.class Lcom/ibneer/wooriie/PushWakeLock;
.super Ljava/lang/Object;
.source "PushWakeLock.java"


# static fields
.field private static isScreenLock:Z

.field private static mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string v1, "PushWakeLock"

    const-string v2, "Acquiring cpu wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v1, Lcom/ibneer/wooriie/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 20
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 23
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000000a

    .line 25
    const-string v2, "I\'m your father"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/ibneer/wooriie/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    sget-object v1, Lcom/ibneer/wooriie/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static releaseCpuLock()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "PushWakeLock"

    const-string v1, "Releasing cpu wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/ibneer/wooriie/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/ibneer/wooriie/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/ibneer/wooriie/PushWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    :cond_0
    return-void
.end method
