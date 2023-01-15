.class Lorg/hermit/android/core/SurfaceRunner$LoopTicker;
.super Ljava/lang/Thread;
.source "SurfaceRunner.java"

# interfaces
.implements Lorg/hermit/android/core/SurfaceRunner$Ticker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/SurfaceRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoopTicker"
.end annotation


# static fields
.field private static final MSG_ABORT:I = 0x9

.field private static final MSG_TICK:I = 0x6


# instance fields
.field private msgHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/hermit/android/core/SurfaceRunner;


# direct methods
.method private constructor <init>(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 2

    .prologue
    .line 1016
    iput-object p1, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->this$0:Lorg/hermit/android/core/SurfaceRunner;

    .line 1013
    const-string v0, "Surface Runner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    .line 1014
    const-string v0, "SurfaceRunner"

    const-string v1, "Ticker: start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->start()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hermit/android/core/SurfaceRunner;Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)Lorg/hermit/android/core/SurfaceRunner;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->this$0:Lorg/hermit/android/core/SurfaceRunner;

    return-object v0
.end method


# virtual methods
.method public kill()V
    .locals 2

    .prologue
    .line 1036
    const-string v0, "SurfaceRunner"

    const-string v1, "LoopTicker: kill"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    monitor-enter p0

    .line 1039
    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1040
    monitor-exit p0

    .line 1048
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1046
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1038
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public killAndWait()V
    .locals 4

    .prologue
    const-string v3, "SurfaceRunner"

    .line 1057
    const-string v1, "SurfaceRunner"

    const-string v1, "LoopTicker: killAndWait"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1060
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LoopTicker.killAndWait() called from ticker thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1063
    :cond_0
    monitor-enter p0

    .line 1064
    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 1065
    monitor-exit p0

    .line 1087
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1071
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1063
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1076
    const/4 v0, 0x1

    .line 1077
    .local v0, "retry":Z
    :goto_1
    if-nez v0, :cond_2

    .line 1083
    const-string v1, "SurfaceRunner"

    const-string v1, "LoopTicker: killed"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1063
    .end local v0    # "retry":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1079
    .restart local v0    # "retry":Z
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1080
    const/4 v0, 0x0

    goto :goto_1

    .line 1085
    .end local v0    # "retry":Z
    :cond_3
    const-string v1, "SurfaceRunner"

    const-string v1, "LoopTicker: was dead"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1081
    .restart local v0    # "retry":Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public post()V
    .locals 2

    .prologue
    .line 1021
    monitor-enter p0

    .line 1022
    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1023
    monitor-exit p0

    .line 1031
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1029
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1021
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1091
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1093
    new-instance v0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker$1;

    invoke-direct {v0, p0}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker$1;-><init>(Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)V

    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    .line 1111
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->msgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->this$0:Lorg/hermit/android/core/SurfaceRunner;

    invoke-static {v2}, Lorg/hermit/android/core/SurfaceRunner;->access$1(Lorg/hermit/android/core/SurfaceRunner;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1114
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1115
    return-void
.end method
