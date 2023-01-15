.class Lcom/parse/ParseFile$3$2;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$3;->then(Lcom/parse/Task;)Ljava/lang/Void;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$3;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$3;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    iput-object p2, p0, Lcom/parse/ParseFile$3$2;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 354
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$2;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<[B>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<[B>;"
    iget-object v0, p0, Lcom/parse/ParseFile$3$2;->this$1:Lcom/parse/ParseFile$3;

    invoke-static {v0}, Lcom/parse/ParseFile$3;->access$1(Lcom/parse/ParseFile$3;)Lcom/parse/ParseFile;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseFile;->access$3(Lcom/parse/ParseFile;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$3$2;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {p1}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/parse/ParseFile$3$2;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->trySetCancelled()Z

    .line 364
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/parse/ParseFile$3$2;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseFile$3$2;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lcom/parse/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    goto :goto_0
.end method
