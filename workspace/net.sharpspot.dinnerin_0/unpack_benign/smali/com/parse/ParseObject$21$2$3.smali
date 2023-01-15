.class Lcom/parse/ParseObject$21$2$3;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$21$2;->then(Lcom/parse/Task;)Lcom/parse/Task;
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
.field final synthetic this$1:Lcom/parse/ParseObject$21$2;

.field final synthetic val$current:Ljava/util/List;

.field final synthetic val$operations:Ljava/util/List;

.field final synthetic val$ops:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$21$2;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/parse/ParseObject$21$2$3;->this$1:Lcom/parse/ParseObject$21$2;

    iput-object p2, p0, Lcom/parse/ParseObject$21$2$3;->val$current:Ljava/util/List;

    iput-object p3, p0, Lcom/parse/ParseObject$21$2$3;->val$operations:Ljava/util/List;

    iput-object p4, p0, Lcom/parse/ParseObject$21$2$3;->val$ops:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 2
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
    .line 1692
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$21$2$3;->val$current:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1693
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v0

    .line 1696
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$21$2$3;->val$current:Ljava/util/List;

    new-instance v1, Lcom/parse/ParseObject$21$2$3$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$21$2$3$1;-><init>(Lcom/parse/ParseObject$21$2$3;)V

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v0

    goto :goto_0
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
    .line 1690
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21$2$3;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
