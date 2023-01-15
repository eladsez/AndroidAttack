.class Lcom/parse/ParseFile$1$1$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$1$1;->call()Lcom/parse/ParseCommand;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseFile$1$1;

.field private final synthetic val$command:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$1$1;Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseFile$1$1$1;->this$2:Lcom/parse/ParseFile$1$1;

    iput-object p2, p0, Lcom/parse/ParseFile$1$1$1;->val$command:Lcom/parse/ParseCommand;

    .line 232
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$1$1$1;->then(Lcom/parse/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/parse/Task;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
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
    .line 234
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/parse/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/parse/ParseFile$1$1$1;->val$command:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->cancel()V

    .line 237
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
