.class Lcom/parse/ParseCommandCache$4;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V
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
.field final synthetic this$0:Lcom/parse/ParseCommandCache;

.field private final synthetic val$localId:Ljava/lang/String;

.field private final synthetic val$tcs:Lcom/parse/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Lcom/parse/Task$TaskCompletionSource;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommandCache$4;->this$0:Lcom/parse/ParseCommandCache;

    iput-object p2, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

    .line 526
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseCommandCache$4;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 3
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
    .line 528
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lcom/parse/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 541
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 537
    const-string v2, "objectId"

    .line 536
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "objectId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCommandCache$4;->val$localId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
