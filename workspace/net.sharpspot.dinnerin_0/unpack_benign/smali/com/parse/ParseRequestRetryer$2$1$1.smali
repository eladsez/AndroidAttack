.class Lcom/parse/ParseRequestRetryer$2$1$1;
.super Ljava/lang/Object;
.source "ParseRequestRetryer.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequestRetryer$2$1;->run()V
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
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseRequestRetryer$2$1;

.field private final synthetic val$retryTask:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequestRetryer$2$1;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseRequestRetryer$2$1$1;->this$2:Lcom/parse/ParseRequestRetryer$2$1;

    iput-object p2, p0, Lcom/parse/ParseRequestRetryer$2$1$1;->val$retryTask:Lcom/parse/Task$TaskCompletionSource;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<[B>;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<[B>;"
    invoke-virtual {p1}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer$2$1$1;->val$retryTask:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->setCancelled()V

    .line 135
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer$2$1$1;->val$retryTask:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseRequestRetryer$2$1$1;->val$retryTask:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

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

    invoke-virtual {p0, p1}, Lcom/parse/ParseRequestRetryer$2$1$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
