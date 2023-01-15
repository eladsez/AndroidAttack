.class Lcom/parse/ParseObject$21$2$3$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$21$2$3;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
.field final synthetic this$2:Lcom/parse/ParseObject$21$2$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$21$2$3;)V
    .locals 0

    .prologue
    .line 1696
    iput-object p1, p0, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 5
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
    .line 1698
    .local p1, "toAwait":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v2, v2, Lcom/parse/ParseObject$21$2$3;->val$current:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 1699
    .local v1, "obj":Lcom/parse/ParseObject;
    iget-object v3, v1, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1700
    :try_start_0
    invoke-virtual {v1}, Lcom/parse/ParseObject;->validateSave()V

    .line 1701
    iget-object v2, p0, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v2, v2, Lcom/parse/ParseObject$21$2$3;->val$operations:Ljava/util/List;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->startSave()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1702
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1705
    .end local v1    # "obj":Lcom/parse/ParseObject;
    :cond_0
    new-instance v2, Lcom/parse/ParseObject$21$2$3$1$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$21$2$3$1$1;-><init>(Lcom/parse/ParseObject$21$2$3$1;)V

    invoke-virtual {p1, v2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    return-object v2
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
    .line 1696
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21$2$3$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
