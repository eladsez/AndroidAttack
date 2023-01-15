.class Lcom/parse/Task$6;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/Task;

.field private final synthetic val$continuation:Lcom/parse/Continuation;

.field private final synthetic val$executor:Ljava/util/concurrent/Executor;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/Task;Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/Task$6;->this$0:Lcom/parse/Task;

    iput-object p2, p0, Lcom/parse/Task$6;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/Task$6;->val$continuation:Lcom/parse/Continuation;

    iput-object p4, p0, Lcom/parse/Task$6;->val$executor:Ljava/util/concurrent/Executor;

    .line 307
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

    invoke-virtual {p0, p1}, Lcom/parse/Task$6;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<TTResult;>;"
    iget-object v0, p0, Lcom/parse/Task$6;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iget-object v1, p0, Lcom/parse/Task$6;->val$continuation:Lcom/parse/Continuation;

    iget-object v2, p0, Lcom/parse/Task$6;->val$executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lcom/parse/Task;->access$8(Lcom/parse/Task$TaskCompletionSource;Lcom/parse/Continuation;Lcom/parse/Task;Ljava/util/concurrent/Executor;)V

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method
