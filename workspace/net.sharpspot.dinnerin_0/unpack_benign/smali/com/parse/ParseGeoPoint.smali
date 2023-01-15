.class public Lcom/parse/ParseGeoPoint;
.super Ljava/lang/Object;
.source "ParseGeoPoint.java"


# static fields
.field static EARTH_MEAN_RADIUS_KM:D

.field static EARTH_MEAN_RADIUS_MILE:D


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    sput-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    .line 20
    const-wide v0, 0x40aeed999999999aL    # 3958.8

    sput-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 23
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 29
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 23
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseGeoPoint;->setLatitude(D)V

    .line 41
    invoke-virtual {p0, p3, p4}, Lcom/parse/ParseGeoPoint;->setLongitude(D)V

    .line 42
    return-void
.end method


# virtual methods
.method public distanceInKilometersTo(Lcom/parse/ParseGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInMilesTo(Lcom/parse/ParseGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D
    .locals 28
    .param p1, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 92
    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 93
    .local v4, "d2r":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseGeoPoint;->latitude:D

    move-wide/from16 v22, v0

    mul-double v10, v22, v4

    .line 94
    .local v10, "lat1rad":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseGeoPoint;->longitude:D

    move-wide/from16 v22, v0

    mul-double v14, v22, v4

    .line 95
    .local v14, "long1rad":D
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v22

    mul-double v12, v22, v4

    .line 96
    .local v12, "lat2rad":D
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v22

    mul-double v16, v22, v4

    .line 97
    .local v16, "long2rad":D
    sub-double v6, v10, v12

    .line 98
    .local v6, "deltaLat":D
    sub-double v8, v14, v16

    .line 99
    .local v8, "deltaLong":D
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 100
    .local v18, "sinDeltaLatDiv2":D
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v22, v8, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 104
    .local v20, "sinDeltaLongDiv2":D
    mul-double v22, v18, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 105
    mul-double v24, v24, v20

    mul-double v24, v24, v20

    .line 104
    add-double v2, v22, v24

    .line 106
    .local v2, "a":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 107
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    return-wide v22
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 2
    .param p1, "latitude"    # D

    .prologue
    .line 51
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be within the range (-90.0, 90.0)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-wide p1, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 55
    return-void
.end method

.method public setLongitude(D)V
    .locals 2
    .param p1, "longitude"    # D

    .prologue
    .line 71
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be within the range (-180.0, 180.0)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-wide p1, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 75
    return-void
.end method
