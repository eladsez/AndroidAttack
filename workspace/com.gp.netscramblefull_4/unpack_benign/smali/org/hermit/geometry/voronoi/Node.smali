.class abstract Lorg/hermit/geometry/voronoi/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private _Left:Lorg/hermit/geometry/voronoi/Node;

.field private _Parent:Lorg/hermit/geometry/voronoi/Node;

.field private _Right:Lorg/hermit/geometry/voronoi/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 223
    iput-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    iput-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    .line 29
    iput-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    .line 30
    iput-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V
    .locals 1
    .param p1, "left"    # Lorg/hermit/geometry/voronoi/Node;
    .param p2, "right"    # Lorg/hermit/geometry/voronoi/Node;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 223
    iput-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    iput-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    .line 35
    invoke-direct {p0, p1}, Lorg/hermit/geometry/voronoi/Node;->setLeft(Lorg/hermit/geometry/voronoi/Node;)V

    .line 36
    invoke-direct {p0, p2}, Lorg/hermit/geometry/voronoi/Node;->setRight(Lorg/hermit/geometry/voronoi/Node;)V

    .line 37
    return-void
.end method

.method static CircumCircleCenter(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)Lorg/hermit/geometry/Point;
    .locals 21
    .param p0, "A"    # Lorg/hermit/geometry/Point;
    .param p1, "B"    # Lorg/hermit/geometry/Point;
    .param p2, "C"    # Lorg/hermit/geometry/Point;

    .prologue
    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "A":Lorg/hermit/geometry/Point;
    const-string p1, "Need three different points!"

    .end local p1    # "B":Lorg/hermit/geometry/Point;
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    .restart local p0    # "A":Lorg/hermit/geometry/Point;
    .restart local p1    # "B":Lorg/hermit/geometry/Point;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    .line 176
    .local v5, "tx":D
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v9

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    .line 178
    .local v7, "ty":D
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v11

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v13, v9, v11

    .line 179
    .local v13, "vx":D
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v11

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v15, v9, v11

    .line 183
    .local v15, "vy":D
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v11

    cmpl-double v9, v9, v11

    if-nez v9, :cond_2

    .line 184
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 185
    .local v9, "ux":D
    const-wide/16 v11, 0x0

    .line 191
    .local v11, "uy":D
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v19

    cmpl-double p0, v17, v19

    if-nez p0, :cond_3

    .line 192
    .end local p0    # "A":Lorg/hermit/geometry/Point;
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    .line 193
    .end local p1    # "B":Lorg/hermit/geometry/Point;
    .local p0, "wx":D
    const-wide/16 v17, 0x0

    .line 199
    .local v17, "wy":D
    :goto_1
    sub-double/2addr v13, v5

    mul-double v13, v13, v17

    sub-double/2addr v15, v7

    mul-double v15, v15, p0

    sub-double/2addr v13, v15

    .line 200
    mul-double v15, v9, v17

    mul-double p0, p0, v11

    sub-double p0, v15, p0

    .line 199
    div-double p0, v13, p0

    .line 202
    .local p0, "alpha":D
    new-instance p2, Lorg/hermit/geometry/Point;

    .end local v13    # "vx":D
    .end local v15    # "vy":D
    .end local p2    # "C":Lorg/hermit/geometry/Point;
    mul-double v9, v9, p0

    add-double/2addr v5, v9

    mul-double p0, p0, v11

    add-double p0, p0, v7

    move-object/from16 v0, p2

    move-wide v1, v5

    move-wide/from16 v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Point;-><init>(DD)V

    .end local v5    # "tx":D
    .end local v9    # "ux":D
    .end local p0    # "alpha":D
    return-object p2

    .line 187
    .end local v11    # "uy":D
    .end local v17    # "wy":D
    .restart local v5    # "tx":D
    .restart local v13    # "vx":D
    .restart local v15    # "vy":D
    .local p0, "A":Lorg/hermit/geometry/Point;
    .restart local p1    # "B":Lorg/hermit/geometry/Point;
    .restart local p2    # "C":Lorg/hermit/geometry/Point;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v17

    sub-double v11, v11, v17

    div-double/2addr v9, v11

    .line 188
    .restart local v9    # "ux":D
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .restart local v11    # "uy":D
    goto :goto_0

    .line 195
    .end local p0    # "A":Lorg/hermit/geometry/Point;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v19

    sub-double v17, v17, v19

    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide p0

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v19

    sub-double p0, p0, v19

    div-double p0, v17, p0

    .line 196
    .end local p1    # "B":Lorg/hermit/geometry/Point;
    .local p0, "wx":D
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .restart local v17    # "wy":D
    goto :goto_1
