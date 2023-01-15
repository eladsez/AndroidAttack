.class public Lorg/hermit/geometry/cluster/FuzzyClusterer;
.super Lorg/hermit/geometry/cluster/Clusterer;
.source "FuzzyClusterer.java"


# static fields
.field private static final M:D = 2.0

.field private static final random:Ljava/util/Random;


# instance fields
.field private clusterMeans:[[D

.field private clusterStrengths:[[D

.field private dataPoints:[Lorg/hermit/geometry/Point;

.field private numClusters:I

.field private numPoints:I

.field private pointClusters:[I

.field private sumDistSquared:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->random:Ljava/util/Random;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/hermit/geometry/cluster/Clusterer;-><init>()V

    .line 254
    iput-object v0, p0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->pointClusters:[I

    .line 259
    iput-object v0, p0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->clusterMeans:[[D

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->sumDistSquared:D

    .line 34
    return-void
.end method

.method private assignPoints([I[[D)Z
    .locals 27
    .param p1, "ids"    # [I
    .param p2, "means"    # [[D

    .prologue
    .line 164
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/hermit/geometry/cluster/FuzzyClusterer;->sumDistSquared:D

    .line 169
    const/4 v5, 0x0

    .line 170
    .local v5, "dirty":Z
    const/16 v19, 0x0

    .local v19, "p":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->numPoints:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 200
    if-eqz v5, :cond_5

    const/16 v23, 0x0

    :goto_1
    return v23

    .line 171
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->dataPoints:[Lorg/hermit/geometry/Point;

    move-object/from16 v23, v0

    aget-object v20, v23, v19

    .line 172
    .local v20, "point":Lorg/hermit/geometry/Point;
    const/4 v4, -0x1

    .line 173
    .local v4, "closest":I
    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 174
    .local v17, "minDistance":D
    const-wide/16 v15, 0x0

    .line 176
    .local v15, "maxStrength":D
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    move v0, v3

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->sumDistSquared:D

    move-wide/from16 v23, v0

    add-double v23, v23, v17

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/hermit/geometry/cluster/FuzzyClusterer;->sumDistSquared:D

    .line 194
    aget v23, p1, v19

    move v0, v4

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 195
    aput v4, p1, v19

    .line 196
    const/4 v5, 0x1

    .line 170
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 177
    :cond_2
    aget-object v23, p2, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/hermit/geometry/cluster/FuzzyClusterer;->computeDistanceSquared(Lorg/hermit/geometry/Point;[D)D

    move-result-wide v8

    .line 178
    .local v8, "distsq":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 179
    .local v6, "dist":D
    const-wide/16 v21, 0x0

    .line 180
    .local v21, "sum":D
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    move v0, v14

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->clusterStrengths:[[D

    move-object/from16 v23, v0

    aget-object v23, v23, v19

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v24, v24, v21

    aput-wide v24, v23, v3

    .line 186
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    div-double v23, v23, v21

    cmpl-double v23, v23, v15

    if-lez v23, :cond_3

    .line 187
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    div-double v15, v23, v21

    .line 188
    move v4, v3

    .line 189
    move-wide/from16 v17, v8

    .line 176
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 181
    :cond_4
    aget-object v23, p2, v14

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/hermit/geometry/cluster/FuzzyClusterer;->computeDistanceSquared(Lorg/hermit/geometry/Point;[D)D

    move-result-wide v12

    .line 182
    .local v12, "djsq":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 183
    .local v10, "dj":D
    div-double v23, v6, v10

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    add-double v21, v21, v23

    .line 180
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 200
    .end local v3    # "c":I
    .end local v4    # "closest":I
    .end local v6    # "dist":D
    .end local v8    # "distsq":D
    .end local v10    # "dj":D
    .end local v12    # "djsq":D
    .end local v14    # "j":I
    .end local v15    # "maxStrength":D
    .end local v17    # "minDistance":D
    .end local v20    # "point":Lorg/hermit/geometry/Point;
    .end local v21    # "sum":D
    :cond_5
    const/16 v23, 0x1

    goto/16 :goto_1
.end method

.method private computeCentroids([I[[D)Z
    .locals 24
    .param p1, "ids"    # [I
    .param p2, "means"    # [[D

    .prologue
    .line 121
    const/4 v5, 0x0

    .line 122
    .local v5, "dirty":Z
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->numClusters:I

    move/from16 v20, v0

    move v0, v4

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 144
    if-eqz v5, :cond_4

    const/16 v20, 0x0

    :goto_1
    return v20

    .line 124
    :cond_0
    const-wide/16 v16, 0x0

    .local v16, "tx":D
    const-wide/16 v18, 0x0

    .local v18, "ty":D
    const-wide/16 v14, 0x0

    .line 125
    .local v14, "tot":D
    const/4 v10, 0x0

    .local v10, "p":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->numPoints:I

    move/from16 v20, v0

    move v0, v10

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 135
    div-double v6, v16, v14

    .line 136
    .local v6, "nx":D
    div-double v8, v18, v14

    .line 137
    .local v8, "ny":D
    aget-object v20, p2, v4

    const/16 v21, 0x0

    aget-wide v20, v20, v21

    move-wide/from16 v0, v20

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v20

    if-eqz v20, :cond_1

    aget-object v20, p2, v4

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    move-wide/from16 v0, v20

    move-wide v2, v8

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v20

    if-nez v20, :cond_2

    .line 138
    :cond_1
    aget-object v20, p2, v4

    const/16 v21, 0x0

    aput-wide v6, v20, v21

    .line 139
    aget-object v20, p2, v4

    const/16 v21, 0x1

    aput-wide v8, v20, v21

    .line 140
    const/4 v5, 0x1

    .line 122
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v6    # "nx":D
    .end local v8    # "ny":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->dataPoints:[Lorg/hermit/geometry/Point;

    move-object/from16 v20, v0

    aget-object v11, v20, v10

    .line 127
    .local v11, "point":Lorg/hermit/geometry/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->clusterStrengths:[[D

    move-object/from16 v20, v0

    aget-object v20, v20, v10

    aget-wide v20, v20, v4

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 128
    .local v12, "str":D
    invoke-virtual {v11}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v20

    mul-double v20, v20, v12

    add-double v16, v16, v20

    .line 129
    invoke-virtual {v11}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v20

    mul-double v20, v20, v12

    add-double v18, v18, v20

    .line 130
    add-double/2addr v14, v12

    .line 125
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 144
    .end local v10    # "p":I
    .end local v11    # "point":Lorg/hermit/geometry/Point;
    .end local v12    # "str":D
    .end local v14    # "tot":D
    .end local v16    # "tx":D
    .end local v18    # "ty":D
    :cond_4
    const/16 v20, 0x1

    goto :goto_1
.end method

.method private static final computeDistanceSquared(Lorg/hermit/geometry/Point;[D)D
    .locals 8
    .param p0, "a"    # Lorg/hermit/geometry/Point;
    .param p1, "b"    # [D

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v4

    const/4 v6, 0x0

    aget-wide v6, p1, v6

    sub-double v0, v4, v6

    .line 209
    .local v0, "dx":D
    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v4

    const/4 v6, 0x1

    aget-wide v6, p1, v6

    sub-double v2, v4, v6

    .line 210
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public iterate()Z
    .locals 3

    .prologue
    .line 93
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Fuzzy: iterate"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->pointClusters:[I

    iget-object v2, p0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->clusterMeans:[[D

    invoke-direct {p0, v1, v2}, Lorg/hermit/geometry/cluster/FuzzyClusterer;->computeCentroids([I[[D)Z

    move-result v0

    .line 100
    .local v0, "converged":Z
    if-nez v0, :cond_0

    .line 101
    iget-object v1, p0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->pointClusters:[I

    iget-object v2, p0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->clusterMeans:[[D

    invoke-direct {p0, v1, v2}, Lorg/hermit/geometry/cluster/FuzzyClusterer;->assignPoints([I[[D)Z

    .line 104
    :cond_0
    return v0
.end method

.method public metric()D
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->sumDistSquared:D

    return-wide v0
.end method

.method public prepare([Lorg/hermit/geometry/Point;[I[[DLorg/hermit/geometry/Region;)V
    .locals 16
    .param p1, "points"    # [Lorg/hermit/geometry/Point;
    .param p2, "ids"    # [I
    .param p3, "means"    # [[D
    .param p4, "region"    # Lorg/hermit/geometry/Region;

    .prologue
    .line 52
    invoke-super/range {p0 .. p4}, Lorg/hermit/geometry/cluster/Clusterer;->prepare([Lorg/hermit/geometry/Point;[I[[DLorg/hermit/geometry/Region;)V

    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/hermit/geometry/cluster/FuzzyClusterer;->dataPoints:[Lorg/hermit/geometry/Point;

    .line 56
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/hermit/geometry/cluster/FuzzyClusterer;->pointClusters:[I

    .line 57
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/hermit/geometry/cluster/FuzzyClusterer;->clusterMeans:[[D

    .line 58
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lorg/hermit/geometry/cluster/FuzzyClusterer;->numPoints:I

    .line 59
    move-object/from16 v0, p3

    array-length v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lorg/hermit/geometry/cluster/FuzzyClusterer;->numClusters:I

    .line 62
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->numPoints:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->numClusters:I

    move v13, v0

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "points":[Lorg/hermit/geometry/Point;
    check-cast p1, [[D

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/hermit/geometry/cluster/FuzzyClusterer;->clusterStrengths:[[D

    .line 66
    invoke-virtual/range {p4 .. p4}, Lorg/hermit/geometry/Region;->getX1()D

    move-result-wide v8

    .line 67
    .local v8, "x":D
    invoke-virtual/range {p4 .. p4}, Lorg/hermit/geometry/Region;->getY1()D

    move-result-wide v10

    .line 68
    .local v10, "y":D
    invoke-virtual/range {p4 .. p4}, Lorg/hermit/geometry/Region;->getWidth()D

    move-result-wide v6

    .line 69
    .local v6, "w":D
    invoke-virtual/range {p4 .. p4}, Lorg/hermit/geometry/Region;->getHeight()D

    move-result-wide v3

    .line 70
    .local v3, "h":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/cluster/FuzzyClusterer;->numClusters:I

    move v12, v0

    if-lt v5, v12, :cond_0

    .line 77
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/hermit/geometry/cluster/FuzzyClusterer;->assignPoints([I[[D)Z

    .line 78
    return-void

    .line 71
    :cond_0
    aget-object v12, p3, v5

    const/4 v13, 0x0

    sget-object v14, Lorg/hermit/geometry/cluster/FuzzyClusterer;->random:Ljava/util/Random;

    invoke-virtual {v14}, Ljava/util/Random;->nextDouble()D

    move-result-wide v14

    mul-double/2addr v14, v6

    add-double/2addr v14, v8

    aput-wide v14, v12, v13

    .line 72
    aget-object v12, p3, v5

    const/4 v13, 0x1

    sget-object v14, Lorg/hermit/geometry/cluster/FuzzyClusterer;->random:Ljava/util/Random;

    invoke-virtual {v14}, Ljava/util/Random;->nextDouble()D

    move-result-wide v14

    mul-double/2addr v14, v3

    add-double/2addr v14, v10

    aput-wide v14, v12, v13

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
