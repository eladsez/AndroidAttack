.class Lorg/hermit/geometry/voronoi/DataEvent;
.super Lorg/hermit/geometry/voronoi/Event;
.source "DataEvent.java"


# instance fields
.field private DataPoint:Lorg/hermit/geometry/Point;


# direct methods
.method public constructor <init>(Lorg/hermit/geometry/Point;)V
    .locals 0
    .param p1, "DP"    # Lorg/hermit/geometry/Point;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/hermit/geometry/voronoi/Event;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/hermit/geometry/voronoi/DataEvent;

    if-nez v2, :cond_1

    .line 139
    :cond_0
    const/4 v2, 0x0

    .line 142
    :goto_0
    return v2

    .line 141
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/hermit/geometry/voronoi/DataEvent;

    move-object v1, v0

    .line 142
    .local v1, "o":Lorg/hermit/geometry/voronoi/DataEvent;
    iget-object v2, p0, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    iget-object v3, v1, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    invoke-virtual {v2, v3}, Lorg/hermit/geometry/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getDatum()Lorg/hermit/geometry/Point;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    invoke-virtual {v0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    invoke-virtual {v0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method process(Lorg/hermit/geometry/voronoi/Node;DLjava/util/HashSet;Ljava/util/HashSet;Ljava/util/ArrayList;)Lorg/hermit/geometry/voronoi/Node;
    .locals 17
    .param p1, "Root"    # Lorg/hermit/geometry/voronoi/Node;
    .param p2, "ys"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hermit/geometry/voronoi/Node;",
            "D",
            "Ljava/util/HashSet",
            "<",
            "Lorg/hermit/geometry/Point;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lorg/hermit/geometry/voronoi/VoronoiEdge;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/hermit/geometry/voronoi/DataNode;",
            ">;)",
            "Lorg/hermit/geometry/voronoi/Node;"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, "vertList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Point;>;"
    .local p5, "edgeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/voronoi/VoronoiEdge;>;"
    .local p6, "CircleCheckList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hermit/geometry/voronoi/DataNode;>;"
    if-nez p1, :cond_0

    .line 64
    new-instance p1, Lorg/hermit/geometry/voronoi/DataNode;

    .end local p1    # "Root":Lorg/hermit/geometry/voronoi/Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    move-object v13, v0

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/hermit/geometry/voronoi/DataNode;-><init>(Lorg/hermit/geometry/Point;)V

    .line 65
    .restart local p1    # "Root":Lorg/hermit/geometry/voronoi/Node;
    move-object/from16 v0, p1

    check-cast v0, Lorg/hermit/geometry/voronoi/DataNode;

    move-object/from16 p2, v0

    .end local p2    # "ys":D
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p1

    .line 110
    :goto_0
    return-object v13

    .line 70
    .restart local p2    # "ys":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v13

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/voronoi/Node;->FindDataNode(Lorg/hermit/geometry/voronoi/Node;DD)Lorg/hermit/geometry/voronoi/DataNode;

    move-result-object v5

    .line 73
    .local v5, "C":Lorg/hermit/geometry/voronoi/Node;
    new-instance v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;

    invoke-direct {v7}, Lorg/hermit/geometry/voronoi/VoronoiEdge;-><init>()V

    .line 74
    .local v7, "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    move-object v0, v5

    check-cast v0, Lorg/hermit/geometry/voronoi/DataNode;

    move-object v6, v0

    iget-object v13, v6, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    iput-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataEvent;->DataPoint:Lorg/hermit/geometry/Point;

    move-object v13, v0

    iput-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    .line 76
    sget-object v13, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    iput-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    .line 77
    sget-object v13, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    iput-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    .line 78
    move-object/from16 v0, p5

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-virtual {v13}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v13

    iget-object v15, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-virtual {v15}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 83
    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-virtual {v13}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v13

    iget-object v15, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-virtual {v15}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v15

    cmpg-double v13, v13, v15

    if-gez v13, :cond_1

    .line 84
    new-instance v8, Lorg/hermit/geometry/voronoi/DataNode;

    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-direct {v8, v13}, Lorg/hermit/geometry/voronoi/DataNode;-><init>(Lorg/hermit/geometry/Point;)V

    .line 85
    .local v8, "l":Lorg/hermit/geometry/voronoi/DataNode;
    new-instance v10, Lorg/hermit/geometry/voronoi/DataNode;

    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-direct {v10, v13}, Lorg/hermit/geometry/voronoi/DataNode;-><init>(Lorg/hermit/geometry/Point;)V

    .line 86
    .local v10, "r":Lorg/hermit/geometry/voronoi/DataNode;
    new-instance v6, Lorg/hermit/geometry/voronoi/EdgeNode;

    const/4 v13, 0x0

    invoke-direct {v6, v7, v13, v8, v10}, Lorg/hermit/geometry/voronoi/EdgeNode;-><init>(Lorg/hermit/geometry/voronoi/VoronoiEdge;ZLorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    .line 92
    .local v6, "SubRoot":Lorg/hermit/geometry/voronoi/Node;
    :goto_1
    move-object/from16 v0, p6

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    move-object/from16 v0, p6

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v10    # "r":Lorg/hermit/geometry/voronoi/DataNode;
    :goto_2
    invoke-virtual {v5}, Lorg/hermit/geometry/voronoi/Node;->getParent()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v9

    .line 107
    .local v9, "parent":Lorg/hermit/geometry/voronoi/Node;
    if-nez v9, :cond_3

    move-object v13, v6

    .line 108
    goto :goto_0

    .line 88
    .end local v6    # "SubRoot":Lorg/hermit/geometry/voronoi/Node;
    .end local v8    # "l":Lorg/hermit/geometry/voronoi/DataNode;
    .end local v9    # "parent":Lorg/hermit/geometry/voronoi/Node;
    :cond_1
    new-instance v8, Lorg/hermit/geometry/voronoi/DataNode;

    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-direct {v8, v13}, Lorg/hermit/geometry/voronoi/DataNode;-><init>(Lorg/hermit/geometry/Point;)V

    .line 89
    .restart local v8    # "l":Lorg/hermit/geometry/voronoi/DataNode;
    new-instance v10, Lorg/hermit/geometry/voronoi/DataNode;

    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-direct {v10, v13}, Lorg/hermit/geometry/voronoi/DataNode;-><init>(Lorg/hermit/geometry/Point;)V

    .line 90
    .restart local v10    # "r":Lorg/hermit/geometry/voronoi/DataNode;
    new-instance v6, Lorg/hermit/geometry/voronoi/EdgeNode;

    const/4 v13, 0x1

    invoke-direct {v6, v7, v13, v8, v10}, Lorg/hermit/geometry/voronoi/EdgeNode;-><init>(Lorg/hermit/geometry/voronoi/VoronoiEdge;ZLorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    .restart local v6    # "SubRoot":Lorg/hermit/geometry/voronoi/Node;
    goto :goto_1

    .line 95
    .end local v6    # "SubRoot":Lorg/hermit/geometry/voronoi/Node;
    .end local v8    # "l":Lorg/hermit/geometry/voronoi/DataNode;
    .end local v10    # "r":Lorg/hermit/geometry/voronoi/DataNode;
    :cond_2
    new-instance v8, Lorg/hermit/geometry/voronoi/DataNode;

    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-direct {v8, v13}, Lorg/hermit/geometry/voronoi/DataNode;-><init>(Lorg/hermit/geometry/Point;)V

    .line 96
    .restart local v8    # "l":Lorg/hermit/geometry/voronoi/DataNode;
    new-instance v11, Lorg/hermit/geometry/voronoi/DataNode;

    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-direct {v11, v13}, Lorg/hermit/geometry/voronoi/DataNode;-><init>(Lorg/hermit/geometry/Point;)V

    .line 97
    .local v11, "rl":Lorg/hermit/geometry/voronoi/DataNode;
    new-instance v12, Lorg/hermit/geometry/voronoi/DataNode;

    iget-object v13, v7, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-direct {v12, v13}, Lorg/hermit/geometry/voronoi/DataNode;-><init>(Lorg/hermit/geometry/Point;)V

    .line 98
    .local v12, "rr":Lorg/hermit/geometry/voronoi/DataNode;
    new-instance v10, Lorg/hermit/geometry/voronoi/EdgeNode;

    const/4 v13, 0x1

    invoke-direct {v10, v7, v13, v11, v12}, Lorg/hermit/geometry/voronoi/EdgeNode;-><init>(Lorg/hermit/geometry/voronoi/VoronoiEdge;ZLorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    .line 99
    .local v10, "r":Lorg/hermit/geometry/voronoi/EdgeNode;
    new-instance v6, Lorg/hermit/geometry/voronoi/EdgeNode;

    const/4 v13, 0x0

    invoke-direct {v6, v7, v13, v8, v10}, Lorg/hermit/geometry/voronoi/EdgeNode;-><init>(Lorg/hermit/geometry/voronoi/VoronoiEdge;ZLorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    .line 100
    .restart local v6    # "SubRoot":Lorg/hermit/geometry/voronoi/Node;
    move-object/from16 v0, p6

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    move-object/from16 v0, p6

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    move-object/from16 v0, p6

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    .end local v10    # "r":Lorg/hermit/geometry/voronoi/EdgeNode;
    .end local v11    # "rl":Lorg/hermit/geometry/voronoi/DataNode;
    .end local v12    # "rr":Lorg/hermit/geometry/voronoi/DataNode;
    .restart local v9    # "parent":Lorg/hermit/geometry/voronoi/Node;
    :cond_3
    invoke-virtual {v9, v5, v6}, Lorg/hermit/geometry/voronoi/Node;->Replace(Lorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    move-object/from16 v13, p1

    .line 110
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/DataEvent;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/DataEvent;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
