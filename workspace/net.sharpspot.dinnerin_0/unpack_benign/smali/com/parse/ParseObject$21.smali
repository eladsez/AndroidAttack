.class final Lcom/parse/ParseObject$21;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$objects:Ljava/util/List;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/parse/ParseObject$21;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$21;->val$sessionToken:Ljava/lang/String;

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
    .line 1628
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 1630
    .local v3, "uniqueObjects":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/parse/ParseObject$21;->val$objects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 1631
    .local v1, "obj":Lcom/parse/ParseObject;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1634
    .end local v1    # "obj":Lcom/parse/ParseObject;
    :cond_0
    new-instance v2, Lcom/parse/Capture;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v4}, Lcom/parse/Capture;-><init>(Ljava/lang/Object;)V

    .line 1636
    .local v2, "remaining":Lcom/parse/Capture;, "Lcom/parse/Capture<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/ParseObject$21$1;

    invoke-direct {v5, p0, v2}, Lcom/parse/ParseObject$21$1;-><init>(Lcom/parse/ParseObject$21;Lcom/parse/Capture;)V

    new-instance v6, Lcom/parse/ParseObject$21$2;

    invoke-direct {v6, p0, v2}, Lcom/parse/ParseObject$21$2;-><init>(Lcom/parse/ParseObject$21;Lcom/parse/Capture;)V

    invoke-virtual {v4, v5, v6}, Lcom/parse/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v4

    return-object v4
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
    .line 1625
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21;->then(Lcom/parse/Task;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method
