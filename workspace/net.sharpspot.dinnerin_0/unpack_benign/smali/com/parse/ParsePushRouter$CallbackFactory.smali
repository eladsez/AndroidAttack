.class Lcom/parse/ParsePushRouter$CallbackFactory;
.super Ljava/lang/Object;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePushRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackFactory"
.end annotation


# instance fields
.field contextData:Lorg/json/JSONObject;

.field klass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/PushCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lorg/json/JSONObject;)V
    .locals 0
    .param p2, "aContextData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/PushCallback;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "aKlass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/PushCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    .line 47
    iput-object p2, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->contextData:Lorg/json/JSONObject;

    .line 48
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "definition"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "com.parse.ParsePushRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating factory for class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    .line 39
    iget-object v0, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing class definition in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->contextData:Lorg/json/JSONObject;

    .line 43
    return-void
.end method


# virtual methods
.method newCallback()Lcom/parse/PushCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushCallback;

    .line 52
    .local v0, "callback":Lcom/parse/PushCallback;
    iget-object v1, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->contextData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/parse/PushCallback;->setLocalData(Lorg/json/JSONObject;)V

    .line 53
    return-object v0
.end method

.method requiresSubscription()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 58
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "name"

    iget-object v3, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v2, "data"

    iget-object v3, p0, Lcom/parse/ParsePushRouter$CallbackFactory;->contextData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "com.parse.ParsePushRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to encode route: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method
