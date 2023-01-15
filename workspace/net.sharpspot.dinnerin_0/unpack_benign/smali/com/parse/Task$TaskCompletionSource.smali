.class public Lcom/parse/Task$TaskCompletionSource;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskCompletionSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/Task;


# direct methods
.method private constructor <init>(Lcom/parse/Task;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/parse/Task$TaskCompletionSource;-><init>(Lcom/parse/Task;)V

    return-void
.end method


# virtual methods
.method public getTask()Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    return-object v0
.end method

.method public setCancelled()V
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/parse/Task$TaskCompletionSource;->trySetCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    return-void
.end method

.method public setError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Lcom/parse/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-virtual {p0, p1}, Lcom/parse/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_0
    return-void
.end method

.method public trySetCancelled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 534
    iget-object v1, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v1}, Lcom/parse/Task;->access$1(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 535
    :try_start_0
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$2(Lcom/parse/Task;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    monitor-exit v1

    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/parse/Task;->access$3(Lcom/parse/Task;Z)V

    .line 539
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/parse/Task;->access$4(Lcom/parse/Task;Z)V

    .line 540
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$1(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 541
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$5(Lcom/parse/Task;)V

    .line 542
    monitor-exit v1

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, 0x1

    .line 566
    iget-object v1, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v1}, Lcom/parse/Task;->access$1(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 567
    :try_start_0
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$2(Lcom/parse/Task;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    monitor-exit v1

    const/4 v0, 0x0

    .line 574
    :goto_0
    return v0

    .line 570
    :cond_0
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/parse/Task;->access$3(Lcom/parse/Task;Z)V

    .line 571
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2, p1}, Lcom/parse/Task;->access$7(Lcom/parse/Task;Ljava/lang/Exception;)V

    .line 572
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$1(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 573
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$5(Lcom/parse/Task;)V

    .line 574
    monitor-exit v1

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    const/4 v0, 0x1

    .line 550
    iget-object v1, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v1}, Lcom/parse/Task;->access$1(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$2(Lcom/parse/Task;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    monitor-exit v1

    const/4 v0, 0x0

    .line 558
    :goto_0
    return v0

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/parse/Task;->access$3(Lcom/parse/Task;Z)V

    .line 555
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2, p1}, Lcom/parse/Task;->access$6(Lcom/parse/Task;Ljava/lang/Object;)V

    .line 556
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$1(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 557
    iget-object v2, p0, Lcom/parse/Task$TaskCompletionSource;->this$0:Lcom/parse/Task;

    invoke-static {v2}, Lcom/parse/Task;->access$5(Lcom/parse/Task;)V

    .line 558
    monitor-exit v1

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
