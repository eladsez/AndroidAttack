.class Lcom/parse/Task$10;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Task;->completeImmediately(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V
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
    iput-object p1, p0, Lcom/parse/Task$10;->val$continuation:Lcom/parse/Continuation;

    iput-object p2, p0, Lcom/parse/Task$10;->val$task:Lcom/parse/Task;

    iput-object p3, p0, Lcom/parse/Task$10;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 442
    :try_start_0
    iget-object v2, p0, Lcom/parse/Task$10;->val$continuation:Lcom/parse/Continuation;

    iget-object v3, p0, Lcom/parse/Task$10;->val$task:Lcom/parse/Task;

    invoke-interface {v2, v3}, Lcom/parse/Continuation;->then(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v1

    .line 443
    .local v1, "result":Ljava/lang/Object;, "TTContinuationResult;"
    iget-object v2, p0, Lcom/parse/Task$10;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v2, v1}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1    # "result":Ljava/lang/Object;, "TTContinuationResult;"
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/parse/Task$10;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v2, v0}, Lcom/parse/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
