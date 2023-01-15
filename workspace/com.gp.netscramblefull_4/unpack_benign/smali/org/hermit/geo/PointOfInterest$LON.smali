.class public final Lorg/hermit/geo/PointOfInterest$LON;
.super Lorg/hermit/geo/PointOfInterest;
.source "PointOfInterest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/geo/PointOfInterest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LON"
.end annotation


# instance fields
.field private final longitude:D

.field private final northLim:D

.field private final southLim:D


# direct methods
.method constructor <init>(DDDLjava/lang/String;)V
    .locals 2
    .param p1, "lon"    # D
    .param p3, "slim"    # D
    .param p5, "nlim"    # D
    .param p7, "n"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-direct {p0, p7}, Lorg/hermit/geo/PointOfInterest;-><init>(Ljava/lang/String;)V

    .line 244
    iput-wide p1, p0, Lorg/hermit/geo/PointOfInterest$LON;->longitude:D

    .line 245
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/geo/PointOfInterest$LON;->southLim:D

    .line 246
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/geo/PointOfInterest$LON;->northLim:D

    .line 247
    return-void
.end method

.method constructor <init>(DLjava/lang/String;)V
    .locals 2
    .param p1, "lon"    # D
    .param p3, "n"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0, p3}, Lorg/hermit/geo/PointOfInterest;-><init>(Ljava/lang/String;)V

    .line 229
    iput-wide p1, p0, Lorg/hermit/geo/PointOfInterest$LON;->longitude:D

    .line 230
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v0, p0, Lorg/hermit/geo/PointOfInterest$LON;->southLim:D

    .line 231
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v0, p0, Lorg/hermit/geo/PointOfInterest$LON;->northLim:D

    .line 232
    return-void
.end method


# virtual methods
.method public final distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
    .locals 6
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 259
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v1

    .line 260
    .local v1, "lat":D
    iget-wide v3, p0, Lorg/hermit/geo/PointOfInterest$LON;->southLim:D

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_0

    iget-wide v3, p0, Lorg/hermit/geo/PointOfInterest$LON;->northLim:D

    cmpl-double v3, v1, v3

    if-lez v3, :cond_1

    .line 261
    :cond_0
    new-instance v3, Lorg/hermit/geo/Distance;

    const-wide v4, 0x4173167eecbc8011L    # 2.001508679602057E7

    invoke-direct {v3, v4, v5}, Lorg/hermit/geo/Distance;-><init>(D)V

    .line 268
    :goto_0
    return-object v3

    .line 267
    :cond_1
    new-instance v0, Lorg/hermit/geo/Position;

    iget-wide v3, p0, Lorg/hermit/geo/PointOfInterest$LON;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geo/Position;-><init>(DD)V

    .line 268
    .local v0, "i":Lorg/hermit/geo/Position;
    invoke-virtual {p1, v0}, Lorg/hermit/geo/Position;->distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v3

    goto :goto_0
.end method

.method public final status(Lorg/hermit/geo/Position;)Ljava/lang/String;
    .locals 7
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lorg/hermit/geo/PointOfInterest$LON;->distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v0

    .line 282
    .local v0, "d":Lorg/hermit/geo/Distance;
    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->getNm()D

    move-result-wide v1

    .line 283
    .local v1, "nm":D
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_0

    .line 284
    invoke-virtual {p0}, Lorg/hermit/geo/PointOfInterest$LON;->getName()Ljava/lang/String;

    move-result-object v3

    .line 288
    :goto_0
    return-object v3

    .line 285
    :cond_0
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/hermit/geo/PointOfInterest$LON;->longitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->describeNautical()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " east of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/hermit/geo/PointOfInterest$LON;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 288
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->describeNautical()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " west of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/hermit/geo/PointOfInterest$LON;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
