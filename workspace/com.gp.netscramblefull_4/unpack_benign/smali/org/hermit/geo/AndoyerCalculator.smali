.class public Lorg/hermit/geo/AndoyerCalculator;
.super Lorg/hermit/geo/GeoCalculator;
.source "AndoyerCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/hermit/geo/GeoCalculator;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V
    .locals 0
    .param p1, "ellip"    # Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/hermit/geo/GeoCalculator;-><init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V

    .line 69
    return-void
.end method


# virtual methods
.method public azimuth(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;
    .locals 20
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "p2"    # Lorg/hermit/geo/Position;

    .prologue
    .line 162
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v2

    .line 163
    .local v2, "p1Lat":D
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v4

    .line 164
    .local v4, "p1Lon":D
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v6

    .line 165
    .local v6, "p2Lat":D
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v8

    .line 167
    .local v8, "p2Lon":D
    sub-double v0, v8, v4

    .line 169
    .local v0, "dLon":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v12, v14, v16

    .line 170
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

    .line 173
    .local v10, "x":D
    new-instance v14, Lorg/hermit/geo/Azimuth;

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    invoke-direct/range {v14 .. v16}, Lorg/hermit/geo/Azimuth;-><init>(D)V

    return-object v14
.end method

.method public distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
    .locals 66
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "p2"    # Lorg/hermit/geo/Position;

    .prologue
    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v36

    .line 97
    .local v36, "p1Lat":D
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v38

    .line 98
    .local v38, "p1Lon":D
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v40

    .line 99
    .local v40, "p2Lat":D
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v42

    .line 101
    .local v42, "p2Lon":D
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geo/AndoyerCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v33

    .line 102
    .local v33, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    move-object/from16 v0, v33

    iget-wide v0, v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    move-wide/from16 v19, v0

    .line 103
    .local v19, "a":D
    move-object/from16 v0, v33

    iget-wide v0, v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->flat:D

    move-wide/from16 v34, v0

    .line 105
    .local v34, "f":D
    add-double v62, v36, v40

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    div-double v7, v62, v64

    .line 106
    .local v7, "F":D
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    .line 107
    .local v52, "sinF":D
    mul-double v46, v52, v52

    .line 108
    .local v46, "sin2F":D
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    .line 109
    .local v27, "cosF":D
    mul-double v21, v27, v27

    .line 110
    .local v21, "cos2F":D
    sub-double v62, v36, v40

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    div-double v9, v62, v64

    .line 111
    .local v9, "G":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v54

    .line 112
    .local v54, "sinG":D
    mul-double v48, v54, v54

    .line 113
    .local v48, "sin2G":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    .line 114
    .local v29, "cosG":D
    mul-double v23, v29, v29

    .line 115
    .local v23, "cos2G":D
    sub-double v62, v38, v42

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    div-double v58, v62, v64

    .line 116
    .local v58, "\u03bb":D
    invoke-static/range {v58 .. v59}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    .line 117
    .local v56, "sin\u03bb":D
    mul-double v50, v56, v56

    .line 118
    .local v50, "sin2\u03bb":D
    invoke-static/range {v58 .. v59}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 119
    .local v31, "cos\u03bb":D
    mul-double v25, v31, v31

    .line 121
    .local v25, "cos2\u03bb":D
    mul-double v62, v48, v25

    mul-double v64, v21, v50

    add-double v17, v62, v64

    .line 122
    .local v17, "S":D
    mul-double v62, v23, v25

    mul-double v64, v46, v50

    add-double v3, v62, v64

    .line 124
    .local v3, "C":D
    div-double v62, v17, v3

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->atan(D)D

    move-result-wide v60

    .line 125
    .local v60, "\u03c9":D
    mul-double v62, v17, v3

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v62

    div-double v15, v62, v60

    .line 127
    .local v15, "R":D
    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    mul-double v62, v62, v60

    mul-double v5, v62, v19

    .line 128
    .local v5, "D":D
    const-wide/high16 v62, 0x4008000000000000L    # 3.0

    mul-double v62, v62, v15

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    sub-double v62, v62, v64

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    mul-double v64, v64, v3

    div-double v11, v62, v64

    .line 129
    .local v11, "H1":D
    const-wide/high16 v62, 0x4008000000000000L    # 3.0

    mul-double v62, v62, v15

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    add-double v62, v62, v64

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    mul-double v64, v64, v17

    div-double v13, v62, v64

    .line 131
    .local v13, "H2":D
    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    mul-double v64, v34, v11

    mul-double v64, v64, v46

    mul-double v64, v64, v23

    add-double v62, v62, v64

    mul-double v64, v34, v13

    mul-double v64, v64, v21

    mul-double v64, v64, v48

    sub-double v62, v62, v64

    mul-double v44, v5, v62

    .line 132
    .local v44, "s":D
    new-instance v62, Lorg/hermit/geo/Distance;

    move-object/from16 v0, v62

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Distance;-><init>(D)V

    return-object v62
.end method

.method public getAlgorithm()Lorg/hermit/geo/GeoCalculator$Algorithm;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->ANDOYER:Lorg/hermit/geo/GeoCalculator$Algorithm;

    return-object v0
.end method

.method public latDistance(Lorg/hermit/geo/Position;D)Lorg/hermit/geo/Distance;
    .locals 3
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "lat"    # D

    .prologue
    .line 146
    new-instance v0, Lorg/hermit/geo/Position;

    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lorg/hermit/geo/Position;-><init>(DD)V

    .line 147
    .local v0, "p2":Lorg/hermit/geo/Position;
    invoke-virtual {p0, p1, v0}, Lorg/hermit/geo/AndoyerCalculator;->distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v1

    return-object v1
.end method

.method public offset(Lorg/hermit/geo/Position;Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)Lorg/hermit/geo/Position;
    .locals 32
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "distance"    # Lorg/hermit/geo/Distance;
    .param p3, "azimuth"    # Lorg/hermit/geo/Azimuth;

    .prologue
    .line 211
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v18

    .line 212
    .local v18, "p1Lat":D
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v20

    .line 213
    .local v20, "p1Lon":D
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geo/AndoyerCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v13

    .line 215
    .local v13, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Distance;->getMetres()D

    move-result-wide v26

    move-object v0, v13

    iget-wide v0, v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    move-wide/from16 v28, v0

    div-double v5, v26, v28

    .line 216
    .local v5, "angDist":D
    invoke-virtual/range {p3 .. p3}, Lorg/hermit/geo/Azimuth;->getRadians()D

    move-result-wide v7

    .line 219
    .local v7, "azRads":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 220
    .local v24, "sinLat":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 221
    .local v11, "cosLat":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 222
    .local v22, "sinDist":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 225
    .local v9, "cosDist":D
    mul-double v26, v24, v9

    mul-double v28, v11, v22

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    .line 226
    .local v14, "lat2":D
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v22

    mul-double v26, v26, v11

    .line 227
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v24

    sub-double v28, v9, v28

    .line 226
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    add-double v16, v20, v26

    .line 230
    .local v16, "lon2":D
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v26

    if-nez v26, :cond_0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 231
    :cond_0
    const/16 v26, 0x0

    .line 232
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
    .line 191
    invoke-virtual {p0, p1, p2}, Lorg/hermit/geo/AndoyerCalculator;->distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v0

    .line 192
    .local v0, "dist":Lorg/hermit/geo/Distance;
    invoke-virtual {p0, p1, p2}, Lorg/hermit/geo/AndoyerCalculator;->azimuth(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;

    move-result-object v1

    .line 193
    .local v1, "fwdAz":Lorg/hermit/geo/Azimuth;
    new-instance v2, Lorg/hermit/geo/Vector;

    invoke-direct {v2, v0, v1}, Lorg/hermit/geo/Vector;-><init>(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)V

    return-object v2
.end method
