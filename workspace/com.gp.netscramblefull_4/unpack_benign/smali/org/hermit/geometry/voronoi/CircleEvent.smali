.class Lorg/hermit/geometry/voronoi/CircleEvent;
.super Lorg/hermit/geometry/voronoi/Event;
.source "CircleEvent.java"


# instance fields
.field Center:Lorg/hermit/geometry/Point;

.field NodeL:Lorg/hermit/geometry/voronoi/DataNode;

.field NodeN:Lorg/hermit/geometry/voronoi/DataNode;

.field NodeR:Lorg/hermit/geometry/voronoi/DataNode;

.field public Valid:Z


# direct methods
.method constructor <init>(Lorg/hermit/geometry/voronoi/DataNode;Lorg/hermit/geometry/voronoi/DataNode;Lorg/hermit/geometry/voronoi/DataNode;Lorg/hermit/geometry/Point;)V
    .locals 1
    .param p1, "n"    # Lorg/hermit/geometry/voronoi/DataNode;
    .param p2, "l"    # Lorg/hermit/geometry/voronoi/DataNode;
    .param p3, "r"    # Lorg/hermit/geometry/voronoi/DataNode;
    .param p4, "c"    # Lorg/hermit/geometry/Point;

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Lorg/hermit/geometry/voronoi/Event;-><init>()V

    .line 142
    iput-boolean v0, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->Valid:Z

    .line 33
    iput-object p1, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeN:Lorg/hermit/geometry/voronoi/DataNode;

    .line 34
    iput-object p2, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeL:Lorg/hermit/geometry/voronoi/DataNode;

    .line 35
    iput-object p3, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeR:Lorg/hermit/geometry/voronoi/DataNode;

    .line 36
    iput-object p4, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    .line 37
    iput-boolean v0, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->Valid:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    invoke-virtual {v0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getY()D
    .locals 4

    .prologue
    .line 49
    iget-object v2, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeN:Lorg/hermit/geometry/voronoi/DataNode;

    iget-object v2, v2, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    iget-object v3, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    invoke-virtual {v2, v3}, Lorg/hermit/geometry/Point;->dist(Lorg/hermit/geometry/Point;)D

    move-result-wide v0

    .line 50
    .local v0, "dist":D
    iget-object v2, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    invoke-virtual {v2}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/hermit/geometry/MathTools;->round(D)D

    move-result-wide v2

    return-wide v2
.end method

.method process(Lorg/hermit/geometry/voronoi/Node;DLjava/util/HashSet;Ljava/util/HashSet;Ljava/util/ArrayList;)Lorg/hermit/geometry/voronoi/Node;
    .locals 20
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
    .line 60
    .local p4, "vertList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/Point;>;"
    .local p5, "edgeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/hermit/geometry/voronoi/VoronoiEdge;>;"
    .local p6, "CircleCheckList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hermit/geometry/voronoi/DataNode;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeN:Lorg/hermit/geometry/voronoi/DataNode;

    move-object v9, v0

    .line 61
    .local v9, "b":Lorg/hermit/geometry/voronoi/DataNode;
    invoke-static {v9}, Lorg/hermit/geometry/voronoi/Node;->LeftDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/DataNode;

    move-result-object v8

    .line 62
    .local v8, "a":Lorg/hermit/geometry/voronoi/DataNode;
    invoke-static {v9}, Lorg/hermit/geometry/voronoi/Node;->RightDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/DataNode;

    move-result-object v10

    .line 63
    .local v10, "c":Lorg/hermit/geometry/voronoi/DataNode;
    if-eqz v8, :cond_0

    invoke-virtual {v9}, Lorg/hermit/geometry/voronoi/DataNode;->getParent()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v16

    if-eqz v16, :cond_0

    if-eqz v10, :cond_0

    .line 64
    move-object v0, v8

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeL:Lorg/hermit/geometry/voronoi/DataNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/hermit/geometry/Point;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 65
    move-object v0, v10

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeR:Lorg/hermit/geometry/voronoi/DataNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/hermit/geometry/Point;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    :cond_0
    move-object/from16 v16, p1

    .line 134
    :goto_0
    return-object v16

    .line 70
    :cond_1
    invoke-virtual {v9}, Lorg/hermit/geometry/voronoi/DataNode;->getParent()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v14

    check-cast v14, Lorg/hermit/geometry/voronoi/EdgeNode;

    .line 71
    .local v14, "eu":Lorg/hermit/geometry/voronoi/EdgeNode;
    move-object/from16 v0, p6

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    move-object/from16 v0, p6

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v7, Lorg/hermit/geometry/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v18

    move-object v0, v7

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Point;-><init>(DD)V

    .line 80
    .local v7, "VNew":Lorg/hermit/geometry/Point;
    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v14}, Lorg/hermit/geometry/voronoi/EdgeNode;->getLeft()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v11

    .line 86
    .local v11, "eleft":Lorg/hermit/geometry/voronoi/Node;
    invoke-virtual {v14}, Lorg/hermit/geometry/voronoi/EdgeNode;->getRight()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v13

    .line 87
    .local v13, "eright":Lorg/hermit/geometry/voronoi/Node;
    if-ne v11, v9, :cond_2

    .line 89
    invoke-static {v8}, Lorg/hermit/geometry/voronoi/Node;->EdgeToRightDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/EdgeNode;

    move-result-object v12

    .line 92
    .local v12, "eo":Lorg/hermit/geometry/voronoi/EdgeNode;
    invoke-virtual {v14}, Lorg/hermit/geometry/voronoi/EdgeNode;->getParent()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/hermit/geometry/voronoi/Node;->Replace(Lorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    .line 100
    :goto_1
    move-object v0, v14

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/hermit/geometry/voronoi/VoronoiEdge;->AddVertex(Lorg/hermit/geometry/Point;)V

    .line 107
    move-object v0, v12

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/hermit/geometry/voronoi/VoronoiEdge;->AddVertex(Lorg/hermit/geometry/Point;)V

    .line 122
    new-instance v5, Lorg/hermit/geometry/voronoi/VoronoiEdge;

    invoke-direct {v5}, Lorg/hermit/geometry/voronoi/VoronoiEdge;-><init>()V

    .line 123
    .local v5, "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    move-object v0, v8

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    .line 124
    move-object v0, v10

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    .line 125
    invoke-virtual {v5, v7}, Lorg/hermit/geometry/voronoi/VoronoiEdge;->AddVertex(Lorg/hermit/geometry/Point;)V

    .line 126
    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v6, Lorg/hermit/geometry/voronoi/EdgeNode;

    const/16 v16, 0x0

    invoke-virtual {v12}, Lorg/hermit/geometry/voronoi/EdgeNode;->getLeft()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v17

    .line 129
    invoke-virtual {v12}, Lorg/hermit/geometry/voronoi/EdgeNode;->getRight()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v18

    .line 128
    move-object v0, v6

    move-object v1, v5

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/voronoi/EdgeNode;-><init>(Lorg/hermit/geometry/voronoi/VoronoiEdge;ZLorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    .line 130
    .local v6, "VEN":Lorg/hermit/geometry/voronoi/EdgeNode;
    invoke-virtual {v12}, Lorg/hermit/geometry/voronoi/EdgeNode;->getParent()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v15

    .line 131
    .local v15, "parent":Lorg/hermit/geometry/voronoi/Node;
    if-nez v15, :cond_3

    move-object/from16 v16, v6

    .line 132
    goto/16 :goto_0

    .line 95
    .end local v5    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    .end local v6    # "VEN":Lorg/hermit/geometry/voronoi/EdgeNode;
    .end local v12    # "eo":Lorg/hermit/geometry/voronoi/EdgeNode;
    .end local v15    # "parent":Lorg/hermit/geometry/voronoi/Node;
    :cond_2
    invoke-static {v9}, Lorg/hermit/geometry/voronoi/Node;->EdgeToRightDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/EdgeNode;

    move-result-object v12

    .line 98
    .restart local v12    # "eo":Lorg/hermit/geometry/voronoi/EdgeNode;
    invoke-virtual {v14}, Lorg/hermit/geometry/voronoi/EdgeNode;->getParent()Lorg/hermit/geometry/voronoi/Node;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/hermit/geometry/voronoi/Node;->Replace(Lorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    goto :goto_1

    .line 133
    .restart local v5    # "VE":Lorg/hermit/geometry/voronoi/VoronoiEdge;
    .restart local v6    # "VEN":Lorg/hermit/geometry/voronoi/EdgeNode;
    .restart local v15    # "parent":Lorg/hermit/geometry/voronoi/Node;
    :cond_3
    invoke-virtual {v15, v12, v6}, Lorg/hermit/geometry/voronoi/Node;->Replace(Lorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    move-object/from16 v16, p1

    .line 134
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ","

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/CircleEvent;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/CircleEvent;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->Valid:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->NodeN:Lorg/hermit/geometry/voronoi/DataNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/geometry/voronoi/CircleEvent;->Center:Lorg/hermit/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "!!!"

    goto :goto_0
.end method
