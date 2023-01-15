.class Lcom/parse/ParseUser$9;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$authData:Lorg/json/JSONObject;

.field private final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseUser$9;->val$authType:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseUser$9;->val$authData:Lorg/json/JSONObject;

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    new-instance v3, Lcom/parse/ParseUser;

    invoke-direct {v3}, Lcom/parse/ParseUser;-><init>()V

    .line 947
    .local v3, "user":Lcom/parse/ParseUser;
    :try_start_0
    invoke-static {v3}, Lcom/parse/ParseUser;->access$6(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseUser$9;->val$authType:Ljava/lang/String;

    iget-object v6, p0, Lcom/parse/ParseUser$9;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 948
    invoke-static {v3}, Lcom/parse/ParseUser;->access$7(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseUser$9;->val$authType:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    invoke-virtual {v3}, Lcom/parse/ParseUser;->startSave()Ljava/util/Map;

    move-result-object v2

    .line 953
    .local v2, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    invoke-static {v3, v2}, Lcom/parse/ParseUser;->access$8(Lcom/parse/ParseUser;Ljava/util/Map;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 954
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v4

    .line 955
    new-instance v5, Lcom/parse/ParseUser$9$1;

    invoke-direct {v5, p0, v3, v0, v2}, Lcom/parse/ParseUser$9$1;-><init>(Lcom/parse/ParseUser$9;Lcom/parse/ParseUser;Lcom/parse/ParseCommand;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v4

    .line 960
    new-instance v5, Lcom/parse/ParseUser$9$2;

    iget-object v6, p0, Lcom/parse/ParseUser$9;->val$authType:Ljava/lang/String;

    invoke-direct {v5, p0, v3, v6}, Lcom/parse/ParseUser$9$2;-><init>(Lcom/parse/ParseUser$9;Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v4

    .line 954
    return-object v4

    .line 949
    .end local v0    # "command":Lcom/parse/ParseCommand;
    .end local v2    # "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/parse/ParseException;

    invoke-direct {v4, v1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$9;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
