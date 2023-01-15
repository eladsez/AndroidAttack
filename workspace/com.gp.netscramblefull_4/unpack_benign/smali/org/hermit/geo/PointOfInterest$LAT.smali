.class public final Lorg/hermit/geo/PointOfInterest$LAT;
.super Lorg/hermit/geo/PointOfInterest;
.source "PointOfInterest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/geo/PointOfInterest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LAT"
.end annotation


# instance fields
.field private final latitude:D


# direct methods
.method constructor <init>(DLjava/lang/String;)V
    .locals 0
    .param p1, "lat"    # D
    .param p3, "n"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0, p3}, Lorg/hermit/geo/PointOfInterest;-><init>(Ljava/lang/String;)V

    .line 174
    iput-wide p1, p0, Lorg/hermit/geo/PointOfInterest$LAT;->latitude:D

    .line 175
    return-void
.end method


# virtual methods
.method public final distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
    .locals 2
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/hermit/geo/PointOfInterest$LAT;->latitude:D

    invoke-virtual {p1, v0, v1}, Lorg/hermit/geo/Position;->latDistance(D)Lorg/hermit/geo/Distance;

    move-result-object v0

    return-object v0
.end method

.method public final status(Lorg/hermit/geo/Position;)Ljava/lang/String;
    .locals 7
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lorg/hermit/geo/PointOfInterest$LAT;->distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v0

    .line 200
    .local v0, "d":Lorg/hermit/geo/Distance;
    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->getNm()D

    move-result-wide v1

    .line 201
    .local v1, "nm":D
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/hermit/geo/PointOfInterest$LAT;->getName()Ljava/lang/String;

    move-result-object v3

    .line 206
    :goto_0
    return-object v3

    .line 203
    :cond_0
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/hermit/geo/PointOfInterest$LAT;->latitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->describeNautical()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " north of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/hermit/geo/PointOfInterest$LAT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 206
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->describeNautical()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " south of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/hermit/geo/PointOfInterest$LAT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
