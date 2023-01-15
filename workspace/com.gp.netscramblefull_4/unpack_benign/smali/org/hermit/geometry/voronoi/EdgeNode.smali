.class Lorg/hermit/geometry/voronoi/EdgeNode;
.super Lorg/hermit/geometry/voronoi/Node;
.source "EdgeNode.java"


# instance fields
.field Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

.field private Flipped:Z


# direct methods
.method constructor <init>(Lorg/hermit/geometry/voronoi/VoronoiEdge;ZLorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V
    .locals 0
    .param p1, "E"    # Lorg/hermit/geometry/voronoi/VoronoiEdge;
    .param p2, "Flipped"    # Z
    .param p3, "left"    # Lorg/hermit/geometry/voronoi/Node;
    .param p4, "right"    # Lorg/hermit/geometry/voronoi/Node;

    .prologue
    .line 29
    invoke-direct {p0, p3, p4}, Lorg/hermit/geometry/voronoi/Node;-><init>(Lorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V

    .line 30
    iput-object p1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    .line 31
    iput-boolean p2, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Flipped:Z

    .line 32
    return-void
.end method

.method private static ParabolicCut(DDDDD)D
    .locals 20
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "ys"    # D

    .prologue
    .line 56
    move-wide/from16 v0, p0

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide/from16 v0, p2

    move-wide/from16 v2, p6

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .end local p0    # "x1":D
    const-string p1, "Identical datapoints are not allowed!"

    .line 62
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    .restart local p0    # "x1":D
    :cond_0
    move-wide/from16 v0, p2

    move-wide/from16 v2, p8

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static/range {p6 .. p9}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    add-double p0, p0, p4

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double p0, p0, p2

    .line 96
    .end local p0    # "x1":D
    .end local p2    # "y1":D
    .end local p4    # "x2":D
    .end local p8    # "ys":D
    :cond_1
    :goto_0
    return-wide p0

    .line 67
    .restart local p0    # "x1":D
    .restart local p2    # "y1":D
    .restart local p4    # "x2":D
    .restart local p8    # "ys":D
    :cond_2
    move-wide/from16 v0, p2

    move-wide/from16 v2, p8

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    invoke-static/range {p6 .. p9}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v4

    if-eqz v4, :cond_3

    move-wide/from16 p0, p4

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v8, p2, p8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    .line 72
    .local v4, "a1":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double p8, p6, p8

    mul-double p8, p8, v8

    div-double p8, v6, p8

    .line 73
    .local p8, "a2":D
    move-wide v0, v4

    move-wide/from16 v2, p8

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 74
    add-double p0, p0, p4

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double p0, p0, p2

    goto :goto_0

    .line 75
    :cond_4
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 76
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v10, v10, p8

    sub-double/2addr v8, v10

    .line 75
    div-double/2addr v6, v8

    .line 77
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v4

    mul-double v8, v8, p0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double v10, v10, p8

    mul-double v10, v10, p4

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, -0x3fe0000000000000L    # -8.0

    mul-double/2addr v12, v4

    mul-double v12, v12, p0

    mul-double v12, v12, p8

    .line 78
    mul-double v12, v12, p4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v4

    mul-double v14, v14, p2

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v4

    mul-double v14, v14, p6

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v14, v4

    mul-double v14, v14, p8

    mul-double v14, v14, p4

    .line 79
    mul-double v14, v14, p4

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v14, v14, p8

    mul-double v14, v14, p2

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double v14, v14, p8

    mul-double/2addr v14, v4

    mul-double v14, v14, p0

    mul-double v14, v14, p0

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v14, v14, p8

    .line 80
    mul-double v14, v14, p6

    sub-double/2addr v12, v14

    .line 77
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 75
    mul-double/2addr v6, v8

    .line 81
    .local v6, "xs1":D
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 82
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, p8

    sub-double/2addr v10, v12

    .line 81
    div-double/2addr v8, v10

    .line 83
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v10, v4

    mul-double v10, v10, p0

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    mul-double v12, v12, p8

    mul-double v12, v12, p4

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v14, -0x3fe0000000000000L    # -8.0

    mul-double/2addr v14, v4

    mul-double v14, v14, p0

    mul-double v14, v14, p8

    .line 84
    mul-double v14, v14, p4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v4

    mul-double v16, v16, p2

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v4

    mul-double v16, v16, p6

    add-double v14, v14, v16

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v16, v16, v4

    mul-double v16, v16, p8

    mul-double v16, v16, p4

    .line 85
    mul-double p4, p4, v16

    add-double p4, p4, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v14, v14, p8

    mul-double v14, v14, p2

    add-double p4, p4, v14

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double v14, v14, p8

    mul-double/2addr v4, v14

    mul-double v4, v4, p0

    mul-double p0, p0, v4

    add-double p0, p0, p4

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    mul-double p4, p4, p8

    .line 86
    mul-double p4, p4, p6

    sub-double p0, p0, p4

    .line 83
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D

    .end local v4    # "a1":D
    .end local p0    # "x1":D
    .end local p4    # "x2":D
    move-result-wide p0

    mul-double p0, p0, v12

    sub-double p0, v10, p0

    .line 81
    mul-double p4, v8, p0

    .line 87
    .local p4, "xs2":D
    invoke-static {v6, v7}, Lorg/hermit/geometry/MathTools;->round(D)D

    move-result-wide p0

    .line 88
    .end local v6    # "xs1":D
    .local p0, "xs1":D
    invoke-static/range {p4 .. p5}, Lorg/hermit/geometry/MathTools;->round(D)D

    move-result-wide p4

    .line 89
    cmpl-double p8, p0, p4

    if-lez p8, :cond_5

    .line 90
    .end local p8    # "a2":D
    move-wide/from16 p0, p0

    .line 91
    .local p0, "h":D
    move-wide/from16 p4, p4

    .line 92
    .local p4, "xs1":D
    move-wide/from16 p0, p0

    .local p0, "xs2":D
    move-wide/from16 v18, p0

    .end local p0    # "xs2":D
    .local v18, "xs2":D
    move-wide/from16 p0, p4

    .end local p4    # "xs1":D
    .local p0, "xs1":D
    move-wide/from16 p4, v18

    .line 94
    .end local v18    # "xs2":D
    .local p4, "xs2":D
    :cond_5
    cmpl-double p2, p2, p6

    if-ltz p2, :cond_1

    .end local p2    # "y1":D
    move-wide/from16 p0, p4

    .line 95
    goto/16 :goto_0
.end method


# virtual methods
.method Cut(DD)D
    .locals 17
    .param p1, "ys"    # D
    .param p3, "x"    # D

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    move-object v9, v0

    iget-object v9, v9, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-virtual {v9}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v1

    .line 37
    .local v1, "l0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    move-object v9, v0

    iget-object v9, v9, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    invoke-virtual {v9}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v3

    .line 38
    .local v3, "l1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    move-object v9, v0

    iget-object v9, v9, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-virtual {v9}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v5

    .line 39
    .local v5, "r0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    move-object v9, v0

    iget-object v9, v9, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-virtual {v9}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v7

    .line 42
    .local v7, "r1":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/hermit/geometry/voronoi/EdgeNode;->Flipped:Z

    move v9, v0

    if-nez v9, :cond_0

    move-wide/from16 v9, p1

    .line 43
    invoke-static/range {v1 .. v10}, Lorg/hermit/geometry/voronoi/EdgeNode;->ParabolicCut(DDDDD)D

    move-result-wide v15

    .line 46
    .local v15, "delta":D
    :goto_0
    sub-double v9, p3, v15

    invoke-static {v9, v10}, Lorg/hermit/geometry/MathTools;->round(D)D

    move-result-wide v9

    return-wide v9

    .end local v15    # "delta":D
    :cond_0
    move-wide v9, v1

    move-wide v11, v3

    move-wide/from16 v13, p1

    .line 45
    invoke-static/range {v5 .. v14}, Lorg/hermit/geometry/voronoi/EdgeNode;->ParabolicCut(DDDDD)D

    move-result-wide v15

    .restart local v15    # "delta":D
    goto :goto_0
.end method

.method cleanupEdge()V
    .locals 3

    .prologue
    .line 101
    :goto_0
    iget-object v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    iget-object v1, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    sget-object v2, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    if-eq v1, v2, :cond_1

    .line 105
    iget-boolean v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Flipped:Z

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    iget-object v0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    .line 107
    .local v0, "T":Lorg/hermit/geometry/Point;
    iget-object v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    iget-object v2, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    iget-object v2, v2, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    iput-object v2, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    .line 108
    iget-object v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    iput-object v0, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    .line 111
    .end local v0    # "T":Lorg/hermit/geometry/Point;
    :cond_0
    iget-object v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/hermit/geometry/voronoi/VoronoiEdge;->Done:Z

    .line 112
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    sget-object v2, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    invoke-virtual {v1, v2}, Lorg/hermit/geometry/voronoi/VoronoiEdge;->AddVertex(Lorg/hermit/geometry/Point;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/hermit/geometry/voronoi/Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Flipped:Z

    if-eqz v1, :cond_0

    const-string v1, "!"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/geometry/voronoi/EdgeNode;->Edge:Lorg/hermit/geometry/voronoi/VoronoiEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
