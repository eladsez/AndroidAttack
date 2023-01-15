.class Lcom/parse/os/ParseAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ParseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/os/ParseAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/os/ParseAsyncTask;


# direct methods
.method constructor <init>(Lcom/parse/os/ParseAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/parse/os/ParseAsyncTask$3;->this$0:Lcom/parse/os/ParseAsyncTask;

    .line 219
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 224
    const/4 v2, 0x0

    .line 227
    .local v2, "result":Ljava/lang/Object;, "TResult;"
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/os/ParseAsyncTask$3;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 244
    .end local v2    # "result":Ljava/lang/Object;, "TResult;"
    :cond_0
    :goto_0
    invoke-static {}, Lcom/parse/os/ParseAsyncTask;->access$1()Lcom/parse/os/ParseAsyncTask$InternalHandler;

    move-result-object v4

    new-instance v5, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;

    .line 245
    iget-object v6, p0, Lcom/parse/os/ParseAsyncTask$3;->this$0:Lcom/parse/os/ParseAsyncTask;

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;-><init>(Lcom/parse/os/ParseAsyncTask;[Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v4, v9, v5}, Lcom/parse/os/ParseAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 246
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 247
    :goto_1
    return-void

    .line 228
    .end local v1    # "message":Landroid/os/Message;
    .restart local v2    # "result":Ljava/lang/Object;, "TResult;"
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 230
    const-string v4, "com.parse.os.ParseAsyncTask"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing doInBackground()"

    .line 234
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 233
    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 235
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 236
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-static {}, Lcom/parse/os/ParseAsyncTask;->access$1()Lcom/parse/os/ParseAsyncTask$InternalHandler;

    move-result-object v4

    const/4 v5, 0x3

    new-instance v6, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;

    .line 237
    iget-object v7, p0, Lcom/parse/os/ParseAsyncTask$3;->this$0:Lcom/parse/os/ParseAsyncTask;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/parse/os/ParseAsyncTask$ParseAsyncTaskResult;-><init>(Lcom/parse/os/ParseAsyncTask;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v4, v5, v6}, Lcom/parse/os/ParseAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 238
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 240
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    .end local v1    # "message":Landroid/os/Message;
    :catch_3
    move-exception v3

    .line 241
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing doInBackground()"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
