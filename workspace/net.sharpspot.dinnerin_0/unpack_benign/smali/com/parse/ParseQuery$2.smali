.class Lcom/parse/ParseQuery$2;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/Task;
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
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field private final synthetic val$c:Lcom/parse/ParseQuery$CommandDelegate;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseQuery$2;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$2;->val$c:Lcom/parse/ParseQuery$CommandDelegate;

    .line 357
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
    .line 359
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/parse/ParseQuery$2;->val$c:Lcom/parse/ParseQuery$CommandDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)Lcom/parse/Task;

    move-result-object p1

    .line 362
    .end local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    :cond_0
    return-object p1
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$2;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
