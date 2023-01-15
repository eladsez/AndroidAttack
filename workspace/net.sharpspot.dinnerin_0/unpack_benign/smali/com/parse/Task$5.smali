.class Lcom/parse/Task$5;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        "Lcom/parse/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/Task;

.field private final synthetic val$continuation:Lcom/parse/Continuation;

.field private final synthetic val$executor:Ljava/util/concurrent/Executor;

.field private final synthetic val$predicate:Ljava/util/concurrent/Callable;

.field private final synthetic val$predicateContinuation:Lcom/parse/Capture;


# direct methods
.method constructor <init>(Lcom/parse/Task;Ljava/util/concurrent/Callable;Lcom/parse/Continuation;Ljava/util/concurrent/Executor;Lcom/parse/Capture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/Task$5;->this$0:Lcom/parse/Task;

    iput-object p2, p0, Lcom/parse/Task$5;->val$predicate:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/parse/Task$5;->val$continuation:Lcom/parse/Continuation;

    iput-object p4, p0, Lcom/parse/Task$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/parse/Task$5;->val$predicateContinuation:Lcom/parse/Capture;

    .line 283
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
            "<",
            "Ljava/lang/Void;",
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
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/parse/Task$5;->val$predicate:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {v1}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/Task$5;->val$continuation:Lcom/parse/Continuation;

    iget-object v2, p0, Lcom/parse/Task$5;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v1

    .line 287
    iget-object v0, p0, Lcom/parse/Task$5;->val$predicateContinuation:Lcom/parse/Capture;

    invoke-virtual {v0}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/Continuation;

    iget-object v2, p0, Lcom/parse/Task$5;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

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

    invoke-virtual {p0, p1}, Lcom/parse/Task$5;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
