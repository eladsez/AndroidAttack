.class Lcom/parse/ParseUser$15;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->resolveLazinessAsync(Lcom/parse/Task;)Lcom/parse/Task;
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
.field final synthetic this$0:Lcom/parse/ParseUser;

.field private final synthetic val$operations:Lcom/parse/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/Capture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$15;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$15;->val$operations:Lcom/parse/Capture;

    .line 1067
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$15;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1069
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/parse/ParseUser$15;->this$0:Lcom/parse/ParseUser;

    iget-object v3, v2, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1070
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1071
    .local v0, "commandResult":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseUser$15;->this$0:Lcom/parse/ParseUser;

    const-string v5, "create"

    iget-object v2, p0, Lcom/parse/ParseUser$15;->val$operations:Lcom/parse/Capture;

    invoke-virtual {v2}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v4, v5, v0, v2}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 1072
    const-string v2, "is_new"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/parse/ParseUser$15;->this$0:Lcom/parse/ParseUser;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/parse/ParseUser;->access$13(Lcom/parse/ParseUser;Z)V

    .line 1084
    :goto_0
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    .line 1080
    :cond_0
    new-instance v1, Lcom/parse/ParseUser;

    invoke-direct {v1}, Lcom/parse/ParseUser;-><init>()V

    .line 1081
    .local v1, "newUser":Lcom/parse/ParseUser;
    invoke-virtual {v1, v0}, Lcom/parse/ParseUser;->handleFetchResult(Lorg/json/JSONObject;)V

    .line 1082
    invoke-static {v1}, Lcom/parse/ParseUser;->access$2(Lcom/parse/ParseUser;)V

    goto :goto_0

    .line 1069
    .end local v0    # "commandResult":Lorg/json/JSONObject;
    .end local v1    # "newUser":Lcom/parse/ParseUser;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
