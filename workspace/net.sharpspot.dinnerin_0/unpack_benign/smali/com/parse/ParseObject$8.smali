.class Lcom/parse/ParseObject$8;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAsync(Lcom/parse/Task;)Lcom/parse/Task;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operations:Lcom/parse/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/Capture;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$8;->val$operations:Lcom/parse/Capture;

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
    .line 993
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateSave()V

    .line 995
    iget-object v0, p0, Lcom/parse/ParseObject$8;->val$operations:Lcom/parse/Capture;

    iget-object v2, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v2}, Lcom/parse/ParseObject;->startSave()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parse/Capture;->set(Ljava/lang/Object;)V

    .line 996
    iget-object v0, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    const-string v2, "ACL"

    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$200(Lcom/parse/ParseObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$300(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$300(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->saveAsync()Lcom/parse/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseObject$8$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$8$1;-><init>(Lcom/parse/ParseObject$8;)V

    invoke-virtual {v0, v2}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object p1

    .end local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    monitor-exit v1

    .line 1009
    :goto_0
    return-object p1

    .restart local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 1010
    .end local p1    # "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 991
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$8;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
