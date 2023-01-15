.class Lcom/parse/ParseObject$6;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAsync(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operations:Lcom/parse/Capture;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/Capture;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$6;->val$operations:Lcom/parse/Capture;

    iput-object p3, p0, Lcom/parse/ParseObject$6;->val$sessionToken:Ljava/lang/String;

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
            "Ljava/lang/Void;",
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
    .line 1022
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$6;->val$operations:Lcom/parse/Capture;

    invoke-virtual {v1}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v3, p0, Lcom/parse/ParseObject$6;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/parse/ParseObject;->constructSaveCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 1023
    .local v0, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$6$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$6$1;-><init>(Lcom/parse/ParseObject$6;Lcom/parse/ParseCommand;)V

    invoke-virtual {v1, v2}, Lcom/parse/Task;->continueWithTask(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v1

    return-object v1
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
    .line 1020
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$6;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
