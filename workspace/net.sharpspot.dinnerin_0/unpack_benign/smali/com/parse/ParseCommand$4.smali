.class Lcom/parse/ParseCommand$4;
.super Ljava/lang/Object;
.source "ParseCommand.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommand;->performAsync(Z)Lcom/parse/Task;
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
        "Ljava/lang/Object;",
        "Lcom/parse/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommand;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommand$4;->this$0:Lcom/parse/ParseCommand;

    iput-object p2, p0, Lcom/parse/ParseCommand$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 352
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
            "<",
            "Ljava/lang/Object;",
            ">;)",
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
    .line 354
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/parse/ParseCommand$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->trySetCancelled()Z

    .line 361
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/parse/ParseCommand$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseCommand$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

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

    invoke-virtual {p0, p1}, Lcom/parse/ParseCommand$4;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
