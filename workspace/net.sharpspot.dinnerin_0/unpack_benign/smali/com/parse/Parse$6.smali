.class Lcom/parse/Parse$6;
.super Ljava/lang/Object;
.source "Parse.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;Z)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/parse/ParseCallback;

.field private final synthetic val$reportCancellation:Z

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(ZLcom/parse/Task$TaskCompletionSource;Lcom/parse/ParseCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/parse/Parse$6;->val$reportCancellation:Z

    iput-object p2, p0, Lcom/parse/Parse$6;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/Parse$6;->val$callback:Lcom/parse/ParseCallback;

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1}, Lcom/parse/Parse$6;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    const/4 v4, 0x0

    .line 873
    invoke-virtual {p1}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/Parse$6;->val$reportCancellation:Z

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/parse/Parse$6;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->setCancelled()V

    .line 900
    :goto_0
    return-object v4

    .line 877
    :cond_0
    sget-object v0, Lcom/parse/Parse;->uiThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/parse/Parse$6$1;

    iget-object v2, p0, Lcom/parse/Parse$6;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iget-object v3, p0, Lcom/parse/Parse$6;->val$callback:Lcom/parse/ParseCallback;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/parse/Parse$6$1;-><init>(Lcom/parse/Parse$6;Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;Lcom/parse/ParseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