.end method

.method public static EdgeToRightDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/EdgeNode;
    .locals 3
    .param p0, "Current"    # Lorg/hermit/geometry/voronoi/DataNode;

    .prologue
    .line 141
    move-object v0, p0

    .line 145
    .local v0, "C":Lorg/hermit/geometry/voronoi/Node;
    :goto_0
    iget-object v1, v0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No Left Leaf found!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    iget-object v1, v0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    if-ne v1, v0, :cond_1

    .line 148
    iget-object v0, v0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 149
    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, v0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 155
    check-cast v0, Lorg/hermit/geometry/voronoi/EdgeNode;

    .end local v0    # "C":Lorg/hermit/geometry/voronoi/Node;
    return-object v0
.end method

.method public static FindDataNode(Lorg/hermit/geometry/voronoi/Node;DD)Lorg/hermit/geometry/voronoi/DataNode;
    .locals 6
    .param p0, "Root"    # Lorg/hermit/geometry/voronoi/Node;
    .param p1, "ys"    # D
    .param p3, "x"    # D

    .prologue
    .line 160
    move-object v1, p0

    .line 162
    .local v1, "C":Lorg/hermit/geometry/voronoi/Node;
    :goto_0
    instance-of v2, v1, Lorg/hermit/geometry/voronoi/DataNode;

    if-eqz v2, :cond_0

    .line 163
    check-cast v1, Lorg/hermit/geometry/voronoi/DataNode;

    .end local v1    # "C":Lorg/hermit/geometry/voronoi/Node;
    return-object v1

    .line 164
    .restart local v1    # "C":Lorg/hermit/geometry/voronoi/Node;
    :cond_0
    move-object v0, v1

    check-cast v0, Lorg/hermit/geometry/voronoi/EdgeNode;

    move-object v2, v0

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/hermit/geometry/voronoi/EdgeNode;->Cut(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 165
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    .line 168
    goto :goto_0
.end method

.method public static FirstDataNode(Lorg/hermit/geometry/voronoi/Node;)Lorg/hermit/geometry/voronoi/DataNode;
    .locals 2
    .param p0, "Root"    # Lorg/hermit/geometry/voronoi/Node;

    .prologue
    .line 79
    move-object v0, p0

    .line 80
    .local v0, "C":Lorg/hermit/geometry/voronoi/Node;
    :goto_0
    iget-object v1, v0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    if-nez v1, :cond_0

    .line 82
    check-cast v0, Lorg/hermit/geometry/voronoi/DataNode;

    .end local v0    # "C":Lorg/hermit/geometry/voronoi/Node;
    return-object v0

    .line 81
    .restart local v0    # "C":Lorg/hermit/geometry/voronoi/Node;
    :cond_0
    iget-object v0, v0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    goto :goto_0
.end method

.method public static LeftDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/DataNode;
    .locals 3
    .param p0, "Current"    # Lorg/hermit/geometry/voronoi/DataNode;

    .prologue
    .line 87
    move-object v1, p0

    .line 91
    .local v1, "C":Lorg/hermit/geometry/voronoi/Node;
    :goto_0
    iget-object v2, v1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    if-nez v2, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 109
    :goto_1
    return-object v2

    .line 93
    :cond_0
    iget-object v2, v1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    iget-object v2, v2, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    if-ne v2, v1, :cond_1

    .line 94
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 95
    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 103
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    .line 106
    :goto_2
    iget-object v2, v1, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    if-nez v2, :cond_2

    .line 109
    move-object v0, v1

    check-cast v0, Lorg/hermit/geometry/voronoi/DataNode;

    move-object v2, v0

    goto :goto_1

    .line 107
    :cond_2
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    goto :goto_2
.end method

.method public static RightDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/DataNode;
    .locals 3
    .param p0, "Current"    # Lorg/hermit/geometry/voronoi/DataNode;

    .prologue
    .line 114
    move-object v1, p0

    .line 118
    .local v1, "C":Lorg/hermit/geometry/voronoi/Node;
    :goto_0
    iget-object v2, v1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    if-nez v2, :cond_0

    .line 119
    const/4 v2, 0x0

    .line 136
    :goto_1
    return-object v2

    .line 120
    :cond_0
    iget-object v2, v1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    iget-object v2, v2, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    if-ne v2, v1, :cond_1

    .line 121
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 130
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    .line 133
    :goto_2
    iget-object v2, v1, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    if-nez v2, :cond_2

    .line 136
    move-object v0, v1

    check-cast v0, Lorg/hermit/geometry/voronoi/DataNode;

    move-object v2, v0

    goto :goto_1

    .line 134
    :cond_2
    iget-object v1, v1, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    goto :goto_2
.end method

.method private setLeft(Lorg/hermit/geometry/voronoi/Node;)V
    .locals 0
    .param p1, "value"    # Lorg/hermit/geometry/voronoi/Node;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    .line 47
    iput-object p0, p1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 48
    return-void
.end method

.method private setRight(Lorg/hermit/geometry/voronoi/Node;)V
    .locals 0
    .param p1, "value"    # Lorg/hermit/geometry/voronoi/Node;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    .line 58
    iput-object p0, p1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 59
    return-void
.end method


# virtual methods
.method CleanUpTree()V
    .locals 3

    .prologue
    .line 207
    instance-of v2, p0, Lorg/hermit/geometry/voronoi/EdgeNode;

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/hermit/geometry/voronoi/EdgeNode;

    move-object v1, v0

    .line 210
    .local v1, "VE":Lorg/hermit/geometry/voronoi/EdgeNode;
    invoke-virtual {v1}, Lorg/hermit/geometry/voronoi/EdgeNode;->cleanupEdge()V

    .line 212
    iget-object v2, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    invoke-virtual {v2}, Lorg/hermit/geometry/voronoi/Node;->CleanUpTree()V

    .line 213
    iget-object v2, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    invoke-virtual {v2}, Lorg/hermit/geometry/voronoi/Node;->CleanUpTree()V

    goto :goto_0
.end method

.method public Replace(Lorg/hermit/geometry/voronoi/Node;Lorg/hermit/geometry/voronoi/Node;)V
    .locals 2
    .param p1, "ChildOld"    # Lorg/hermit/geometry/voronoi/Node;
    .param p2, "ChildNew"    # Lorg/hermit/geometry/voronoi/Node;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    if-ne v0, p1, :cond_0

    .line 69
    invoke-direct {p0, p2}, Lorg/hermit/geometry/voronoi/Node;->setLeft(Lorg/hermit/geometry/voronoi/Node;)V

    .line 74
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    .line 75
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    if-ne v0, p1, :cond_1

    .line 71
    invoke-direct {p0, p2}, Lorg/hermit/geometry/voronoi/Node;->setRight(Lorg/hermit/geometry/voronoi/Node;)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Child not found in Node.Replace!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const-string v4, "<null>"

    const-string v3, "    "

    .line 248
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    :goto_0
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/hermit/geometry/voronoi/Node;->dump(Ljava/lang/String;)V

    .line 257
    :goto_1
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/hermit/geometry/voronoi/Node;->dump(Ljava/lang/String;)V

    .line 261
    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    return-void

    .line 252
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Parent=<null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<null>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<null>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getLeft()Lorg/hermit/geometry/voronoi/Node;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Left:Lorg/hermit/geometry/voronoi/Node;

    return-object v0
.end method

.method public getParent()Lorg/hermit/geometry/voronoi/Node;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Parent:Lorg/hermit/geometry/voronoi/Node;

    return-object v0
.end method

.method public getRight()Lorg/hermit/geometry/voronoi/Node;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/Node;->_Right:Lorg/hermit/geometry/voronoi/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
