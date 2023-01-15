.class Lcom/parse/ParseQuery$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->finishRunning(Lcom/parse/Task;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/Continuation",
        "<TT;",
        "Lcom/parse/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    .line 184
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
            "<TT;>;)",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    invoke-static {v0}, Lcom/parse/ParseQuery;->access$0(Lcom/parse/ParseQuery;)V

    .line 187
    return-object p1
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$1;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
