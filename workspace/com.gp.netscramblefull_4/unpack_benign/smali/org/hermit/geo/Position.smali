.class public Lorg/hermit/geo/Position;
.super Ljava/lang/Object;
.source "Position.java"


# static fields
.field public static final UNKNOWN:Lorg/hermit/geo/Position;


# instance fields
.field private latitudeR:D

.field private longitudeR:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 75
    new-instance v0, Lorg/hermit/geo/Position;

    .line 76
    const/4 v5, 0x1

    move-wide v3, v1

    .line 75
    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/Position;-><init>(DDZ)V

    sput-object v0, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    .line 65
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "latRadians"    # D
    .param p3, "lonRadians"    # D

    .prologue
    .line 92
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/Position;-><init>(DDZ)V

    .line 93
    return-void
.end method

.method private constructor <init>(DDZ)V
    .locals 2
    .param p1, "latRadians"    # D
    .param p3, "lonRadians"    # D
    .param p5, "allowNan"    # Z

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-nez p5, :cond_1

    .line 109
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Components of a Position must be finite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hermit/geo/Position;->init(DD)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/hermit/geo/Position;)V
    .locals 4
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iget-wide v0, p1, Lorg/hermit/geo/Position;->latitudeR:D

    iget-wide v2, p1, Lorg/hermit/geo/Position;->longitudeR:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/hermit/geo/Position;->init(DD)V

    .line 154
    return-void
.end method

.method public static fromDegrees(DD)Lorg/hermit/geo/Position;
    .locals 5
    .param p0, "latDegrees"    # D
    .param p2, "lonDegrees"    # D

    .prologue
    .line 202
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Components of a Position must be finite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    new-instance v0, Lorg/hermit/geo/Position;

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geo/Position;-><init>(DD)V

    return-object v0
.end method

.method private init(DD)V
    .locals 6
    .param p1, "latRadians"    # D
    .param p3, "lonRadians"    # D

    .prologue
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 170
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 172
    const-wide p1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 177
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_3

    .line 179
    add-double v0, p3, v2

    rem-double/2addr v0, v4

    sub-double p3, v0, v2

    .line 182
    :cond_1
    iput-wide p1, p0, Lorg/hermit/geo/Position;->latitudeR:D

    .line 183
    iput-wide p3, p0, Lorg/hermit/geo/Position;->longitudeR:D

    .line 184
    return-void

    .line 173
    :cond_2
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 174
    const-wide p1, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 177
    goto :goto_0

    .line 178
    :cond_3
    add-double/2addr p3, v4

    goto :goto_0
.end method


