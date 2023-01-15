.class Lcom/parse/ParseQuery$7;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findFromNetworkAsync(Z)Lcom/parse/Task;
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
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParseObject;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/parse/ParseQuery$7;)Lcom/parse/ParseQuery;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    return-object v0
.end method


# virtual methods
.method public then(Lcom/parse/Task;)Lcom/parse/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, "answer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    iget-object v2, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    invoke-static {v2}, Lcom/parse/ParseQuery;->access$6(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;

    move-result-object v2

    if-nez v2, :cond_0

    .line 476
    invoke-static {v0}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v2

    .line 482
    :goto_0
    return-object v2

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    invoke-static {v2}, Lcom/parse/ParseQuery;->access$7(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 481
    .local v1, "caching":Z
    :goto_1
    iget-object v2, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/parse/ParseQuery;->access$8(Lcom/parse/ParseQuery;J)V

    .line 482
    iget-object v2, p0, Lcom/parse/ParseQuery$7;->this$0:Lcom/parse/ParseQuery;

    invoke-static {v2}, Lcom/parse/ParseQuery;->access$6(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parse/ParseCommand;->performAsync(Z)Lcom/parse/Task;

    move-result-object v2

    .line 483
    new-instance v3, Lcom/parse/ParseQuery$7$1;

    invoke-direct {v3, p0}, Lcom/parse/ParseQuery$7$1;-><init>(Lcom/parse/ParseQuery$7;)V

    .line 482
    invoke-virtual {v2, v3}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v2

    goto :goto_0

    .line 480
    .end local v1    # "caching":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
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

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$7;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
