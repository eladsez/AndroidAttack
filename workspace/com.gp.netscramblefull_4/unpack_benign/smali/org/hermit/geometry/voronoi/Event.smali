.class abstract Lorg/hermit/geometry/voronoi/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/hermit/geometry/voronoi/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/hermit/geometry/voronoi/Event;

    invoke-virtual {p0, p1}, Lorg/hermit/geometry/voronoi/Event;->compareTo(Lorg/hermit/geometry/voronoi/Event;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/hermit/geometry/voronoi/Event;)I
    .locals 6
    .param p1, "ev"    # Lorg/hermit/geometry/voronoi/Event;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 53
    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    move v0, v4

    .line 64
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/hermit/geometry/voronoi/Event;->getY()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    move v0, v5

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/Event;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/hermit/geometry/voronoi/Event;->getX()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/Event;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/hermit/geometry/voronoi/Event;->getX()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    move v0, v5

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract getX()D
.end method

.method abstract getY()D
.end method

.method abstract process(Lorg/hermit/geometry/voronoi/Node;DLjava/util/HashSet;Ljava/util/HashSet;Ljava/util/ArrayList;)Lorg/hermit/geometry/voronoi/Node;
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
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/Event;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/hermit/geometry/voronoi/Event;->getY()D

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
