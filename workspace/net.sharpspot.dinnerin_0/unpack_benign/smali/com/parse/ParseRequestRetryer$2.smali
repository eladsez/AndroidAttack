.class Lcom/parse/ParseRequestRetryer$2;
.super Ljava/lang/Object;
.source "ParseRequestRetryer.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequestRetryer;->goAsync(Lcom/parse/ProgressCallback;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<[B",
        "Lcom/parse/Task",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequestRetryer;

.field private final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequestRetryer;Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    iput-object p2, p0, Lcom/parse/ParseRequestRetryer$2;->val$progressCallback:Lcom/parse/ProgressCallback;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/ParseRequestRetryer$2;)Lcom/parse/ParseRequestRetryer;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    return-object v0
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<[B>;)",
            "Lcom/parse/Task",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<[B>;"
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v1}, Lcom/parse/ParseRequestRetryer;->access$2(Lcom/parse/ParseRequestRetryer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/parse/ParseRequestRetryer;->access$3(Lcom/parse/ParseRequestRetryer;I)V

    .line 117
    iget-object v1, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v1}, Lcom/parse/ParseRequestRetryer;->access$2(Lcom/parse/ParseRequestRetryer;)I

    move-result v1

    iget-object v2, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v2}, Lcom/parse/ParseRequestRetryer;->access$4(Lcom/parse/ParseRequestRetryer;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    const-string v1, "com.parse.ParseRequestRetryer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request failed. Waiting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v3}, Lcom/parse/ParseRequestRetryer;->access$5(Lcom/parse/ParseRequestRetryer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    const-string v3, " milliseconds before attempt #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v3}, Lcom/parse/ParseRequestRetryer;->access$2(Lcom/parse/ParseRequestRetryer;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 122
    .local v0, "retryTask":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<[B>.TaskCompletionSource;"
    sget-object v1, Lcom/parse/ParseCommand;->networkThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/parse/ParseRequestRetryer$2$1;

    iget-object v3, p0, Lcom/parse/ParseRequestRetryer$2;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {v2, p0, v3, v0}, Lcom/parse/ParseRequestRetryer$2$1;-><init>(Lcom/parse/ParseRequestRetryer$2;Lcom/parse/ProgressCallback;Lcom/parse/Task$TaskCompletionSource;)V

    .line 139
    iget-object v3, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v3}, Lcom/parse/ParseRequestRetryer;->access$5(Lcom/parse/ParseRequestRetryer;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 122
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 140
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object p1

    .line 145
    .end local v0    # "retryTask":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<[B>.TaskCompletionSource;"
    .end local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<[B>;"
    :cond_0
    :goto_0
    return-object p1

    .line 141
    .restart local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<[B>;"
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseRequestRetryer$2;->this$0:Lcom/parse/ParseRequestRetryer;

    invoke-static {v1}, Lcom/parse/ParseRequestRetryer;->access$1(Lcom/parse/ParseRequestRetryer;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const-string v1, "com.parse.ParseRequestRetryer"

    const-string v2, "Request failed. Giving up."

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/parse/ParseRequestRetryer$2;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
