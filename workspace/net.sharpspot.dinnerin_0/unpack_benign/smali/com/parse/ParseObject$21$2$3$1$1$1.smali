.class Lcom/parse/ParseObject$21$2$3$1$1$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$21$2$3$1$1;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Lorg/json/JSONArray;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$4:Lcom/parse/ParseObject$21$2$3$1$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$21$2$3$1$1;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/parse/ParseObject$21$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$21$2$3$1$1;

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
    .line 1720
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21$2$3$1$1$1;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Lorg/json/JSONArray;",
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
    .line 1723
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Lorg/json/JSONArray;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parse/ParseObject$21$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$21$2$3$1$1;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3;->val$current:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1724
    iget-object v3, p0, Lcom/parse/ParseObject$21$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$21$2$3$1$1;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3;->val$ops:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1725
    .local v1, "op":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1726
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/ParseObject$21$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$21$2$3$1$1;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v3, v3, Lcom/parse/ParseObject$21$2$3;->val$current:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    iget-object v4, p0, Lcom/parse/ParseObject$21$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$21$2$3$1$1;

    iget-object v4, v4, Lcom/parse/ParseObject$21$2$3$1$1;->this$3:Lcom/parse/ParseObject$21$2$3$1;

    iget-object v4, v4, Lcom/parse/ParseObject$21$2$3$1;->this$2:Lcom/parse/ParseObject$21$2$3;

    iget-object v4, v4, Lcom/parse/ParseObject$21$2$3;->val$operations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v3, v1, v2, v4}, Lcom/parse/ParseObject;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1728
    .end local v1    # "op":Ljava/lang/String;
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
