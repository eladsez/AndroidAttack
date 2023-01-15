.class Lcom/parse/TaskQueue$2;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/TaskQueue;->waitFor(Lcom/parse/Task;)Lcom/parse/Continuation;
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
        "Lcom/parse/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$toAwait:Lcom/parse/Task;


# direct methods
.method constructor <init>(Lcom/parse/Task;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/TaskQueue$2;->val$toAwait:Lcom/parse/Task;

    .line 77
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
            "<TT;>;)",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    iget-object v0, p0, Lcom/parse/TaskQueue$2;->val$toAwait:Lcom/parse/Task;

    new-instance v1, Lcom/parse/TaskQueue$2$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/TaskQueue$2$1;-><init>(Lcom/parse/TaskQueue$2;Lcom/parse/Task;)V

    invoke-virtual {v0, v1}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/parse/TaskQueue$2;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
