.class Lcom/parse/ParseObject$21$2$3$1$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$21$2$3$1;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
.field final synthetic this$3:Lcom/parse/ParseObject$21$2$3$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$21$2$3$1;)V
    .locals 0

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 8
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
    .line 1707
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1708
    .local v1, "commands":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v5, v5, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v5, v5, Lcom/parse/ParseObject$21$2$3;->val$current:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1709
    iget-object v5, p0, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v5, v5, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v5, v5, Lcom/parse/ParseObject$21$2$3;->val$current:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    iget-object v6, p0, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v6, v6, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v6, v6, Lcom/parse/ParseObject$21$2$3;->val$operations:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget-object v7, p0, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v7, v7, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v7, v7, Lcom/parse/ParseObject$21$2$3;->this$1:Lcom/parse/ParseObject$21$2;

    iget-object v7, v7, Lcom/parse/ParseObject$21$2;->this$0:Lcom/parse/ParseObject$21;

    iget-object v7, v7, Lcom/parse/ParseObject$21;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/parse/ParseObject;->constructSaveCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 1711
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 1712
    .local v3, "jsonCommand":Lorg/json/JSONObject;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1713
    iget-object v5, p0, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v5, v5, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v5, v5, Lcom/parse/ParseObject$21$2$3;->val$ops:Ljava/util/List;

    iget-object v6, v0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1717
    .end local v0    # "command":Lcom/parse/ParseCommand;
    .end local v3    # "jsonCommand":Lorg/json/JSONObject;
    :cond_0
    new-instance v4, Lcom/parse/ParseCommand;

    const-string v5, "multi"

    iget-object v6, p0, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v6, v6, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v6, v6, Lcom/parse/ParseObject$21$2$3;->this$1:Lcom/parse/ParseObject$21$2;

    iget-object v6, v6, Lcom/parse/ParseObject$21$2;->this$0:Lcom/parse/ParseObject$21;

    iget-object v6, v6, Lcom/parse/ParseObject$21;->val$sessionToken:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    .local v4, "multiCommand":Lcom/parse/ParseCommand;
    const-string v5, "commands"

    invoke-virtual {v4, v5, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1719
    invoke-virtual {v4}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/Task;->cast()Lcom/parse/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/ParseObject$21$2$3$1$1$1;

    invoke-direct {v6, p0}, Lcom/parse/ParseObject$21$2$3$1$1$1;-><init>(Lcom/parse/ParseObject$21$2$3$1$1;)V

    invoke-virtual {v5, v6}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v5

    return-object v5
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
    .line 1705
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21$2$3$1$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
