.class Lcom/parse/ParseObject$21$2;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$21;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
.field final synthetic this$0:Lcom/parse/ParseObject$21;

.field final synthetic val$remaining:Lcom/parse/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$21;Lcom/parse/Capture;)V
    .locals 0

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/parse/ParseObject$21$2;->this$0:Lcom/parse/ParseObject$21;

    iput-object p2, p0, Lcom/parse/ParseObject$21$2;->val$remaining:Lcom/parse/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 9
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
    .line 1645
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v0, "current":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    .local v2, "nextBatch":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v7, p0, Lcom/parse/ParseObject$21$2;->val$remaining:Lcom/parse/Capture;

    invoke-virtual {v7}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    .line 1648
    .local v3, "obj":Lcom/parse/ParseObject;
    invoke-static {v3}, Lcom/parse/ParseObject;->access$800(Lcom/parse/ParseObject;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1649
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1651
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1654
    .end local v3    # "obj":Lcom/parse/ParseObject;
    :cond_1
    iget-object v7, p0, Lcom/parse/ParseObject$21$2;->val$remaining:Lcom/parse/Capture;

    invoke-virtual {v7, v2}, Lcom/parse/Capture;->set(Ljava/lang/Object;)V

    .line 1656
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 1660
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unable to save a PFObject with a relation to a cycle."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1664
    :cond_2
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v6

    .line 1672
    .local v6, "result":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1674
    new-instance v7, Lcom/parse/ParseObject$21$2$2;

    invoke-direct {v7, p0}, Lcom/parse/ParseObject$21$2$2;-><init>(Lcom/parse/ParseObject$21$2;)V

    invoke-virtual {v6, v7}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/ParseObject$21$2$1;

    invoke-direct {v8, p0, v0}, Lcom/parse/ParseObject$21$2$1;-><init>(Lcom/parse/ParseObject$21$2;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v6

    .line 1686
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1687
    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    .local v4, "operations":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;>;"
    new-instance v7, Lcom/parse/ParseObject$21$2$3;

    invoke-direct {v7, p0, v0, v4, v5}, Lcom/parse/ParseObject$21$2$3;-><init>(Lcom/parse/ParseObject$21$2;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/parse/Task;->onSuccessTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v6

    .line 1737
    return-object v6
.end method

.method public bridge synthetic then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/parse/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1640
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21$2;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
