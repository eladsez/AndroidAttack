.class Lcom/parse/ParseUser$6$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$6;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Lcom/parse/Task",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$6;

.field private final synthetic val$command:Lcom/parse/ParseCommand;

.field private final synthetic val$operations:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$6;Lcom/parse/ParseCommand;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$6$1;->this$1:Lcom/parse/ParseUser$6;

    iput-object p2, p0, Lcom/parse/ParseUser$6$1;->val$command:Lcom/parse/ParseCommand;

    iput-object p3, p0, Lcom/parse/ParseUser$6$1;->val$operations:Ljava/util/Map;

    .line 592
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
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$6$1;->this$1:Lcom/parse/ParseUser$6;

    invoke-static {v0}, Lcom/parse/ParseUser$6;->access$1(Lcom/parse/ParseUser$6;)Lcom/parse/ParseUser;

    move-result-object v0

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$6$1;->this$1:Lcom/parse/ParseUser$6;

    invoke-static {v0}, Lcom/parse/ParseUser$6;->access$1(Lcom/parse/ParseUser$6;)Lcom/parse/ParseUser;

    move-result-object v2

    iget-object v0, p0, Lcom/parse/ParseUser$6$1;->val$command:Lcom/parse/ParseCommand;

    iget-object v3, v0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/parse/ParseUser$6$1;->val$operations:Ljava/util/Map;

    invoke-virtual {v2, v3, v0, v4}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 596
    invoke-virtual {p1}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/parse/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/parse/ParseUser$6$1;->this$1:Lcom/parse/ParseUser$6;

    invoke-static {v0}, Lcom/parse/ParseUser$6;->access$1(Lcom/parse/ParseUser$6;)Lcom/parse/ParseUser;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->access$2(Lcom/parse/ParseUser;)V

    .line 598
    iget-object v0, p0, Lcom/parse/ParseUser$6$1;->this$1:Lcom/parse/ParseUser$6;

    invoke-static {v0}, Lcom/parse/ParseUser$6;->access$1(Lcom/parse/ParseUser$6;)Lcom/parse/ParseUser;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$5(Lcom/parse/ParseUser;Z)V

    .line 600
    :cond_0
    monitor-exit v1

    return-object p1

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$6$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
