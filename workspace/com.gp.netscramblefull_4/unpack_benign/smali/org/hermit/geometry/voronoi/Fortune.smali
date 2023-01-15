.class public abstract Lorg/hermit/geometry/voronoi/Fortune;
.super Ljava/lang/Object;
.source "Fortune.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ComputeVoronoiGraph(Ljava/lang/Iterable;)Lorg/hermit/geometry/Graph;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/hermit/geometry/Point;",
            ">;)",
            "Lorg/hermit/geometry/Graph;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "points":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hermit/geometry/Point;>;"
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    .line 55
    .local v1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/hermit/geometry/voronoi/Event;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    invoke-static {v1}, Lorg/hermit/geometry/voronoi/Fortune;->ComputeVoronoiGraph(Ljava/util/PriorityQueue;)Lorg/hermit/geometry/Graph;

    move-result-object v3

    return-object v3

    .line 55
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/hermit/geometry/Point;

    .line 56
    .local v2, "v":Lorg/hermit/geometry/Point;
    new-instance v0, Lorg/hermit/geometry/voronoi/DataEvent;

    invoke-direct {v0, v2}, Lorg/hermit/geometry/voronoi/DataEvent;-><init>(Lorg/hermit/geometry/Point;)V

    .line 57
    .local v0, "ev":Lorg/hermit/geometry/voronoi/DataEvent;
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static ComputeVoronoiGraph(Ljava/util/PriorityQueue;)Lorg/hermit/geometry/Graph;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lorg/hermit/geometry/voronoi/Event;",
            ">;)",
            "Lorg/hermit/geometry/Graph;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/hermit/geometry/voronoi/Event;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v8, "CurrentCircles":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/hermit/geometry/voronoi/DataNode;Lorg/hermit/geometry/voronoi/CircleEvent;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 128
    .local v5, "vertexList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Point;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v6, "edgeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/voronoi/VoronoiEdge;>;"
    const/4 v2, 0x0

    .line 131
    .local v2, "RootNode":Lorg/hermit/geometry/voronoi/Node;
    :cond_0
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 166
    invoke-virtual {v2}, Lorg/hermit/geometry/voronoi/Node;->CleanUpTree()V

    .line 167
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "RootNode":Lorg/hermit/geometry/voronoi/Node;
    .end local p0    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/hermit/geometry/voronoi/Event;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_9

    .line 181
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local p0, "MinuteEdges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hermit/geometry/voronoi/VoronoiEdge;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v5    # "vertexList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Point;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 194
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .end local p0    # "MinuteEdges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hermit/geometry/voronoi/VoronoiEdge;>;"
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 198
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local p0, "finalEdges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Edge;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 201
    new-instance v1, Lorg/hermit/geometry/Graph;

    invoke-direct {v1, p0}, Lorg/hermit/geometry/Graph;-><init>(Ljava/util/HashSet;)V

    return-object v1

    .line 132
    .restart local v2    # "RootNode":Lorg/hermit/geometry/voronoi/Node;
    .restart local v5    # "vertexList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Point;>;"
    .local p0, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/hermit/geometry/voronoi/Event;>;"
    :cond_3
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hermit/geometry/voronoi/Event;

    .line 133
    .local v1, "VE":Lorg/hermit/geometry/voronoi/Event;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v7, "CircleCheckList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hermit/geometry/voronoi/DataNode;>;"
    instance-of v3, v1, Lorg/hermit/geometry/voronoi/CircleEvent;

    if-eqz v3, :cond_4

    .line 135
    move-object v0, v1

    check-cast v0, Lorg/hermit/geometry/voronoi/CircleEvent;

    move-object v3, v0

    .line 136
    .local v3, "cev":Lorg/hermit/geometry/voronoi/CircleEvent;
    iget-object v4, v3, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeN:Lorg/hermit/geometry/voronoi/DataNode;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-boolean v3, v3, Lorg/hermit/geometry/voronoi/CircleEvent;->Valid:Z

    .end local v3    # "cev":Lorg/hermit/geometry/voronoi/CircleEvent;
    if-eqz v3, :cond_0

    .line 140
    :cond_4
    invoke-virtual {v1}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v3

    invoke-virtual/range {v1 .. v7}, Lorg/hermit/geometry/voronoi/Event;->process(Lorg/hermit/geometry/voronoi/Node;DLjava/util/HashSet;Ljava/util/HashSet;Ljava/util/ArrayList;)Lorg/hermit/geometry/voronoi/Node;

    move-result-object v2

    .line 142
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "CircleCheckList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hermit/geometry/voronoi/DataNode;>;"
    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 155
    instance-of v3, v1, Lorg/hermit/geometry/voronoi/DataEvent;

    if-eqz v3, :cond_0

    .line 156
    check-cast v1, Lorg/hermit/geometry/voronoi/DataEvent;

    .end local v1    # "VE":Lorg/hermit/geometry/voronoi/Event;
    invoke-virtual {v1}, Lorg/hermit/geometry/voronoi/DataEvent;->getDatum()Lorg/hermit/geometry/Point;

    move-result-object v1

    .line 157
    .local v1, "DP":Lorg/hermit/geometry/Point;
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/hermit/geometry/voronoi/CircleEvent;

    .line 158
    .local v3, "VCE":Lorg/hermit/geometry/voronoi/CircleEvent;
    iget-object v7, v3, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    invoke-virtual {v1, v7}, Lorg/hermit/geometry/Point;->dist(Lorg/hermit/geometry/Point;)D

    move-result-wide v9

    .line 159
    .local v9, "dist":D
    invoke-virtual {v3}, Lorg/hermit/geometry/voronoi/CircleEvent;->getY()D

    move-result-wide v11

    iget-object v7, v3, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    invoke-virtual {v7}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v13

    sub-double/2addr v11, v13

    .line 160
    .local v11, "offs":D
    invoke-static {v9, v10, v11, v12}, Lorg/hermit/geometry/MathTools;->lt(DD)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 161
    const/4 v7, 0x0

    iput-boolean v7, v3, Lorg/hermit/geometry/voronoi/CircleEvent;->Valid:Z

    goto :goto_4

    .line 142
    .end local v3    # "VCE":Lorg/hermit/geometry/voronoi/CircleEvent;
    .end local v9    # "dist":D
    .end local v11    # "offs":D
    .local v1, "VE":Lorg/hermit/geometry/voronoi/Event;
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/hermit/geometry/voronoi/DataNode;

    .line 143
    .local v4, "VD":Lorg/hermit/geometry/voronoi/DataNode;
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 144
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/hermit/geometry/voronoi/CircleEvent;

    .line 145
    .local v3, "cev":Lorg/hermit/geometry/voronoi/CircleEvent;
    const/4 v9, 0x0

    iput-boolean v9, v3, Lorg/hermit/geometry/voronoi/CircleEvent;->Valid:Z

    .line 148
    .end local v3    # "cev":Lorg/hermit/geometry/voronoi/CircleEvent;
    :cond_8
    invoke-virtual {v1}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lorg/hermit/geometry/voronoi/DataNode;->CircleCheckDataNode(D)Lorg/hermit/geometry/voronoi/CircleEvent;

    move-result-object v3

    .line 149
    .local v3, "VCE":Lorg/hermit/geometry/voronoi/CircleEvent;
    if-eqz v3, :cond_5

    .line 150
    invoke-virtual {p0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 167
    .end local v1    # "VE":Lorg/hermit/geometry/voronoi/Event;
    .end local v2    # "RootNode":Lorg/hermit/geometry/voronoi/Node;
    .end local v3    # "VCE":Lorg/hermit/geometry/voronoi/CircleEvent;
    .end local v4    # "VD":Lorg/hermit/geometry/voronoi/DataNode;
    .end local p0    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/hermit/geometry/voronoi/Event;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;

    .line 168
    .local v1, "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    iget-boolean p0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->Done:Z

    if-nez p0, :cond_1

    .line 170
    iget-object p0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    sget-object v3, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    if-ne p0, v3, :cond_1

    .line 171
    sget-object p0, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    invoke-virtual {v1, p0}, Lorg/hermit/geometry/voronoi/VoronoiEdge;->AddVertex(Lorg/hermit/geometry/Point;)V

    .line 172
    iget-object p0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v3

    iget-object p0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 173
    iget-object p0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v3

    iget-object p0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v7

    cmpg-double p0, v3, v7

    if-gez p0, :cond_1

    .line 174
    iget-object p0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    .line 175
    .local p0, "T":Lorg/hermit/geometry/Point;
    iget-object v3, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    iput-object v3, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    .line 176
    iput-object p0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    goto/16 :goto_0

    .line 182
    .end local v1    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    .end local v5    # "vertexList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Point;>;"
    .local p0, "MinuteEdges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hermit/geometry/voronoi/VoronoiEdge;>;"
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;

    .line 183
    .restart local v1    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    invoke-virtual {v1}, Lorg/hermit/geometry/voronoi/VoronoiEdge;->isPartlyInfinite()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    iget-object v4, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    invoke-virtual {v2, v4}, Lorg/hermit/geometry/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/hermit/geometry/voronoi/VoronoiEdge;

    .line 187
    .local v2, "VE2":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    iget-object v5, v2, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    iget-object v7, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    invoke-virtual {v5, v7}, Lorg/hermit/geometry/Point;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 188
    iget-object v5, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    iput-object v5, v2, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    .line 189
    :cond_c
    iget-object v5, v2, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    iget-object v7, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    invoke-virtual {v5, v7}, Lorg/hermit/geometry/Point;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 190
    iget-object v5, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    iput-object v5, v2, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    goto :goto_5

    .line 194
    .end local v1    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    .end local v2    # "VE2":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    .end local p0    # "MinuteEdges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hermit/geometry/voronoi/VoronoiEdge;>;"
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;

    .line 195
    .restart local v1    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 199
    .end local v1    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    .local p0, "finalEdges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Edge;>;"
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;

    .line 200
    .restart local v1    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    invoke-virtual {v1}, Lorg/hermit/geometry/voronoi/VoronoiEdge;->toEdge()Lorg/hermit/geometry/Edge;

    move-result-object v1

    .end local v1    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public static ComputeVoronoiGraph([Lorg/hermit/geometry/Point;)Lorg/hermit/geometry/Graph;
    .locals 6
    .param p0, "points"    # [Lorg/hermit/geometry/Point;

    .prologue
    .line 75
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    .line 76
    .local v1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/hermit/geometry/voronoi/Event;>;"
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 82
    invoke-static {v1}, Lorg/hermit/geometry/voronoi/Fortune;->ComputeVoronoiGraph(Ljava/util/PriorityQueue;)Lorg/hermit/geometry/Graph;

    move-result-object v3

    return-object v3

    .line 76
    :cond_0
    aget-object v2, p0, v4

    .line 77
    .local v2, "v":Lorg/hermit/geometry/Point;
    new-instance v0, Lorg/hermit/geometry/voronoi/DataEvent;

    invoke-direct {v0, v2}, Lorg/hermit/geometry/voronoi/DataEvent;-><init>(Lorg/hermit/geometry/Point;)V

    .line 78
    .local v0, "ev":Lorg/hermit/geometry/voronoi/DataEvent;
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static FilterVG(Lorg/hermit/geometry/Graph;D)Lorg/hermit/geometry/Graph;
    .locals 7
    .param p0, "graph"    # Lorg/hermit/geometry/Graph;
    .param p1, "min"    # D

    .prologue
    .line 99
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v3, "edgeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Edge;>;"
    invoke-virtual {p0}, Lorg/hermit/geometry/Graph;->getEdges()Ljava/util/Iterator;

    move-result-object v4

    .line 101
    .local v4, "edges":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/hermit/geometry/Edge;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 110
    new-instance v5, Lorg/hermit/geometry/Graph;

    invoke-direct {v5, v3}, Lorg/hermit/geometry/Graph;-><init>(Ljava/util/HashSet;)V

    return-object v5

    .line 102
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/hermit/geometry/Edge;

    .line 103
    .local v2, "e":Lorg/hermit/geometry/Edge;
    invoke-virtual {v2}, Lorg/hermit/geometry/Edge;->getDatumA()Lorg/hermit/geometry/Point;

    move-result-object v0

    .line 104
    .local v0, "da":Lorg/hermit/geometry/Point;
    invoke-virtual {v2}, Lorg/hermit/geometry/Edge;->getDatumB()Lorg/hermit/geometry/Point;

    move-result-object v1

    .line 105
    .local v1, "db":Lorg/hermit/geometry/Point;
    invoke-virtual {v0, v1}, Lorg/hermit/geometry/Point;->dist(Lorg/hermit/geometry/Point;)D

    move-result-wide v5

    cmpl-double v5, v5, p1

    if-ltz v5, :cond_0

    .line 106
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
