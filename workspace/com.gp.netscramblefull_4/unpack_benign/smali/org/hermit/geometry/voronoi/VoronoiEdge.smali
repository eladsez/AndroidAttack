.class Lorg/hermit/geometry/voronoi/VoronoiEdge;
.super Ljava/lang/Object;
.source "VoronoiEdge.java"


# instance fields
.field Done:Z

.field LeftData:Lorg/hermit/geometry/Point;

.field RightData:Lorg/hermit/geometry/Point;

.field VVertexA:Lorg/hermit/geometry/Point;

.field VVertexB:Lorg/hermit/geometry/Point;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->Done:Z

    .line 88
    sget-object v0, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    iput-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    sget-object v0, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    iput-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    .line 90
    sget-object v0, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    iput-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    sget-object v0, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    iput-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    .line 27
    return-void
.end method


# virtual methods
.method AddVertex(Lorg/hermit/geometry/Point;)V
    .locals 2
    .param p1, "V"    # Lorg/hermit/geometry/Point;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    if-ne v0, v1, :cond_0

    .line 36
    iput-object p1, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    if-ne v0, v1, :cond_1

    .line 38
    iput-object p1, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to add third vertex!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isInfinite()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPartlyInfinite()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method toEdge()Lorg/hermit/geometry/Edge;
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lorg/hermit/geometry/Edge;

    iget-object v1, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexA:Lorg/hermit/geometry/Point;

    iget-object v2, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->VVertexB:Lorg/hermit/geometry/Point;

    iget-object v3, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->LeftData:Lorg/hermit/geometry/Point;

    iget-object v4, p0, Lorg/hermit/geometry/voronoi/VoronoiEdge;->RightData:Lorg/hermit/geometry/Point;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Edge;-><init>(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)V

    return-object v0
.end method
