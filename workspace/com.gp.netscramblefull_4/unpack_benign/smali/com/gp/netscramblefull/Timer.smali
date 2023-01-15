.class abstract Lcom/gp/netscramblefull/Timer;
.super Landroid/os/Handler;
.source "Timer.java"


# instance fields
.field private accumTime:J

.field private isRunning:Z

.field private lastLogTime:J

.field private nextTime:J

.field private final runner:Ljava/lang/Runnable;

.field private tickCount:I

.field private tickInterval:J


# direct methods
.method public constructor <init>(J)V
    .locals 4
    .param p1, "ival"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    new-instance v0, Lcom/gp/netscramblefull/Timer$1;

    invoke-direct {v0, p0}, Lcom/gp/netscramblefull/Timer$1;-><init>(Lcom/gp/netscramblefull/Timer;)V

    iput-object v0, p0, Lcom/gp/netscramblefull/Timer;->runner:Ljava/lang/Runnable;

    .line 263
    iput-wide v2, p0, Lcom/gp/netscramblefull/Timer;->tickInterval:J

    .line 266
    iput-boolean v1, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    .line 49
    iput-wide p1, p0, Lcom/gp/netscramblefull/Timer;->tickInterval:J

    .line 50
    iput-boolean v1, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    .line 51
    iput-wide v2, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/gp/netscramblefull/Timer;)Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    return v0
.end method

.method static synthetic access$1(Lcom/gp/netscramblefull/Timer;)J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    return-wide v0
.end method

.method static synthetic access$10(Lcom/gp/netscramblefull/Timer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/gp/netscramblefull/Timer;->runner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/gp/netscramblefull/Timer;Z)V
    .locals 0

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    return-void
.end method

.method static synthetic access$2(Lcom/gp/netscramblefull/Timer;)J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/gp/netscramblefull/Timer;->lastLogTime:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/gp/netscramblefull/Timer;J)V
    .locals 0

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    return-void
.end method

.method static synthetic access$4(Lcom/gp/netscramblefull/Timer;J)V
    .locals 0

    .prologue
    .line 280
    iput-wide p1, p0, Lcom/gp/netscramblefull/Timer;->lastLogTime:J

    return-void
.end method

.method static synthetic access$5(Lcom/gp/netscramblefull/Timer;)I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/gp/netscramblefull/Timer;->tickCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/gp/netscramblefull/Timer;I)V
    .locals 0

    .prologue
    .line 269
    iput p1, p0, Lcom/gp/netscramblefull/Timer;->tickCount:I

    return-void
.end method

.method static synthetic access$7(Lcom/gp/netscramblefull/Timer;)J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/gp/netscramblefull/Timer;->nextTime:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/gp/netscramblefull/Timer;)J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/gp/netscramblefull/Timer;->tickInterval:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/gp/netscramblefull/Timer;J)V
    .locals 0

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/gp/netscramblefull/Timer;->nextTime:J

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    return-wide v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    return v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Timer;->stop()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/netscramblefull/Timer;->tickCount:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    .line 107
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/gp/netscramblefull/Timer;->restoreState(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method restoreState(Landroid/os/Bundle;Z)Z
    .locals 2
    .param p1, "map"    # Landroid/os/Bundle;
    .param p2, "run"    # Z

    .prologue
    .line 240
    const-string v0, "tickInterval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/netscramblefull/Timer;->tickInterval:J

    .line 241
    const-string v0, "isRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    .line 242
    const-string v0, "tickCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gp/netscramblefull/Timer;->tickCount:I

    .line 243
    const-string v0, "accumTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/netscramblefull/Timer;->lastLogTime:J

    .line 247
    iget-boolean v0, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    if-eqz v0, :cond_0

    .line 248
    if-eqz p2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/gp/netscramblefull/Timer;->start()V

    .line 254
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    goto :goto_0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    iget-boolean v2, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    if-eqz v2, :cond_0

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 204
    .local v0, "now":J
    iget-wide v2, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    iget-wide v4, p0, Lcom/gp/netscramblefull/Timer;->lastLogTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    .line 205
    iput-wide v0, p0, Lcom/gp/netscramblefull/Timer;->lastLogTime:J

    .line 208
    .end local v0    # "now":J
    :cond_0
    const-string v2, "tickInterval"

    iget-wide v3, p0, Lcom/gp/netscramblefull/Timer;->tickInterval:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 209
    const-string v2, "isRunning"

    iget-boolean v3, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string v2, "tickCount"

    iget v3, p0, Lcom/gp/netscramblefull/Timer;->tickCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v2, "accumTime"

    iget-wide v3, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 67
    iget-boolean v2, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, "now":J
    iput-wide v0, p0, Lcom/gp/netscramblefull/Timer;->lastLogTime:J

    .line 78
    iput-wide v0, p0, Lcom/gp/netscramblefull/Timer;->nextTime:J

    .line 79
    iget-object v2, p0, Lcom/gp/netscramblefull/Timer;->runner:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/gp/netscramblefull/Timer;->nextTime:J

    invoke-virtual {p0, v2, v3, v4}, Lcom/gp/netscramblefull/Timer;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected abstract step(IJ)Z
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 91
    iget-boolean v2, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    if-eqz v2, :cond_0

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/gp/netscramblefull/Timer;->isRunning:Z

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, "now":J
    iget-wide v2, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    iget-wide v4, p0, Lcom/gp/netscramblefull/Timer;->lastLogTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/gp/netscramblefull/Timer;->accumTime:J

    .line 95
    iput-wide v0, p0, Lcom/gp/netscramblefull/Timer;->lastLogTime:J

    .line 97
    .end local v0    # "now":J
    :cond_0
    return-void
.end method
