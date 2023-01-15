.class public Lanywheresoftware/b4a/B4AThreadPool;
.super Ljava/lang/Object;
.source "B4AThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;,
        Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;
    }
.end annotation


# static fields
.field private static final THREADS_SPARE:I = 0x5


# instance fields
.field private final futures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private pool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final queueOfTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->queueOfTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 27
    new-instance v0, Lanywheresoftware/b4a/B4AThreadPool$1;

    const/4 v2, 0x0

    const/16 v3, 0x32

    .line 28
    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lanywheresoftware/b4a/B4AThreadPool$1;-><init>(Lanywheresoftware/b4a/B4AThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 27
    iput-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    iget-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;-><init>(Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/B4AThreadPool;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/B4AThreadPool;Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lanywheresoftware/b4a/B4AThreadPool;->submitToPool(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/B4AThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->queueOfTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private submitToPool(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 8
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "container"    # Ljava/lang/Object;
    .param p3, "taskId"    # I

    .prologue
    .line 84
    :try_start_0
    iget-object v6, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v6, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    monitor-enter v6

    .line 96
    :try_start_1
    iget-object v7, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .local v4, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    if-nez v4, :cond_0

    .line 98
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v4    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 99
    .restart local v4    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    iget-object v7, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<*>;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<*>;>;"
    .end local v4    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 87
    .local v5, "ree":Ljava/util/concurrent/RejectedExecutionException;
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lanywheresoftware/b4a/B4AThreadPool;->submitToPool(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 95
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "ree":Ljava/util/concurrent/RejectedExecutionException;
    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 104
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<*>;>;"
    .restart local v4    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 105
    .local v2, "fit":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public isRunning(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "taskId"    # I

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v2, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    .local v1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    if-nez v1, :cond_0

    move v2, v3

    .line 117
    :goto_0
    return v2

    .line 114
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 115
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-nez v0, :cond_1

    move v2, v3

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public markTaskAsFinished(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "taskId"    # I

    .prologue
    .line 120
    iget-object v1, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    .local v0, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "container"    # Ljava/lang/Object;
    .param p3, "taskId"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->queueOfTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lanywheresoftware/b4a/B4AThreadPool$QueuedTask;-><init>(Lanywheresoftware/b4a/B4AThreadPool;Ljava/lang/Runnable;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lanywheresoftware/b4a/B4AThreadPool;->submitToPool(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    goto :goto_0
.end method
