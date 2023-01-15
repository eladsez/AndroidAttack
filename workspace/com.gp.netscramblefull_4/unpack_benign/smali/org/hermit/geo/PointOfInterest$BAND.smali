.class public final Lorg/hermit/geo/PointOfInterest$BAND;
.super Lorg/hermit/geo/PointOfInterest;
.source "PointOfInterest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/geo/PointOfInterest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BAND"
.end annotation


# instance fields
.field private final northLimit:D

.field private final southLimit:D


# direct methods
.method constructor <init>(DDLjava/lang/String;)V
    .locals 2
    .param p1, "south"    # D
    .param p3, "north"    # D
    .param p5, "n"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-direct {p0, p5}, Lorg/hermit/geo/PointOfInterest;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/geo/PointOfInterest$BAND;->northLimit:D

    .line 315
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/geo/PointOfInterest$BAND;->southLimit:D

    .line 316
    return-void
.end method


# virtual methods
.method public final distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
    .locals 5
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 327
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v0

    .line 329
    .local v0, "lat":D
    iget-wide v2, p0, Lorg/hermit/geo/PointOfInterest$BAND;->southLimit:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 330
    iget-wide v2, p0, Lorg/hermit/geo/PointOfInterest$BAND;->southLimit:D

    invoke-virtual {p1, v2, v3}, Lorg/hermit/geo/Position;->latDistance(D)Lorg/hermit/geo/Distance;

    move-result-object v2

    .line 334
    :goto_0
    return-object v2

    .line 331
    :cond_0
    iget-wide v2, p0, Lorg/hermit/geo/PointOfInterest$BAND;->northLimit:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 332
    iget-wide v2, p0, Lorg/hermit/geo/PointOfInterest$BAND;->northLimit:D

    invoke-virtual {p1, v2, v3}, Lorg/hermit/geo/Position;->latDistance(D)Lorg/hermit/geo/Distance;

    move-result-object v2

    goto :goto_0

    .line 334
    :cond_1
    new-instance v2, Lorg/hermit/geo/Distance;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lorg/hermit/geo/Distance;-><init>(D)V

    goto :goto_0
.end method
