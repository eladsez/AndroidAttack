.class public Lorg/hermit/geometry/cluster/KMeansClusterer;
.super Lorg/hermit/geometry/cluster/Clusterer;
.source "KMeansClusterer.java"


# instance fields
.field private clusterMeans:[[D

.field private clusterSizes:[I

.field private dataPoints:[Lorg/hermit/geometry/Point;

.field private dataRegion:Lorg/hermit/geometry/Region;

.field private numClusters:I

.field private numPoints:I

.field private pointClusters:[I

.field private sumDistSquared:D

.field private sumXs:[I

.field private sumYs:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lorg/hermit/geometry/cluster/Clusterer;-><init>()V

    .line 249
    iput-object v0, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->pointClusters:[I

    .line 254
    iput-object v0, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterMeans:[[D

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumDistSquared:D

    .line 32
    return-void
.end method

.method private assignPoints([I[[D)Z
    .locals 11
    .param p1, "ids"    # [I
    .param p2, "means"    # [[D

    .prologue
    .line 176
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumDistSquared:D

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "dirty":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v9, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numPoints:I

    if-lt v5, v9, :cond_0

    .line 203
    if-eqz v2, :cond_4

    const/4 v9, 0x0

    :goto_1
    return v9

    .line 185
    :cond_0
    iget-object v9, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->dataPoints:[Lorg/hermit/geometry/Point;

    aget-object v8, v9, v5

    .line 186
    .local v8, "point":Lorg/hermit/geometry/Point;
    const/4 v1, -0x1

    .line 187
    .local v1, "closest":I
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 188
    .local v6, "minDistance":D
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    array-length v9, p2

    if-lt v0, v9, :cond_2

    .line 195
    iget-wide v9, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumDistSquared:D

    add-double/2addr v9, v6

    iput-wide v9, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumDistSquared:D

    .line 197
    aget v9, p1, v5

    if-eq v1, v9, :cond_1

    .line 198
    aput v1, p1, v5

    .line 199
    const/4 v2, 0x1

    .line 182
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 189
    :cond_2
    aget-object v9, p2, v0

    invoke-static {v8, v9}, Lorg/hermit/geometry/cluster/KMeansClusterer;->computeDistanceSquared(Lorg/hermit/geometry/Point;[D)D

    move-result-wide v3

    .line 190
    .local v3, "distance":D
    cmpg-double v9, v3, v6

    if-gez v9, :cond_3

    .line 191
    move-wide v6, v3

    .line 192
    move v1, v0

    .line 188
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 203
    .end local v0    # "c":I
    .end local v1    # "closest":I
    .end local v3    # "distance":D
    .end local v6    # "minDistance":D
    .end local v8    # "point":Lorg/hermit/geometry/Point;
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private computeCentroids([I[[D)Z
    .locals 15
    .param p1, "ids"    # [I
    .param p2, "means"    # [[D

    .prologue
    .line 120
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numClusters:I

    if-lt v2, v10, :cond_0

    .line 124
    const/4 v2, 0x0

    :goto_1
    iget v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numPoints:I

    if-lt v2, v10, :cond_1

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "dirty":Z
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    iget v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numClusters:I

    if-lt v0, v10, :cond_2

    .line 156
    if-eqz v1, :cond_6

    const/4 v10, 0x0

    :goto_3
    return v10

    .line 121
    .end local v0    # "c":I
    .end local v1    # "dirty":Z
    :cond_0
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumXs:[I

    iget-object v11, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumYs:[I

    iget-object v12, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterSizes:[I

    const/4 v13, 0x0

    aput v13, v12, v2

    aput v13, v11, v2

    aput v13, v10, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->dataPoints:[Lorg/hermit/geometry/Point;

    aget-object v8, v10, v2

    .line 126
    .local v8, "point":Lorg/hermit/geometry/Point;
    aget v0, p1, v2

    .line 127
    .restart local v0    # "c":I
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumXs:[I

    aget v11, v10, v0

    int-to-double v11, v11

    invoke-virtual {v8}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v13

    add-double/2addr v11, v13

    double-to-int v11, v11

    aput v11, v10, v0

    .line 128
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumYs:[I

    aget v11, v10, v0

    int-to-double v11, v11

    invoke-virtual {v8}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v13

    add-double/2addr v11, v13

    double-to-int v11, v11

    aput v11, v10, v0

    .line 129
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterSizes:[I

    aget v11, v10, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v0

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    .end local v8    # "point":Lorg/hermit/geometry/Point;
    .restart local v1    # "dirty":Z
    :cond_2
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterSizes:[I

    aget v9, v10, v0

    .line 141
    .local v9, "s":I
    if-nez v9, :cond_5

    .line 142
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->dataRegion:Lorg/hermit/geometry/Region;

    invoke-virtual {v10}, Lorg/hermit/geometry/Region;->randomPoint()Lorg/hermit/geometry/Point;

    move-result-object v7

    .line 143
    .local v7, "p":Lorg/hermit/geometry/Point;
    invoke-virtual {v7}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v3

    .line 144
    .local v3, "nx":D
    invoke-virtual {v7}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v5

    .line 149
    .end local v7    # "p":Lorg/hermit/geometry/Point;
    .local v5, "ny":D
    :goto_4
    aget-object v10, p2, v0

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-static {v10, v11, v3, v4}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v10

    if-eqz v10, :cond_3

    aget-object v10, p2, v0

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11, v5, v6}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v10

    if-nez v10, :cond_4

    .line 150
    :cond_3
    aget-object v10, p2, v0

    const/4 v11, 0x0

    aput-wide v3, v10, v11

    .line 151
    aget-object v10, p2, v0

    const/4 v11, 0x1

    aput-wide v5, v10, v11

    .line 152
    const/4 v1, 0x1

    .line 135
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    .end local v3    # "nx":D
    .end local v5    # "ny":D
    :cond_5
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumXs:[I

    aget v10, v10, v0

    div-int/2addr v10, v9

    int-to-double v3, v10

    .line 147
    .restart local v3    # "nx":D
    iget-object v10, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumYs:[I

    aget v10, v10, v0

    div-int/2addr v10, v9

    int-to-double v5, v10

    .restart local v5    # "ny":D
    goto :goto_4

    .line 156
    .end local v3    # "nx":D
    .end local v5    # "ny":D
    .end local v9    # "s":I
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_3
.end method

.method private static final computeDistanceSquared(Lorg/hermit/geometry/Point;[D)D
    .locals 8
    .param p0, "a"    # Lorg/hermit/geometry/Point;
    .param p1, "b"    # [D

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v4

    const/4 v6, 0x0

    aget-wide v6, p1, v6

    sub-double v0, v4, v6

    .line 212
    .local v0, "dx":D
    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v4

    const/4 v6, 0x1

    aget-wide v6, p1, v6

    sub-double v2, v4, v6

    .line 213
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
    .line 91
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "K-Means: iterate"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->pointClusters:[I

    iget-object v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterMeans:[[D

    invoke-direct {p0, v1, v2}, Lorg/hermit/geometry/cluster/KMeansClusterer;->computeCentroids([I[[D)Z

    move-result v0

    .line 98
    .local v0, "converged":Z
    if-nez v0, :cond_0

    .line 99
    iget-object v1, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->pointClusters:[I

    iget-object v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterMeans:[[D

    invoke-direct {p0, v1, v2}, Lorg/hermit/geometry/cluster/KMeansClusterer;->assignPoints([I[[D)Z

    .line 102
    :cond_0
    return v0
.end method

.method public metric()D
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumDistSquared:D

    return-wide v0
.end method

.method public prepare([Lorg/hermit/geometry/Point;[I[[DLorg/hermit/geometry/Region;)V
    .locals 6
    .param p1, "points"    # [Lorg/hermit/geometry/Point;
    .param p2, "ids"    # [I
    .param p3, "means"    # [[D
    .param p4, "region"    # Lorg/hermit/geometry/Region;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lorg/hermit/geometry/cluster/Clusterer;->prepare([Lorg/hermit/geometry/Point;[I[[DLorg/hermit/geometry/Region;)V

    .line 53
    iput-object p4, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->dataRegion:Lorg/hermit/geometry/Region;

    .line 54
    iput-object p1, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->dataPoints:[Lorg/hermit/geometry/Point;

    .line 55
    iput-object p2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->pointClusters:[I

    .line 56
    iput-object p3, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterMeans:[[D

    .line 57
    array-length v2, p1

    iput v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numPoints:I

    .line 58
    array-length v2, p3

    iput v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numClusters:I

    .line 61
    iget v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numClusters:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumXs:[I

    .line 62
    iget v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numClusters:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->sumYs:[I

    .line 63
    iget v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numClusters:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterSizes:[I

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->numClusters:I

    if-lt v0, v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->pointClusters:[I

    iget-object v3, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->clusterMeans:[[D

    invoke-direct {p0, v2, v3}, Lorg/hermit/geometry/cluster/KMeansClusterer;->assignPoints([I[[D)Z

    .line 76
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lorg/hermit/geometry/cluster/KMeansClusterer;->dataRegion:Lorg/hermit/geometry/Region;

    invoke-virtual {v2}, Lorg/hermit/geometry/Region;->randomPoint()Lorg/hermit/geometry/Point;

    move-result-object v1

    .line 69
    .local v1, "p":Lorg/hermit/geometry/Point;
    aget-object v2, p3, v0

    const/4 v3, 0x0

    invoke-virtual {v1}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 70
    aget-object v2, p3, v0

    const/4 v3, 0x1

    invoke-virtual {v1}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
