.class Lcom/parse/ParseFile$3$1;
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
        "Lcom/parse/Task",
        "<[B>;>;"
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
    iput-object p1, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iput-object p2, p0, Lcom/parse/ParseFile$3$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 3
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
    .line 341
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<[B>;"
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x64

    .line 344
    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/parse/Task;->forError(Ljava/lang/Exception;)Lcom/parse/Task;

    move-result-object p1

    .line 352
    .end local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<[B>;"
    :goto_0
    return-object p1

    .line 348
    .restart local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<[B>;"
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object p1

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    invoke-static {v0}, Lcom/parse/ParseFile$3;->access$1(Lcom/parse/ParseFile$3;)Lcom/parse/ParseFile;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v1, v0}, Lcom/parse/ParseFile;->access$5(Lcom/parse/ParseFile;[B)V

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

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
