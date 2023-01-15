.class public abstract Lcom/parse/os/ParseAsyncTask;
.super Ljava/lang/Object;
.source "ParseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/os/ParseAsyncTask$InternalHandler;,
        Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;,
        Lcom/parse/os/ParseAsyncTask$Status;,
        Lcom/parse/os/ParseAsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$parse$os$ParseAsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "com.parse.os.ParseAsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/parse/os/ParseAsyncTask$InternalHandler;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/parse/os/ParseAsyncTask$Status;

.field private final mWorker:Lcom/parse/os/ParseAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/os/ParseAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$parse$os$ParseAsyncTask$Status()[I
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/parse/os/ParseAsyncTask;->$SWITCH_TABLE$com$parse$os$ParseAsyncTask$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/parse/os/ParseAsyncTask$Status;->values()[Lcom/parse/os/ParseAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/parse/os/ParseAsyncTask$Status;->FINISHED:Lcom/parse/os/ParseAsyncTask$Status;

    invoke-virtual {v1}, Lcom/parse/os/ParseAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/parse/os/ParseAsyncTask$Status;->PENDING:Lcom/parse/os/ParseAsyncTask$Status;

    invoke-virtual {v1}, Lcom/parse/os/ParseAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/parse/os/ParseAsyncTask$Status;->RUNNING:Lcom/parse/os/ParseAsyncTask$Status;

    invoke-virtual {v1}, Lcom/parse/os/ParseAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/parse/os/ParseAsyncTask;->$SWITCH_TABLE$com$parse$os$ParseAsyncTask$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 164
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/parse/os/ParseAsyncTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 166
    new-instance v0, Lcom/parse/os/ParseAsyncTask$1;

    invoke-direct {v0}, Lcom/parse/os/ParseAsyncTask$1;-><init>()V

    sput-object v0, Lcom/parse/os/ParseAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 174
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    .line 175
    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/parse/os/ParseAsyncTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/parse/os/ParseAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 174
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/parse/os/ParseAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 181
    new-instance v0, Lcom/parse/os/ParseAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parse/os/ParseAsyncTask$InternalHandler;-><init>(Lcom/parse/os/ParseAsyncTask$InternalHandler;)V

    sput-object v0, Lcom/parse/os/ParseAsyncTask;->sHandler:Lcom/parse/os/ParseAsyncTask$InternalHandler;

    .line 157
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 211
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    sget-object v0, Lcom/parse/os/ParseAsyncTask$Status;->PENDING:Lcom/parse/os/ParseAsyncTask$Status;

    iput-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mStatus:Lcom/parse/os/ParseAsyncTask$Status;

    .line 212
    new-instance v0, Lcom/parse/os/ParseAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/parse/os/ParseAsyncTask$2;-><init>(Lcom/parse/os/ParseAsyncTask;)V

    iput-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mWorker:Lcom/parse/os/ParseAsyncTask$WorkerRunnable;

    .line 219
    new-instance v0, Lcom/parse/os/ParseAsyncTask$3;

    iget-object v1, p0, Lcom/parse/os/ParseAsyncTask;->mWorker:Lcom/parse/os/ParseAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/parse/os/ParseAsyncTask$3;-><init>(Lcom/parse/os/ParseAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 249
    return-void
.end method

.method static synthetic access$0(Lcom/parse/os/ParseAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/parse/os/ParseAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1()Lcom/parse/os/ParseAsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/parse/os/ParseAsyncTask;->sHandler:Lcom/parse/os/ParseAsyncTask$InternalHandler;

    return-object v0
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/parse/os/ParseAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 p1, 0x0

    .line 442
    .end local p1    # "result":Ljava/lang/Object;, "TResult;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/os/ParseAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 443
    sget-object v0, Lcom/parse/os/ParseAsyncTask$Status;->FINISHED:Lcom/parse/os/ParseAsyncTask$Status;

    iput-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mStatus:Lcom/parse/os/ParseAsyncTask$Status;

    .line 444
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 347
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/parse/os/ParseAsyncTask;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/parse/os/ParseAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    invoke-static {}, Lcom/parse/os/ParseAsyncTask;->$SWITCH_TABLE$com$parse$os$ParseAsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lcom/parse/os/ParseAsyncTask;->mStatus:Lcom/parse/os/ParseAsyncTask$Status;

    invoke-virtual {v1}, Lcom/parse/os/ParseAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 413
    sget-object v0, Lcom/parse/os/ParseAsyncTask$Status;->RUNNING:Lcom/parse/os/ParseAsyncTask$Status;

    iput-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mStatus:Lcom/parse/os/ParseAsyncTask$Status;

    .line 415
    invoke-virtual {p0}, Lcom/parse/os/ParseAsyncTask;->onPreExecute()V

    .line 417
    iget-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mWorker:Lcom/parse/os/ParseAsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/parse/os/ParseAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/parse/os/ParseAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/parse/os/ParseAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 420
    return-object p0

    .line 405
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/parse/os/ParseAsyncTask$Status;
    .locals 1

    .prologue
    .line 257
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mStatus:Lcom/parse/os/ParseAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/parse/os/ParseAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 316
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 282
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lcom/parse/os/ParseAsyncTask;, "Lcom/parse/os/ParseAsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcom/parse/os/ParseAsyncTask;->sHandler:Lcom/parse/os/ParseAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;-><init>(Lcom/parse/os/ParseAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/os/ParseAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 437
    return-void
.end method
