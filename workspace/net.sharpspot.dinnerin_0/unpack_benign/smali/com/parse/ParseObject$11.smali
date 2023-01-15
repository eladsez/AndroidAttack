.class Lcom/parse/ParseObject$11;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveEventually(Lcom/parse/SaveCallback;)V
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$command:Lcom/parse/ParseCommand;

.field final synthetic val$operations:Ljava/util/Map;

.field final synthetic val$succeeded:Lcom/parse/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseCommand;Ljava/util/Map;Lcom/parse/Capture;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/parse/ParseObject$11;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$11;->val$command:Lcom/parse/ParseCommand;

    iput-object p3, p0, Lcom/parse/ParseObject$11;->val$operations:Ljava/util/Map;

    iput-object p4, p0, Lcom/parse/ParseObject$11;->val$succeeded:Lcom/parse/Capture;

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
    .line 1124
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$11;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 4
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
    .line 1126
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/parse/ParseObject$11;->this$0:Lcom/parse/ParseObject;

    iget-object v0, p0, Lcom/parse/ParseObject$11;->val$command:Lcom/parse/ParseCommand;

    iget-object v2, v0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/parse/ParseObject$11;->val$operations:Ljava/util/Map;

    invoke-virtual {v1, v2, v0, v3}, Lcom/parse/ParseObject;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 1128
    iget-object v0, p0, Lcom/parse/ParseObject$11;->val$succeeded:Lcom/parse/Capture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/Capture;->set(Ljava/lang/Object;)V

    .line 1130
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
