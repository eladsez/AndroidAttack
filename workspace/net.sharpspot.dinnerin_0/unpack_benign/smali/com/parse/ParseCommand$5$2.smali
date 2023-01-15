.class Lcom/parse/ParseCommand$5$2;
.super Ljava/lang/Object;
.source "ParseCommand.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommand$5;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseCommand$5;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseCommand$5$2;->this$1:Lcom/parse/ParseCommand$5;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseCommand$5$2;->this$1:Lcom/parse/ParseCommand$5;

    invoke-static {v0}, Lcom/parse/ParseCommand$5;->access$1(Lcom/parse/ParseCommand$5;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseCommand;->access$7(Lcom/parse/ParseCommand;)V

    .line 393
    iget-object v0, p0, Lcom/parse/ParseCommand$5$2;->this$1:Lcom/parse/ParseCommand$5;

    invoke-static {v0}, Lcom/parse/ParseCommand$5;->access$1(Lcom/parse/ParseCommand$5;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseCommand;->access$1(Lcom/parse/ParseCommand;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseCommand$5$2;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
