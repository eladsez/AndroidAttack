.class Lcom/parse/Task$4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Task;->whenAll(Ljava/util/Collection;)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/Task$4;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/parse/Task$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    .line 253
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

    invoke-virtual {p0, p1}, Lcom/parse/Task$4;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/parse/Task$4;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/parse/Task$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 258
    :cond_0
    return-object v1
.end method
