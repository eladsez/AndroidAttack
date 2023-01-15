.class Lcom/parse/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/Task$TaskCompletionSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final defaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final immediateExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private cancelled:Z

.field private complete:Z

.field private continuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/Continuation",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/Task;->defaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 25
    new-instance v0, Lcom/parse/Task$1;

    invoke-direct {v0}, Lcom/parse/Task$1;-><init>()V

    sput-object v0, Lcom/parse/Task;->immediateExecutor:Ljava/util/concurrent/Executor;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/Task;->continuations:Ljava/util/List;

    .line 85
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/parse/Task;->defaultExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/parse/Task;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/parse/Task;->complete:Z

    return v0
.end method

.method static synthetic access$3(Lcom/parse/Task;Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/parse/Task;->complete:Z

    return-void
.end method

.method static synthetic access$4(Lcom/parse/Task;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/parse/Task;->cancelled:Z

    return-void
.end method

.method static synthetic access$5(Lcom/parse/Task;)V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/parse/Task;->runContinuations()V

    return-void
.end method

.method static synthetic access$6(Lcom/parse/Task;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parse/Task;->result:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$7(Lcom/parse/Task;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parse/Task;->error:Ljava/lang/Exception;

    return-void
.end method

.method static synthetic access$8(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 435
    invoke-static {p0, p1, p2, p3}, Lcom/parse/Task;->completeImmediately(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$9(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 467
    invoke-static {p0, p1, p2, p3}, Lcom/parse/Task;->completeAfterTask(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lcom/parse/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/parse/Task;->immediateExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/parse/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 222
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TTResult;>.TaskCompletionSource;"
    new-instance v1, Lcom/parse/Task$3;

    invoke-direct {v1, v0, p0}, Lcom/parse/Task$3;-><init>(Lcom/parse/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lcom/parse/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/parse/Task;->defaultExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0}, Lcom/parse/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public static cancelled()Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/parse/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 178
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TTResult;>.TaskCompletionSource;"
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->setCancelled()V

    .line 179
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method private static completeAfterTask(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lcom/parse/Continuation",
            "<TTResult;",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;>;",
            "Lcom/parse/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TTContinuationResult;>.TaskCompletionSource;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;Lcom/parse/Task<TTContinuationResult;>;>;"
    .local p2, "task":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    new-instance v0, Lcom/parse/Task$11;

    invoke-direct {v0, p1, p2, p0}, Lcom/parse/Task$11;-><init>(Lcom/parse/Continuation;Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 496
    return-void
.end method

.method private static completeImmediately(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lcom/parse/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lcom/parse/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TTContinuationResult;>.TaskCompletionSource;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;TTContinuationResult;>;"
    .local p2, "task":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    new-instance v0, Lcom/parse/Task$10;

    invoke-direct {v0, p1, p2, p0}, Lcom/parse/Task$10;-><init>(Lcom/parse/Continuation;Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method public static create()Lcom/parse/Task$TaskCompletionSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/parse/Task",
            "<TTResult;>.TaskCompletionSource;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/parse/Task;

    invoke-direct {v0}, Lcom/parse/Task;-><init>()V

    .line 95
    .local v0, "task":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    new-instance v1, Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/parse/Task$TaskCompletionSource;-><init>(Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;)V

    return-object v1
.end method

.method public static forError(Ljava/lang/Exception;)Lcom/parse/Task;
    .locals 2
    .param p0, "error"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/parse/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 169
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TTResult;>.TaskCompletionSource;"
    invoke-virtual {v0, p0}, Lcom/parse/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 170
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method public static forResult(Ljava/lang/Object;)Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/parse/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "value":Ljava/lang/Object;, "TTResult;"
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 160
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TTResult;>.TaskCompletionSource;"
    invoke-virtual {v0, p0}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    return-object v1
.end method

.method private runContinuations()V
    .locals 5

    .prologue
    .line 499
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    iget-object v3, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 500
    :try_start_0
    iget-object v2, p0, Lcom/parse/Task;->continuations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 509
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parse/Task;->continuations:Ljava/util/List;

    .line 499
    monitor-exit v3

    .line 511
    return-void

    .line 500
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/Continuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .local v0, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;*>;"
    :try_start_1
    invoke-interface {v0, p0}, Lcom/parse/Continuation;->then(Lcom/parse/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v1

    .line 499
    .end local v0    # "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;*>;"
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 505
    .restart local v0    # "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;*>;"
    :catch_1
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static whenAll(Ljava/util/Collection;)Lcom/parse/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/parse/Task",
            "<*>;>;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/parse/Task<*>;>;"
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v3

    .line 246
    .local v3, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 247
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 263
    :cond_0
    invoke-virtual {v3}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v4

    return-object v4

    .line 249
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 250
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/Task;

    .line 252
    .local v2, "task":Lcom/parse/Task;, "Lcom/parse/Task<*>;"
    move-object v1, v2

    .line 253
    .local v1, "t":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    new-instance v5, Lcom/parse/Task$4;

    invoke-direct {v5, v0, v3}, Lcom/parse/Task$4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v5}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    goto :goto_0
.end method


# virtual methods
.method public cast()Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/parse/Task",
            "<TTOut;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    move-object v0, p0

    .line 189
    .local v0, "task":Lcom/parse/Task;, "Lcom/parse/Task<TTOut;>;"
    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/parse/Continuation;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/parse/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<Ljava/lang/Void;Lcom/parse/Task<Ljava/lang/Void;>;>;"
    sget-object v0, Lcom/parse/Task;->immediateExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/parse/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
    .locals 6
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/parse/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<Ljava/lang/Void;Lcom/parse/Task<Ljava/lang/Void;>;>;"
    new-instance v5, Lcom/parse/Capture;

    invoke-direct {v5}, Lcom/parse/Capture;-><init>()V

    .line 283
    .local v5, "predicateContinuation":Lcom/parse/Capture;, "Lcom/parse/Capture<Lcom/parse/Continuation<Ljava/lang/Void;Lcom/parse/Task<Ljava/lang/Void;>;>;>;"
    new-instance v0, Lcom/parse/Task$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/Task$5;-><init>(Lcom/parse/Task;Ljava/util/concurrent/Callable;Lcom/parse/Continuation;Ljava/util/concurrent/Executor;Lcom/parse/Capture;)V

    invoke-virtual {v5, v0}, Lcom/parse/Capture;->set(Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p0}, Lcom/parse/Task;->makeVoid()Lcom/parse/Task;

    move-result-object v1

    invoke-virtual {v5}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/Continuation;

    invoke-virtual {v1, v0, p3}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/parse/Task;->immediateExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;TTContinuationResult;>;"
    const/4 v0, 0x0

    .line 303
    .local v0, "completed":Z
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v1

    .line 304
    .local v1, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TTContinuationResult;>.TaskCompletionSource;"
    iget-object v3, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/Task;->isCompleted()Z

    move-result v0

    .line 306
    if-nez v0, :cond_0

    .line 307
    iget-object v2, p0, Lcom/parse/Task;->continuations:Ljava/util/List;

    new-instance v4, Lcom/parse/Task$6;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/parse/Task$6;-><init>(Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    if-eqz v0, :cond_1

    .line 316
    invoke-static {v1, p1, p0, p2}, Lcom/parse/Task;->completeImmediately(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V

    .line 318
    :cond_1
    invoke-virtual {v1}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v2

    return-object v2

    .line 304
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<TTResult;",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;Lcom/parse/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/parse/Task;->immediateExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<TTResult;",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;Lcom/parse/Task<TTContinuationResult;>;>;"
    const/4 v0, 0x0

    .line 337
    .local v0, "completed":Z
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v1

    .line 338
    .local v1, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TTContinuationResult;>.TaskCompletionSource;"
    iget-object v3, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/Task;->isCompleted()Z

    move-result v0

    .line 340
    if-nez v0, :cond_0

    .line 341
    iget-object v2, p0, Lcom/parse/Task;->continuations:Ljava/util/List;

    new-instance v4, Lcom/parse/Task$7;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/parse/Task$7;-><init>(Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-static {v1, p1, p0, p2}, Lcom/parse/Task;->completeAfterTask(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V

    .line 352
    :cond_1
    invoke-virtual {v1}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v2

    return-object v2

    .line 338
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getError()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    iget-object v1, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/parse/Task;->error:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    iget-object v1, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/parse/Task;->result:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    iget-object v1, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/Task;->cancelled:Z

    monitor-exit v1

    return v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    iget-object v1, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/Task;->complete:Z

    monitor-exit v1

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFaulted()Z
    .locals 2

    .prologue
    .line 121
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    iget-object v1, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/parse/Task;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeVoid()Lcom/parse/Task;
    .locals 1
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
    .line 196
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    new-instance v0, Lcom/parse/Task$2;

    invoke-direct {v0, p0}, Lcom/parse/Task$2;-><init>(Lcom/parse/Task;)V

    invoke-virtual {p0, v0}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/parse/Task;->immediateExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;TTContinuationResult;>;"
    new-instance v0, Lcom/parse/Task$8;

    invoke-direct {v0, p0, p1}, Lcom/parse/Task$8;-><init>(Lcom/parse/Task;Lcom/parse/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<TTResult;",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;Lcom/parse/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/parse/Task;->immediateExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Continuation",
            "<TTResult;",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    .local p1, "continuation":Lcom/parse/Continuation;, "Lcom/parse/Continuation<TTResult;Lcom/parse/Task<TTContinuationResult;>;>;"
    new-instance v0, Lcom/parse/Task$9;

    invoke-direct {v0, p0, p1}, Lcom/parse/Task$9;-><init>(Lcom/parse/Task;Lcom/parse/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    iget-object v1, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/parse/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 148
    :cond_0
    monitor-exit v1

    .line 153
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
