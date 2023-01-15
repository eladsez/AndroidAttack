.class public Lcom/parse/ParseCloud;
.super Ljava/lang/Object;
.source "ParseCloud.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/parse/ParseCloud;->convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callFunction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->callFunctionAsync(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static callFunctionAsync(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->constructCallCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/parse/ParseCloud$1;

    invoke-direct {v1}, Lcom/parse/ParseCloud$1;-><init>()V

    .line 55
    invoke-virtual {v0, v1}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/FunctionCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/parse/FunctionCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p2, "callback":Lcom/parse/FunctionCallback;, "Lcom/parse/FunctionCallback<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->callFunctionAsync(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;

    .line 96
    return-void
.end method

.method private static constructCallCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseCommand;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/parse/ParseCommand;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "client_function"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, "command":Lcom/parse/ParseCommand;
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/parse/Parse;->encodeJSONObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 38
    const-string v1, "function"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method private static convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "finalResult":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 50
    .end local p0    # "result":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "result":Ljava/lang/Object;
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method
