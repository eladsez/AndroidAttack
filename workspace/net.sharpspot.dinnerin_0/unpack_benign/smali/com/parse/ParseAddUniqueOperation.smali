.class Lcom/parse/ParseAddUniqueOperation;
.super Ljava/lang/Object;
.source "ParseAddUniqueOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field protected objects:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    .line 23
    iget-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    .line 19
    iget-object v0, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 20
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .end local p1    # "oldValue":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 68
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_0
    instance-of v4, p1, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 69
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-static {p1}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    .local v2, "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, v2, p2, p3}, Lcom/parse/ParseAddUniqueOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 72
    .local v1, "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 73
    .end local v1    # "newValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "old":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "newObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v4, p1

    .line 75
    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    .end local p1    # "oldValue":Ljava/lang/Object;
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 80
    .end local v0    # "newObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Operation is invalid after previous operation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic encode()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/parse/ParseAddUniqueOperation;->encode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "AddUnique"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v1, "objects"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 5
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 59
    .end local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    return-object p0

    .line 36
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_0
    instance-of v3, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v3, :cond_1

    .line 37
    new-instance v3, Lcom/parse/ParseSetOperation;

    iget-object v4, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v3, v4}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0

    .line 38
    :cond_1
    instance-of v3, p1, Lcom/parse/ParseSetOperation;

    if-eqz v3, :cond_4

    .line 39
    check-cast p1, Lcom/parse/ParseSetOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 40
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "newObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v3, v2

    .line 42
    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 43
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/ParseFieldOperations;->jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    new-instance p0, Lcom/parse/ParseSetOperation;

    .end local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    .end local v0    # "newObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2    # "value":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    :cond_2
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "newObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v3, v2

    .line 48
    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    new-instance p0, Lcom/parse/ParseSetOperation;

    .end local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    invoke-direct {p0, v1}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v0    # "newObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2    # "value":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You can only add an item to a List or JSONArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    .end local v2    # "value":Ljava/lang/Object;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_4
    instance-of v3, p1, Lcom/parse/ParseAddUniqueOperation;

    if-eqz v3, :cond_5

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    check-cast p1, Lcom/parse/ParseAddUniqueOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    iget-object v3, p1, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/parse/ParseAddUniqueOperation;->objects:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    new-instance p0, Lcom/parse/ParseAddUniqueOperation;

    .end local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    invoke-direct {p0, v1}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 61
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/parse/ParseAddUniqueOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Operation is invalid after previous operation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
