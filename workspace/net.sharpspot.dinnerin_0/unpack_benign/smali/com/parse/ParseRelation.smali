.class public Lcom/parse/ParseRelation;
.super Ljava/lang/Object;
.source "ParseRelation.java"


# instance fields
.field private key:Ljava/lang/String;

.field private parent:Lcom/parse/ParseObject;

.field private targetClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/parse/ParseObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    .line 24
    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetClass"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    .line 30
    iput-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lcom/parse/ParseObject;)V
    .locals 3
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 59
    new-instance v0, Lcom/parse/ParseRelationOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 60
    .local v0, "operation":Lcom/parse/ParseRelationOperation;
    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 62
    return-void
.end method

.method encodeToJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v0, "relation":Lorg/json/JSONObject;
    const-string v1, "__type"

    const-string v2, "Relation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v1, "className"

    iget-object v2, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    return-object v0
.end method

.method ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "someParent"    # Lcom/parse/ParseObject;
    .param p2, "someKey"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 39
    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    if-eq v0, p1, :cond_2

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    const-string v1, "Internal error. One ParseRelation retrieved from two different ParseObjects."

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    const-string v1, "Internal error. One ParseRelation retrieved from two different keys."

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3
    return-void
.end method

.method public getQuery()Lcom/parse/ParseQuery;
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "query":Lcom/parse/ParseQuery;
    iget-object v1, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 91
    return-object v0

    .line 88
    .end local v0    # "query":Lcom/parse/ParseQuery;
    :cond_0
    new-instance v0, Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .restart local v0    # "query":Lcom/parse/ParseQuery;
    goto :goto_0
.end method

.method getTargetClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Lcom/parse/ParseObject;)V
    .locals 3
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 72
    new-instance v0, Lcom/parse/ParseRelationOperation;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 73
    .local v0, "operation":Lcom/parse/ParseRelationOperation;
    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/parse/ParseRelation;->parent:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 75
    return-void
.end method

.method setTargetClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 107
    return-void
.end method
