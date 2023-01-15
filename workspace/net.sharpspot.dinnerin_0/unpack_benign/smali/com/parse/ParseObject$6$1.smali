.class Lcom/parse/ParseObject$6$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$6;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Lcom/parse/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$6;

.field final synthetic val$command:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$6;Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/parse/ParseObject$6$1;->this$1:Lcom/parse/ParseObject$6;

    iput-object p2, p0, Lcom/parse/ParseObject$6$1;->val$command:Lcom/parse/ParseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
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
    .line 1025
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$6$1;->this$1:Lcom/parse/ParseObject$6;

    iget-object v2, v0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iget-object v0, p0, Lcom/parse/ParseObject$6$1;->val$command:Lcom/parse/ParseCommand;

    iget-object v3, v0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/ParseObject$6$1;->this$1:Lcom/parse/ParseObject$6;

    iget-object v1, v1, Lcom/parse/ParseObject$6;->val$operations:Lcom/parse/Capture;

    invoke-virtual {v1}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v3, v0, v1}, Lcom/parse/ParseObject;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 1026
    invoke-virtual {p1}, Lcom/parse/Task;->makeVoid()Lcom/parse/Task;

    move-result-object v0

    return-object v0
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
    .line 1023
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$6$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
