.class public Lanywheresoftware/b4a/objects/collections/Map$MyMap;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/collections/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private currentEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private innerMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private iteratorPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    .line 185
    return-void
.end method

.method private getEntry(I)Ljava/util/Map$Entry;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    if-eqz v1, :cond_0

    .line 198
    iget v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iteratorPosition:I

    if-eq v1, p1, :cond_0

    .line 201
    iget v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iteratorPosition:I

    const/4 v2, 0x1

    sub-int v2, p1, v2

    if-ne v1, v2, :cond_2

    .line 202
    iget-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->currentEntry:Ljava/util/Map$Entry;

    .line 203
    iget v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iteratorPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iteratorPosition:I

    .line 208
    :cond_0
    :goto_0
    iget-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    if-nez v1, :cond_1

    .line 209
    iget-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-le v0, p1, :cond_3

    .line 213
    iput p1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iteratorPosition:I

    .line 215
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->currentEntry:Ljava/util/Map$Entry;

    return-object v1

    .line 206
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    goto :goto_0

    .line 211
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->currentEntry:Ljava/util/Map$Entry;

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    .line 220
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 221
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 225
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 230
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 240
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    .line 256
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Object;+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    .line 262
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 263
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->iterator:Ljava/util/Iterator;

    .line 268
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->innerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
