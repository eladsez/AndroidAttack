.class Lcom/parse/Parse$6$1;
.super Ljava/lang/Object;
.source "Parse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Parse$6;->then(Lcom/parse/Task;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/Parse$6;

.field private final synthetic val$callback:Lcom/parse/ParseCallback;

.field private final synthetic val$task:Lcom/parse/Task;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/Parse$6;Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;Lcom/parse/ParseCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/Parse$6$1;->this$1:Lcom/parse/Parse$6;

    iput-object p2, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    iput-object p3, p0, Lcom/parse/Parse$6$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iput-object p4, p0, Lcom/parse/Parse$6$1;->val$callback:Lcom/parse/ParseCallback;

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 881
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lcom/parse/ParseException;

    if-nez v1, :cond_1

    .line 882
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 883
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "error":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :catchall_0
    move-exception v1

    .line 890
    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v2}, Lcom/parse/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v2}, Lcom/parse/Task$TaskCompletionSource;->setCancelled()V

    .line 897
    :goto_0
    throw v1

    .line 885
    .restart local v0    # "error":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$callback:Lcom/parse/ParseCallback;

    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v2}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v0, Lcom/parse/ParseException;

    .end local v0    # "error":Ljava/lang/Exception;
    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseCallback;->internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v1}, Lcom/parse/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 891
    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v1}, Lcom/parse/Task$TaskCompletionSource;->setCancelled()V

    .line 898
    :goto_1
    return-void

    .line 892
    :cond_2
    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v2}, Lcom/parse/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 893
    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iget-object v3, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v3}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 895
    :cond_3
    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iget-object v3, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v3}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 892
    :cond_4
    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v1}, Lcom/parse/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 893
    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v2}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 895
    :cond_5
    iget-object v1, p0, Lcom/parse/Parse$6$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iget-object v2, p0, Lcom/parse/Parse$6$1;->val$task:Lcom/parse/Task;

    invoke-virtual {v2}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1
.end method
