.class public Lcn/com/picvision/util/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentLength:I

.field private stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private threads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/picvision/util/DownLoadThread;",
            ">;"
        }
    .end annotation
.end field

.field private totalLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcn/com/picvision/util/ThreadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/ThreadManager;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "corePoolSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/picvision/util/ThreadManager;->threads:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/picvision/util/ThreadManager;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 16
    iput v1, p0, Lcn/com/picvision/util/ThreadManager;->totalLength:I

    .line 17
    iput v1, p0, Lcn/com/picvision/util/ThreadManager;->currentLength:I

    .line 19
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcn/com/picvision/util/ThreadManager;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 20
    return-void
.end method


# virtual methods
.method public addThread(Lcn/com/picvision/util/DownLoadThread;)V
    .locals 4
    .param p1, "thread"    # Lcn/com/picvision/util/DownLoadThread;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/com/picvision/util/ThreadManager;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget v0, p0, Lcn/com/picvision/util/ThreadManager;->totalLength:I

    int-to-long v0, v0

    invoke-virtual {p1}, Lcn/com/picvision/util/DownLoadThread;->getWholeLength()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcn/com/picvision/util/ThreadManager;->totalLength:I

    .line 61
    return-void
.end method

.method public declared-synchronized appendSize(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/com/picvision/util/ThreadManager;->currentLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/com/picvision/util/ThreadManager;->currentLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/picvision/util/ThreadManager;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    return-void
.end method

.method public execute()V
    .locals 7

    .prologue
    .line 23
    iget-object v4, p0, Lcn/com/picvision/util/ThreadManager;->threads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 24
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 27
    sget-object v4, Lcn/com/picvision/util/ThreadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Execute"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "isComplete":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 40
    sget-object v4, Lcn/com/picvision/util/ThreadManager;->TAG:Ljava/lang/String;

    const-string v5, "Executetrue"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 25
    .end local v2    # "isComplete":Z
    :cond_0
    iget-object v5, p0, Lcn/com/picvision/util/ThreadManager;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v4, p0, Lcn/com/picvision/util/ThreadManager;->threads:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .restart local v2    # "isComplete":Z
    :cond_1
    iget v4, p0, Lcn/com/picvision/util/ThreadManager;->totalLength:I

    iget v5, p0, Lcn/com/picvision/util/ThreadManager;->currentLength:I

    if-ne v4, v5, :cond_2

    .line 31
    const/4 v2, 0x1

    .line 33
    :cond_2
    sget-object v4, Lcn/com/picvision/util/ThreadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "totalLength:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcn/com/picvision/util/ThreadManager;->totalLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|currentLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/com/picvision/util/ThreadManager;->currentLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getFileLength()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcn/com/picvision/util/ThreadManager;->totalLength:I

    return v0
.end method

.method public getPoolSize()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/com/picvision/util/ThreadManager;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThreads()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/picvision/util/DownLoadThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcn/com/picvision/util/ThreadManager;->threads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/picvision/util/ThreadManager;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 49
    return-void
.end method

.method public shutdownNow()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/com/picvision/util/ThreadManager;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 53
    return-void
.end method
