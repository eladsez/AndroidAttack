.class Lcom/parse/ParseCommand$3;
.super Ljava/lang/Object;
.source "ParseCommand.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommand;->performAsync(Z)Lcom/parse/Task;
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
        "Lorg/json/JSONObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommand;

.field private final synthetic val$saveToCache:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommand$3;->this$0:Lcom/parse/ParseCommand;

    iput-boolean p2, p0, Lcom/parse/ParseCommand$3;->val$saveToCache:Z

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 339
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    new-instance v3, Lcom/parse/ParseException;

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "error"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/parse/ParseCommand$3;->this$0:Lcom/parse/ParseCommand;

    const-string v4, "corrupted json"

    invoke-virtual {v3, v4, v1}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v3

    throw v3

    .line 342
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 347
    .local v0, "answer":Ljava/lang/Object;
    iget-boolean v3, p0, Lcom/parse/ParseCommand$3;->val$saveToCache:Z

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/parse/ParseCommand$3;->this$0:Lcom/parse/ParseCommand;

    invoke-virtual {v3}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_1
    return-object v0
.end method
