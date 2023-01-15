.class Lcom/parse/ParseCommand$5;
.super Ljava/lang/Object;
.source "ParseCommand.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommand;->sendRequestWithRetriesAsync()Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<",
        "Lorg/json/JSONObject;",
        "Lcom/parse/Task",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/ParseCommand$5;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    return-object v0
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v1}, Lcom/parse/ParseCommand;->access$2(Lcom/parse/ParseCommand;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v1}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-static {}, Lcom/parse/Task;->cancelled()Lcom/parse/Task;

    move-result-object p1

    .line 397
    .end local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<Lorg/json/JSONObject;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 377
    .restart local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<Lorg/json/JSONObject;>;"
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v1}, Lcom/parse/ParseCommand;->access$3(Lcom/parse/ParseCommand;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/parse/ParseCommand;->access$4(Lcom/parse/ParseCommand;I)V

    .line 378
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v1}, Lcom/parse/ParseCommand;->access$5(Lcom/parse/ParseCommand;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v1}, Lcom/parse/ParseCommand;->access$3(Lcom/parse/ParseCommand;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 380
    const-string v1, "com.parse.ParseCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetch failed. Waiting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v3}, Lcom/parse/ParseCommand;->access$6(Lcom/parse/ParseCommand;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 381
    const-string v3, " milliseconds before attempt #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v3}, Lcom/parse/ParseCommand;->access$3(Lcom/parse/ParseCommand;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 384
    .local v0, "delayTaskSource":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    sget-object v1, Lcom/parse/ParseCommand;->networkThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/parse/ParseCommand$5$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommand$5$1;-><init>(Lcom/parse/ParseCommand$5;Lcom/parse/Task$TaskCompletionSource;)V

    .line 388
    iget-object v3, p0, Lcom/parse/ParseCommand$5;->this$0:Lcom/parse/ParseCommand;

    invoke-static {v3}, Lcom/parse/ParseCommand;->access$6(Lcom/parse/ParseCommand;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 384
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 389
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v1

    .line 390
    new-instance v2, Lcom/parse/ParseCommand$5$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseCommand$5$2;-><init>(Lcom/parse/ParseCommand$5;)V

    .line 389
    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lcom/parse/Task;

    invoke-virtual {p0, p1}, Lcom/parse/ParseCommand$5;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
