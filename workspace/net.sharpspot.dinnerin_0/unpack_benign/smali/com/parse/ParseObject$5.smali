.class final Lcom/parse/ParseObject$5;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lcom/parse/Continuation;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$readyToStart:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parse/ParseObject$5;->val$readyToStart:Lcom/parse/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/parse/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$5;->then(Lcom/parse/Task;)Ljava/lang/Void;

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
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
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

    .line 259
    iget-object v0, p0, Lcom/parse/ParseObject$5;->val$readyToStart:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 260
    return-object v1
.end method
