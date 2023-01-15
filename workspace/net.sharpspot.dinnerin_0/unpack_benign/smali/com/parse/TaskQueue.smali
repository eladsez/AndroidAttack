.class Lcom/parse/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private tail:Lcom/parse/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    .line 10
    return-void
.end method

.method private getTaskToAwait()Lcom/parse/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/parse/TaskQueue;->tail:Lcom/parse/Task;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:Lcom/parse/Task;

    .line 28
    .local v0, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/parse/TaskQueue$1;

    invoke-direct {v1, p0}, Lcom/parse/TaskQueue$1;-><init>(Lcom/parse/TaskQueue;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    return-object v1

    .line 27
    .end local v0    # "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    iget-object v2, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    throw v1
.end method

.method static waitFor(Lcom/parse/Task;)Lcom/parse/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Continuation",
            "<TT;",
            "Lcom/parse/Task",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/TaskQueue$2;

    invoke-direct {v0, p0}, Lcom/parse/TaskQueue$2;-><init>(Lcom/parse/Task;)V

    return-object v0
.end method


# virtual methods
.method enqueue(Lcom/parse/Continuation;)Lcom/parse/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/parse/Task",
            "<TT;>;>;)",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "taskStart":Lcom/parse/Continuation;, "Lcom/parse/Continuation<Ljava/lang/Void;Lcom/parse/Task<TT;>;>;"
    iget-object v3, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 51
    :try_start_0
    iget-object v3, p0, Lcom/parse/TaskQueue;->tail:Lcom/parse/Task;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/parse/TaskQueue;->tail:Lcom/parse/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .local v1, "oldTail":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/parse/TaskQueue;->getTaskToAwait()Lcom/parse/Task;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/parse/Continuation;->then(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/Task;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .local v2, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    const/4 v3, 0x2

    :try_start_2
    new-array v3, v3, [Lcom/parse/Task;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/Task;->whenAll(Ljava/util/Collection;)Lcom/parse/Task;

    move-result-object v3

    iput-object v3, p0, Lcom/parse/TaskQueue;->tail:Lcom/parse/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    iget-object v3, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    return-object v2

    .line 51
    .end local v1    # "oldTail":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    .end local v2    # "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v3}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v1

    goto :goto_0

    .line 57
    .restart local v1    # "oldTail":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "oldTail":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v3

    .line 68
    iget-object v4, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    throw v3

    .line 59
    .restart local v1    # "oldTail":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method waitUntilFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:Lcom/parse/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:Lcom/parse/Task;

    invoke-virtual {v0}, Lcom/parse/Task;->waitForCompletion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    throw v0
.end method