# virtual methods
.method public azimuth(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;
    .locals 2
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 404
    sget-object v1, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    if-eq p0, v1, :cond_0

    sget-object v1, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    if-ne p1, v1, :cond_1

    .line 405
    :cond_0
    const/4 v1, 0x0

    .line 408
    :goto_0
    return-object v1

    .line 407
    :cond_1
    invoke-static {}, Lorg/hermit/geo/GeoCalculator;->getCalculator()Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    .line 408
    .local v0, "calc":Lorg/hermit/geo/GeoCalculator;
    invoke-virtual {v0, p0, p1}, Lorg/hermit/geo/GeoCalculator;->azimuth(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;

    move-result-object v1

    goto :goto_0
.end method

.method public distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
    .locals 2
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 368
    sget-object v1, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    if-eq p0, v1, :cond_0

    sget-object v1, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    if-ne p1, v1, :cond_1

    .line 369
    :cond_0
    const/4 v1, 0x0

    .line 372
    :goto_0
    return-object v1

    .line 371
    :cond_1
    invoke-static {}, Lorg/hermit/geo/GeoCalculator;->getCalculator()Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    .line 372
    .local v0, "calc":Lorg/hermit/geo/GeoCalculator;
    invoke-virtual {v0, p0, p1}, Lorg/hermit/geo/GeoCalculator;->distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v1

    goto :goto_0
.end method

.method public formatDegMin()Ljava/lang/String;
    .locals 5

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/hermit/geo/Position;->latitudeR:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/16 v3, 0x4e

    const/16 v4, 0x53

    invoke-static {v1, v2, v3, v4}, Lorg/hermit/utils/Angle;->formatDegMin(DCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    iget-wide v1, p0, Lorg/hermit/geo/Position;->longitudeR:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/16 v3, 0x45

    const/16 v4, 0x57

    invoke-static {v1, v2, v3, v4}, Lorg/hermit/utils/Angle;->formatDegMin(DCC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDegMinSec()Ljava/lang/String;
    .locals 5

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/hermit/geo/Position;->latitudeR:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/16 v3, 0x4e

    const/16 v4, 0x53

    invoke-static {v1, v2, v3, v4}, Lorg/hermit/utils/Angle;->formatDegMinSec(DCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 469
    iget-wide v1, p0, Lorg/hermit/geo/Position;->longitudeR:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/16 v3, 0x45

    const/16 v4, 0x57

    invoke-static {v1, v2, v3, v4}, Lorg/hermit/utils/Angle;->formatDegMinSec(DCC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCentreDistance()D
    .locals 10

    .prologue
    .line 289
    iget-wide v2, p0, Lorg/hermit/geo/Position;->latitudeR:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 295
    :goto_0
    return-wide v2

    .line 292
    :cond_0
    const-wide v2, 0x3feff24baca6bc98L    # 0.9983271

    .line 293
    const-wide v4, 0x3f5b7754cb336f99L    # 0.0016764

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/hermit/geo/Position;->latitudeR:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 292
    add-double/2addr v2, v4

    .line 294
    const-wide v4, 0x3ecd5c31593e5fb7L    # 3.5E-6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    iget-wide v8, p0, Lorg/hermit/geo/Position;->latitudeR:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 292
    sub-double v0, v2, v4

    .local v0, "\u03c1":D
    move-wide v2, v0

    .line 295
    goto :goto_0
.end method

.method public getGeocentricLat()D
    .locals 12

    .prologue
    .line 231
    iget-wide v6, p0, Lorg/hermit/geo/Position;->latitudeR:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 232
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 237
    :goto_0
    return-wide v6

    .line 234
    :cond_0
    const-wide v6, 0x3fc8a161e4f765feL    # 0.192425

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 235
    .local v0, "f1":D
    const-wide v6, 0x3f351dfde80fa7e4L    # 3.222222222222222E-4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 236
    .local v2, "f2":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/hermit/geo/Position;->latitudeR:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    iget-wide v10, p0, Lorg/hermit/geo/Position;->latitudeR:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    sub-double v4, v6, v8

    .line 237
    .local v4, "\u0394\u03c6":D
    iget-wide v6, p0, Lorg/hermit/geo/Position;->latitudeR:D

    sub-double/2addr v6, v4

    goto :goto_0
.end method

.method public getLatDegs()D
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lorg/hermit/geo/Position;->latitudeR:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 262
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/hermit/geo/Position;->latitudeR:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getLatRads()D
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lorg/hermit/geo/Position;->latitudeR:D

    return-wide v0
.end method

.method public getLonDegs()D
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lorg/hermit/geo/Position;->longitudeR:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 276
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/hermit/geo/Position;->longitudeR:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getLonRads()D
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lorg/hermit/geo/Position;->longitudeR:D

    return-wide v0
.end method

.method public latDistance(D)Lorg/hermit/geo/Distance;
    .locals 2
    .param p1, "lat"    # D

    .prologue
    .line 386
    sget-object v1, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    if-ne p0, v1, :cond_0

    .line 387
    const/4 v1, 0x0

    .line 390
    :goto_0
    return-object v1

    .line 389
    :cond_0
    invoke-static {}, Lorg/hermit/geo/GeoCalculator;->getCalculator()Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    .line 390
    .local v0, "calc":Lorg/hermit/geo/GeoCalculator;
    invoke-virtual {v0, p0, p1, p2}, Lorg/hermit/geo/GeoCalculator;->latDistance(Lorg/hermit/geo/Position;D)Lorg/hermit/geo/Distance;

    move-result-object v1

    goto :goto_0
.end method

.method public offset(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)Lorg/hermit/geo/Position;
    .locals 2
    .param p1, "distance"    # Lorg/hermit/geo/Distance;
    .param p2, "azimuth"    # Lorg/hermit/geo/Azimuth;

    .prologue
    .line 439
    sget-object v1, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    if-ne p0, v1, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 443
    :goto_0
    return-object v1

    .line 442
    :cond_0
    invoke-static {}, Lorg/hermit/geo/GeoCalculator;->getCalculator()Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    .line 443
    .local v0, "calc":Lorg/hermit/geo/GeoCalculator;
    invoke-virtual {v0, p0, p1, p2}, Lorg/hermit/geo/GeoCalculator;->offset(Lorg/hermit/geo/Position;Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)Lorg/hermit/geo/Position;

    move-result-object v1

    goto :goto_0
.end method

.method public offset(Lorg/hermit/geo/Vector;)Lorg/hermit/geo/Position;
    .locals 2
    .param p1, "vector"    # Lorg/hermit/geo/Vector;

    .prologue
    .line 423
    invoke-virtual {p1}, Lorg/hermit/geo/Vector;->getDistance()Lorg/hermit/geo/Distance;

    move-result-object v0

    invoke-virtual {p1}, Lorg/hermit/geo/Vector;->getAzimuth()Lorg/hermit/geo/Azimuth;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/hermit/geo/Position;->offset(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)Lorg/hermit/geo/Position;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lorg/hermit/geo/Position;->formatDegMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vector(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Vector;
    .locals 4
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 346
    sget-object v3, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    if-eq p0, v3, :cond_0

    sget-object v3, Lorg/hermit/geo/Position;->UNKNOWN:Lorg/hermit/geo/Position;

    if-ne p1, v3, :cond_1

    .line 347
    :cond_0
    const/4 v3, 0x0

    .line 354
    :goto_0
    return-object v3

    .line 349
    :cond_1
    invoke-static {}, Lorg/hermit/geo/GeoCalculator;->getCalculator()Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    .line 351
    .local v0, "calc":Lorg/hermit/geo/GeoCalculator;
    invoke-virtual {v0, p0, p1}, Lorg/hermit/geo/GeoCalculator;->distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v1

    .line 352
    .local v1, "dist":Lorg/hermit/geo/Distance;
    invoke-virtual {v0, p0, p1}, Lorg/hermit/geo/GeoCalculator;->azimuth(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;

    move-result-object v2

    .line 354
    .local v2, "fwdAz":Lorg/hermit/geo/Azimuth;
    new-instance v3, Lorg/hermit/geo/Vector;

    invoke-direct {v3, v1, v2}, Lorg/hermit/geo/Vector;-><init>(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)V

    goto :goto_0
.end method
