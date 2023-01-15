.class Lorg/hermit/geometry/voronoi/DataNode;
.super Lorg/hermit/geometry/voronoi/Node;
.source "DataNode.java"


# instance fields
.field public DataPoint:Lorg/hermit/geometry/Point;


# direct methods
.method public constructor <init>(Lorg/hermit/geometry/Point;)V
    .locals 0
    .param p1, "DP"    # Lorg/hermit/geometry/Point;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/hermit/geometry/voronoi/Node;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/hermit/geometry/voronoi/Event;)V
    .locals 5
    .param p1, "P"    # Lorg/hermit/geometry/voronoi/Event;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/hermit/geometry/voronoi/Node;-><init>()V

    .line 35
    new-instance v0, Lorg/hermit/geometry/Point;

    invoke-virtual {p1}, Lorg/hermit/geometry/voronoi/Event;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Point;-><init>(DD)V

    iput-object v0, p0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    .line 36
    return-void
.end method

.method private static ccw(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)I
    .locals 10
    .param p0, "P0"    # Lorg/hermit/geometry/Point;
    .param p1, "P1"    # Lorg/hermit/geometry/Point;
    .param p2, "P2"    # Lorg/hermit/geometry/Point;

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 64
    .local v0, "dx1":D
    invoke-virtual {p1}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v4

    sub-double v4, v2, v4

    .line 65
    .local v4, "dy1":D
    invoke-virtual {p2}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v2, v6

    .line 66
    .local v2, "dx2":D
    invoke-virtual {p2}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide p1

    .end local p1    # "P1":Lorg/hermit/geometry/Point;
    invoke-virtual {p0}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v6

    sub-double p0, p1, v6

    .line 67
    .local p0, "dy2":D
    mul-double v6, v0, p0

    mul-double v8, v4, v2

    cmpl-double p2, v6, v8

    if-lez p2, :cond_0

    .line 68
    .end local p2    # "P2":Lorg/hermit/geometry/Point;
    const/4 p0, 0x1

    .line 73
    .end local v0    # "dx1":D
    .end local v2    # "dx2":D
    .end local p0    # "dy2":D
    :goto_0
    return p0

    .line 69
    .restart local v0    # "dx1":D
    .restart local v2    # "dx2":D
    .restart local p0    # "dy2":D
    :cond_0
    mul-double v6, v0, p0

    mul-double v8, v4, v2

    cmpg-double p2, v6, v8

    if-gez p2, :cond_1

    .line 70
    const/4 p0, -0x1

    goto :goto_0

    .line 71
    :cond_1
    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-ltz p2, :cond_2

    .end local v0    # "dx1":D
    .end local v2    # "dx2":D
    mul-double/2addr p0, v4

    const-wide/16 v0, 0x0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_3

    .line 72
    .end local p0    # "dy2":D
    :cond_2
    const/4 p0, -0x1

    goto :goto_0

    .line 73
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method CircleCheckDataNode(D)Lorg/hermit/geometry/voronoi/CircleEvent;
    .locals 8
    .param p1, "ys"    # D

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-static {p0}, Lorg/hermit/geometry/voronoi/Node;->LeftDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/DataNode;

    move-result-object v2

    .line 44
    .local v2, "l":Lorg/hermit/geometry/voronoi/DataNode;
    invoke-static {p0}, Lorg/hermit/geometry/voronoi/Node;->RightDataNode(Lorg/hermit/geometry/voronoi/DataNode;)Lorg/hermit/geometry/voronoi/DataNode;

    move-result-object v3

    .line 45
    .local v3, "r":Lorg/hermit/geometry/voronoi/DataNode;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, v2, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    iget-object v5, v3, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    if-eq v4, v5, :cond_0

    .line 46
    iget-object v4, v2, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    iget-object v5, p0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    iget-object v5, v3, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    if-ne v4, v5, :cond_1

    :cond_0
    move-object v4, v7

    .line 57
    :goto_0
    return-object v4

    .line 48
    :cond_1
    iget-object v4, v2, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    iget-object v5, p0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    iget-object v6, v3, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    invoke-static {v4, v5, v6}, Lorg/hermit/geometry/voronoi/DataNode;->ccw(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)I

    move-result v4

    if-gtz v4, :cond_2

    move-object v4, v7

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    iget-object v4, v2, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    .line 52
    iget-object v5, p0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    iget-object v6, v3, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    .line 51
    invoke-static {v4, v5, v6}, Lorg/hermit/geometry/voronoi/DataNode;->CircumCircleCenter(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)Lorg/hermit/geometry/Point;

    move-result-object v0

    .line 53
    .local v0, "Center":Lorg/hermit/geometry/Point;
    new-instance v1, Lorg/hermit/geometry/voronoi/CircleEvent;

    invoke-direct {v1, p0, v2, v3, v0}, Lorg/hermit/geometry/voronoi/CircleEvent;-><init>(Lorg/hermit/geometry/voronoi/DataNode;Lorg/hermit/geometry/voronoi/DataNode;Lorg/hermit/geometry/voronoi/DataNode;Lorg/hermit/geometry/Point;)V

    .line 54
    .local v1, "VC":Lorg/hermit/geometry/voronoi/CircleEvent;
    invoke-virtual {v1}, Lorg/hermit/geometry/voronoi/CircleEvent;->getY()D

    move-result-wide v4

    cmpl-double v4, v4, p1

    if-ltz v4, :cond_3

    move-object v4, v1

    .line 55
    goto :goto_0

    :cond_3
    move-object v4, v7

    .line 57
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/hermit/geometry/voronoi/Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hermit/geometry/voronoi/DataNode;->DataPoint:Lorg/hermit/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
