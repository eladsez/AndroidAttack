.class public Lorg/hermit/geo/HaversineCalculator;
.super Lorg/hermit/geo/GeoCalculator;
.source "HaversineCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->SPHERE:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    invoke-direct {p0, v0}, Lorg/hermit/geo/GeoCalculator;-><init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V
    .locals 2
    .param p1, "ellip"    # Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/hermit/geo/GeoCalculator;-><init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V

    .line 62
    sget-object v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->SPHERE:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    if-eq p1, v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HaversineCalculator can only work on Ellipsoid.SHPERE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public azimuth(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;
    .locals 20
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "p2"    # Lorg/hermit/geo/Position;

    .prologue
    .line 141
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v2

    .line 142
    .local v2, "p1Lat":D
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v4

    .line 143
    .local v4, "p1Lon":D
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v6

    .line 144
    .local v6, "p2Lat":D
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v8

    .line 146
    .local v8, "p2Lon":D
    sub-double v0, v8, v4

    .line 148
    .local v0, "dLon":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v12, v14, v16

    .line 149
    .local v12, "y":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v10, v14, v16

    .line 152
    .local v10, "x":D
    new-instance v14, Lorg/hermit/geo/Azimuth;

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    invoke-direct/range {v14 .. v16}, Lorg/hermit/geo/Azimuth;-><init>(D)V

    return-object v14
.end method

.method public distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
    .locals 29
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "p2"    # Lorg/hermit/geo/Position;

    .prologue
    .line 91
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v11

    .line 92
    .local v11, "p1Lat":D
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v13

    .line 93
    .local v13, "p1Lon":D
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v15

    .line 94
    .local v15, "p2Lat":D
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v17

    .line 96
    .local v17, "p2Lon":D
    sub-double v23, v15, v11

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    div-double v7, v23, v25

    .line 97
    .local v7, "halfLat":D
    sub-double v23, v17, v13

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    div-double v9, v23, v25

    .line 100
    .local v9, "halfLon":D
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    .line 101
    .local v19, "sin2HalfLat":D
    mul-double v19, v19, v19

    .line 102
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 103
    .local v21, "sin2HalfLon":D
    mul-double v21, v21, v21

    .line 105
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    mul-double v23, v23, v21

    add-double v2, v19, v23

    .line 106
    .local v2, "a":D
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    sub-double v27, v27, v2

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v25

    mul-double v4, v23, v25

    .line 109
    .local v4, "c":D
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geo/HaversineCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v6

    .line 110
    .local v6, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    new-instance v23, Lorg/hermit/geo/Distance;

    move-object v0, v6

    iget-wide v0, v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v4

    invoke-direct/range {v23 .. v25}, Lorg/hermit/geo/Distance;-><init>(D)V

    return-object v23
.end method

.method public getAlgorithm()Lorg/hermit/geo/GeoCalculator$Algorithm;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->HAVERSINE:Lorg/hermit/geo/GeoCalculator$Algorithm;

    return-object v0
.end method

.method public latDistance(Lorg/hermit/geo/Position;D)Lorg/hermit/geo/Distance;
    .locals 8
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "lat"    # D

    .prologue
    .line 124
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v3

    sub-double v0, p2, v3

    .line 127
    .local v0, "c":D
    invoke-virtual {p0}, Lorg/hermit/geo/HaversineCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v2

    .line 128
    .local v2, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    new-instance v3, Lorg/hermit/geo/Distance;

    iget-wide v4, v2, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lorg/hermit/geo/Distance;-><init>(D)V

    return-object v3
.end method

.method public offset(Lorg/hermit/geo/Position;Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)Lorg/hermit/geo/Position;
    .locals 32
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "distance"    # Lorg/hermit/geo/Distance;
    .param p3, "azimuth"    # Lorg/hermit/geo/Azimuth;

    .prologue
    .line 186
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v18

    .line 187
    .local v18, "p1Lat":D
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v20

    .line 188
    .local v20, "p1Lon":D
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geo/HaversineCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v13

    .line 190
    .local v13, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Distance;->getMetres()D

    move-result-wide v26

    move-object v0, v13

    iget-wide v0, v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    move-wide/from16 v28, v0

    div-double v5, v26, v28

    .line 191
    .local v5, "angDist":D
    invoke-virtual/range {p3 .. p3}, Lorg/hermit/geo/Azimuth;->getRadians()D

    move-result-wide v7

    .line 194
    .local v7, "azRads":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 195
    .local v24, "sinLat":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 196
    .local v11, "cosLat":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 197
    .local v22, "sinDist":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 200
    .local v9, "cosDist":D
    mul-double v26, v24, v9

    mul-double v28, v11, v22

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    .line 201
    .local v14, "lat2":D
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v22

    mul-double v26, v26, v11

    .line 202
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v24

    sub-double v28, v9, v28

    .line 201
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    add-double v16, v20, v26

    .line 205
    .local v16, "lon2":D
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v26

    if-nez v26, :cond_0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 206
    :cond_0
    const/16 v26, 0x0

    .line 207
    :goto_0
    return-object v26

    :cond_1
    new-instance v26, Lorg/hermit/geo/Position;

    move-object/from16 v0, v26

    move-wide v1, v14

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geo/Position;-><init>(DD)V

    goto :goto_0
.end method

.method public vector(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Vector;
    .locals 3
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "p2"    # Lorg/hermit/geo/Position;

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lorg/hermit/geo/HaversineCalculator;->distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v0

    .line 169
    .local v0, "dist":Lorg/hermit/geo/Distance;
    invoke-virtual {p0, p1, p2}, Lorg/hermit/geo/HaversineCalculator;->azimuth(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;

    move-result-object v1

    .line 170
    .local v1, "fwdAz":Lorg/hermit/geo/Azimuth;
    new-instance v2, Lorg/hermit/geo/Vector;

    invoke-direct {v2, v0, v1}, Lorg/hermit/geo/Vector;-><init>(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)V

    return-object v2
.end method
