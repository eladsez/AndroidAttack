.class Lcom/parse/Task$9;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<TTResult;",
        "Lcom/parse/Task",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/Task;

.field private final synthetic val$continuation:Lcom/parse/Continuation;


# direct methods
.method constructor <init>(Lcom/parse/Task;Lcom/parse/Continuation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/Task$9;->this$0:Lcom/parse/Task;

    iput-object p2, p0, Lcom/parse/Task$9;->val$continuation:Lcom/parse/Continuation;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<TTResult;>;)",
            "Lcom/parse/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Task;->forError(Ljava/lang/Exception;)Lcom/parse/Task;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-virtual {p1}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-static {}, Lcom/parse/Task;->cancelled()Lcom/parse/Task;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/parse/Task$9;->val$continuation:Lcom/parse/Continuation;

    invoke-virtual {p1, v0}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

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

    invoke-virtual {p0, p1}, Lcom/parse/Task$9;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
