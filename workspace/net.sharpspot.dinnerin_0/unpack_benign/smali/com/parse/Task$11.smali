.class Lcom/parse/Task$11;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Task;->completeAfterTask(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$continuation:Lcom/parse/Continuation;

.field private final synthetic val$task:Lcom/parse/Task;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/Continuation;Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/Task$11;->val$continuation:Lcom/parse/Continuation;

    iput-object p2, p0, Lcom/parse/Task$11;->val$task:Lcom/parse/Task;

    iput-object p3, p0, Lcom/parse/Task$11;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 474
    :try_start_0
    iget-object v2, p0, Lcom/parse/Task$11;->val$continuation:Lcom/parse/Continuation;

    iget-object v3, p0, Lcom/parse/Task$11;->val$task:Lcom/parse/Task;

    invoke-interface {v2, v3}, Lcom/parse/Continuation;->then(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/Task;

    .line 475
    .local v1, "result":Lcom/parse/Task;, "Lcom/parse/Task<TTContinuationResult;>;"
    if-nez v1, :cond_0

    .line 476
    iget-object v2, p0, Lcom/parse/Task$11;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 494
    .end local v1    # "result":Lcom/parse/Task;, "Lcom/parse/Task<TTContinuationResult;>;"
    :goto_0
    return-void

    .line 478
    .restart local v1    # "result":Lcom/parse/Task;, "Lcom/parse/Task<TTContinuationResult;>;"
    :cond_0
    new-instance v2, Lcom/parse/Task$11$1;

    iget-object v3, p0, Lcom/parse/Task$11;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-direct {v2, p0, v3}, Lcom/parse/Task$11$1;-><init>(Lcom/parse/Task$11;Lcom/parse/Task$TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    .end local v1    # "result":Lcom/parse/Task;, "Lcom/parse/Task<TTContinuationResult;>;"
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/parse/Task$11;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v2, v0}, Lcom/parse/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
