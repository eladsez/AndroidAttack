.class Lcom/parse/ParseRelationOperation;
.super Ljava/lang/Object;
.source "ParseRelationOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# instance fields
.field private relationsToAdd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private relationsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetClass:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "newTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "newRelationsToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "newRelationsToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "newRelationsToAdd":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .local p2, "newRelationsToRemove":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    .line 25
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    .line 27
    if-eqz p1, :cond_1

    .line 28
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 45
    :cond_1
    if-eqz p2, :cond_3

    .line 46
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a ParseRelationOperation with no objects."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 29
    .local v0, "object":Lcom/parse/ParseObject;
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "All objects in a relation must have object ids."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_5
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 35
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_6
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string v2, "All objects in a relation must be of the same class."

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "object":Lcom/parse/ParseObject;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 47
    .restart local v0    # "object":Lcom/parse/ParseObject;
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "All objects in a relation must have object ids."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_8
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 53
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_9
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string v2, "All objects in a relation must be of the same class."

    .line 56
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    .end local v0    # "object":Lcom/parse/ParseObject;
    :cond_a
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Lcom/parse/ParseRelation;

    invoke-direct {v0, p2, p3}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 168
    .local v0, "relation":Lcom/parse/ParseRelation;
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseRelation;->setTargetClass(Ljava/lang/String;)V

    move-object v1, v0

    .line 183
    .end local v0    # "relation":Lcom/parse/ParseRelation;
    .local v1, "relation":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 171
    .end local v1    # "relation":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseRelation;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 172
    check-cast v0, Lcom/parse/ParseRelation;

    .line 173
    .restart local v0    # "relation":Lcom/parse/ParseRelation;
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v0}, Lcom/parse/ParseRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/parse/ParseRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Related object object must be of class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcom/parse/ParseRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was passed in."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseRelation;->setTargetClass(Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .line 183
    .restart local v1    # "relation":Ljava/lang/Object;
    goto :goto_0

    .line 186
    .end local v0    # "relation":Lcom/parse/ParseRelation;
    .end local v1    # "relation":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Operation is invalid after previous operation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method convertSetToArray(Ljava/util/Set;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 84
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    return-object v0

    .line 84
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v2, "pointer":Lorg/json/JSONObject;
    const-string v4, "__type"

    const-string v5, "Pointer"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v4, "className"

    iget-object v5, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v4, "objectId"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/parse/ParseRelationOperation;->encode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "adds":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 99
    .local v2, "removes":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "adds":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .restart local v0    # "adds":Lorg/json/JSONObject;
    const-string v4, "__op"

    const-string v5, "AddRelation"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v4, "objects"

    iget-object v5, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-virtual {p0, v5}, Lcom/parse/ParseRelationOperation;->convertSetToArray(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 106
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "removes":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .restart local v2    # "removes":Lorg/json/JSONObject;
    const-string v4, "__op"

    const-string v5, "RemoveRelation"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v4, "objects"

    iget-object v5, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-virtual {p0, v5}, Lcom/parse/ParseRelationOperation;->convertSetToArray(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 112
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v3, "result":Lorg/json/JSONObject;
    const-string v4, "__op"

    const-string v5, "Batch"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 115
    .local v1, "ops":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 116
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    const-string v4, "ops"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .end local v1    # "ops":Lorg/json/JSONArray;
    .end local v3    # "result":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 121
    :cond_2
    if-eqz v0, :cond_3

    move-object v3, v0

    .line 122
    goto :goto_0

    .line 125
    :cond_3
    if-eqz v2, :cond_4

    move-object v3, v2

    .line 126
    goto :goto_0

    .line 129
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "A ParseRelationOperation was created without any data."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getTargetClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 6
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 158
    .end local p0    # "this":Lcom/parse/ParseRelationOperation;
    :goto_0
    return-object p0

    .line 136
    .restart local p0    # "this":Lcom/parse/ParseRelationOperation;
    :cond_0
    instance-of v3, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v3, :cond_1

    .line 137
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You can\'t modify a relation after deleting it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_1
    instance-of v3, p1, Lcom/parse/ParseRelationOperation;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 140
    check-cast v2, Lcom/parse/ParseRelationOperation;

    .line 142
    .local v2, "previousOperation":Lcom/parse/ParseRelationOperation;
    iget-object v3, v2, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, v2, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 144
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Related object object must be of class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v5, v2, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was passed in."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, v2, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v0, "newRelationsToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, v2, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 150
    .local v1, "newRelationsToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 151
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToAdd:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 154
    :cond_3
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 155
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v3, p0, Lcom/parse/ParseRelationOperation;->relationsToRemove:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_4
    new-instance v3, Lcom/parse/ParseRelationOperation;

    iget-object v4, p0, Lcom/parse/ParseRelationOperation;->targetClass:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    move-object p0, v3

    goto :goto_0

    .line 161
    .end local v0    # "newRelationsToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "newRelationsToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "previousOperation":Lcom/parse/ParseRelationOperation;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Operation is invalid after previous operation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
