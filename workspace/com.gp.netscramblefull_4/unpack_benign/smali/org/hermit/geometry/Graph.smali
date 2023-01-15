.class public Lorg/hermit/geometry/Graph;
.super Ljava/lang/Object;
.source "Graph.java"


# instance fields
.field private graphEdges:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/hermit/geometry/Edge;",
            ">;"
        }
    .end annotation
.end field

.field private graphVertices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/hermit/geometry/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lorg/hermit/geometry/Edge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "e":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Edge;>;"
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object v0, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    .line 47
    iput-object v0, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    .line 48
    iput-object p1, p0, Lorg/hermit/geometry/Graph;->graphEdges:Ljava/util/HashSet;

    .line 49
    return-void
.end method

.method private listVertices()V
    .locals 4

    .prologue
    .line 143
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    .line 144
    iget-object v1, p0, Lorg/hermit/geometry/Graph;->graphEdges:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    return-void

    .line 144
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/geometry/Edge;

    .line 145
    .local v0, "VE":Lorg/hermit/geometry/Edge;
    iget-object v2, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    invoke-virtual {v0}, Lorg/hermit/geometry/Edge;->getVertexA()Lorg/hermit/geometry/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    invoke-virtual {v0}, Lorg/hermit/geometry/Edge;->getVertexB()Lorg/hermit/geometry/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Graph ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lorg/hermit/geometry/Graph;->graphEdges:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    return-void

    .line 173
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/geometry/Edge;

    .line 174
    .local v0, "e":Lorg/hermit/geometry/Edge;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEdgeArray()[Lorg/hermit/geometry/Edge;
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lorg/hermit/geometry/Graph;->graphEdges:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Lorg/hermit/geometry/Edge;

    .line 91
    .local v0, "vEdges":[Lorg/hermit/geometry/Edge;
    iget-object v1, p0, Lorg/hermit/geometry/Graph;->graphEdges:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    return-object v0
.end method

.method public getEdges()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/hermit/geometry/Edge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/hermit/geometry/Graph;->graphEdges:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNumEdges()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/hermit/geometry/Graph;->graphEdges:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/hermit/geometry/Graph;->listVertices()V

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getVertexArray()[Lorg/hermit/geometry/Point;
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/hermit/geometry/Graph;->listVertices()V

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Lorg/hermit/geometry/Point;

    .line 131
    .local v0, "vVerts":[Lorg/hermit/geometry/Point;
    iget-object v1, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 132
    return-object v0
.end method

.method public getVertices()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/hermit/geometry/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lorg/hermit/geometry/Graph;->listVertices()V

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/hermit/geometry/Graph;->graphVertices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
