.class public Lanywheresoftware/b4a/objects/collections/Map;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "Map.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4aDebuggable;


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Map"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/collections/Map$MyMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Lanywheresoftware/b4a/objects/collections/Map$MyMap;",
        ">;",
        "Lanywheresoftware/b4a/BA$B4aDebuggable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->clear()V

    .line 81
    return-void
.end method

.method public ContainsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "Key"    # Ljava/lang/Object;

    .prologue
    .line 120
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "Key"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public GetDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "Key"    # Ljava/lang/Object;
    .param p2, "Default"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "res":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v1, p2

    .line 74
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public GetKeyAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public GetValueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "Index"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/collections/Map;->setObject(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public Keys()Lanywheresoftware/b4a/BA$IterableList;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lanywheresoftware/b4a/objects/collections/Map$1;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/objects/collections/Map$1;-><init>(Lanywheresoftware/b4a/objects/collections/Map;)V

    return-object v0
.end method

.method public Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "Key"    # Ljava/lang/Object;
    .param p2, "Value"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "Key"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Values()Lanywheresoftware/b4a/BA$IterableList;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lanywheresoftware/b4a/objects/collections/Map$2;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/objects/collections/Map$2;-><init>(Lanywheresoftware/b4a/objects/collections/Map;)V

    return-object v0
.end method

.method public debug(I[Z)[Ljava/lang/Object;
    .locals 7
    .param p1, "limit"    # I
    .param p2, "outShouldAddReflectionFields"    # [Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 172
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    .line 173
    .local v2, "res":[Ljava/lang/Object;
    const-string v3, "Size"

    aput-object v3, v2, v6

    .line 174
    const/4 v3, 0x1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 175
    const/4 v1, 0x2

    .line 176
    .local v1, "i":I
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    aput-boolean v6, p2, v6

    .line 182
    return-object v2

    .line 176
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 178
    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    .line 179
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/collections/Map;
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->size()I

    move-result v0

    return v0
.end method
