.class Lcom/parse/ParseObject$15;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->fetchAsync(Lcom/parse/Task;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/parse/ParseCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/parse/ParseObject$15;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$15;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1248
    iget-object v3, p0, Lcom/parse/ParseObject$15;->this$0:Lcom/parse/ParseObject;

    iget-object v4, v3, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1249
    :try_start_0
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v3, "get"

    iget-object v5, p0, Lcom/parse/ParseObject$15;->val$sessionToken:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 1251
    const-string v3, "classname"

    iget-object v5, p0, Lcom/parse/ParseObject$15;->this$0:Lcom/parse/ParseObject;

    invoke-static {v5}, Lcom/parse/ParseObject;->access$400(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "objectId"

    iget-object v5, p0, Lcom/parse/ParseObject$15;->this$0:Lcom/parse/ParseObject;

    invoke-static {v5}, Lcom/parse/ParseObject;->access$500(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    :try_start_2
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1259
    monitor-exit v4

    return-object v0

    .line 1255
    :catch_0
    move-exception v2

    .line 1256
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1260
    .end local v0    # "command":Lcom/parse/ParseCommand;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/parse/ParseObject$15;->call()Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method
