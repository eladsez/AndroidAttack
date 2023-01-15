.class public abstract Lorg/hermit/geo/PointOfInterest;
.super Ljava/lang/Object;
.source "PointOfInterest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/geo/PointOfInterest$BAND;,
        Lorg/hermit/geo/PointOfInterest$LAT;,
        Lorg/hermit/geo/PointOfInterest$LON;,
        Lorg/hermit/geo/PointOfInterest$POS;
    }
.end annotation


# static fields
.field private static final ANTARC:D

.field private static final ARCTIC:D

.field private static final CANCER:D

.field private static final CAPRICORN:D

.field private static final CHALLENGER_LAT:D

.field private static final CHALLENGER_LON:D

.field private static final DISTANCE_FAR:D = 2.001508679602057E7

.field private static final DISTANCE_NEAR:D = 200.0

.field private static final DISTANCE_THRESH:D = 0.01

.field private static final EARTH_TILT:D

.field private static final EQUATOR:D = 0.0

.field public static final GLOBAL_AREAS:[Lorg/hermit/geo/PointOfInterest;

.field public static final GLOBAL_POIS:[Lorg/hermit/geo/PointOfInterest;

.field private static final HALFPI:D = 1.5707963267948966

.field private static final INACC_LAT:D

.field private static final INACC_LON:D

.field private static final NPOLE:D = 1.5707963267948966

.field private static final RLYEH_LAT:D

.field private static final RLYEH_LON:D

.field private static final SPOLE:D = -1.5707963267948966


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 43
    const-wide v0, 0x4037707f6e4a3583L    # 23.43944444

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->EARTH_TILT:D

    .line 46
    const-wide v0, 0x4026bbbbbbbbbbbcL    # 11.366666666666667

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->CHALLENGER_LAT:D

    .line 47
    const-wide v0, 0x4061d33333333333L    # 142.6

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->CHALLENGER_LON:D

    .line 48
    const-wide v0, 0x404870369d0369d0L    # 48.876666666666665

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->INACC_LAT:D

    .line 49
    const-wide v0, 0x405ed92c5f92c5f9L    # 123.39333333333333

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->INACC_LON:D

    .line 50
    const-wide v0, 0x4047933333333333L    # 47.15

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->RLYEH_LAT:D

    .line 51
    const-wide v0, 0x405faddddddddddeL    # 126.71666666666667

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->RLYEH_LON:D

    .line 57
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-wide v2, Lorg/hermit/geo/PointOfInterest;->EARTH_TILT:D

    sub-double/2addr v0, v2

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->ARCTIC:D

    .line 58
    sget-wide v0, Lorg/hermit/geo/PointOfInterest;->EARTH_TILT:D

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->CANCER:D

    .line 60
    sget-wide v0, Lorg/hermit/geo/PointOfInterest;->EARTH_TILT:D

    neg-double v0, v0

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->CAPRICORN:D

    .line 61
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    sget-wide v2, Lorg/hermit/geo/PointOfInterest;->EARTH_TILT:D

    add-double/2addr v0, v2

    sput-wide v0, Lorg/hermit/geo/PointOfInterest;->ANTARC:D

    .line 69
    const/16 v0, 0xe

    new-array v8, v0, [Lorg/hermit/geo/PointOfInterest;

    const/4 v6, 0x0

    .line 71
    new-instance v0, Lorg/hermit/geo/PointOfInterest$POS;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "The Origin"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$POS;-><init>(DDLjava/lang/String;)V

    aput-object v0, v8, v6

    const/4 v6, 0x1

    .line 72
    new-instance v0, Lorg/hermit/geo/PointOfInterest$POS;

    const-wide/16 v1, 0x0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    const-string v5, "The Anti-Origin"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$POS;-><init>(DDLjava/lang/String;)V

    aput-object v0, v8, v6

    const/4 v6, 0x2

    .line 73
    new-instance v0, Lorg/hermit/geo/PointOfInterest$POS;

    sget-wide v1, Lorg/hermit/geo/PointOfInterest;->CHALLENGER_LAT:D

    sget-wide v3, Lorg/hermit/geo/PointOfInterest;->CHALLENGER_LON:D

    const-string v5, "The Challenger Deep"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$POS;-><init>(DDLjava/lang/String;)V

    aput-object v0, v8, v6

    const/4 v6, 0x3

    .line 74
    new-instance v0, Lorg/hermit/geo/PointOfInterest$POS;

    sget-wide v1, Lorg/hermit/geo/PointOfInterest;->INACC_LAT:D

    sget-wide v3, Lorg/hermit/geo/PointOfInterest;->INACC_LON:D

    const-string v5, "Pole of Inaccessibility"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$POS;-><init>(DDLjava/lang/String;)V

    aput-object v0, v8, v6

    const/4 v6, 0x4

    .line 75
    new-instance v0, Lorg/hermit/geo/PointOfInterest$POS;

    sget-wide v1, Lorg/hermit/geo/PointOfInterest;->RLYEH_LAT:D

    sget-wide v3, Lorg/hermit/geo/PointOfInterest;->RLYEH_LON:D

    const-string v5, "R\'lyeh"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$POS;-><init>(DDLjava/lang/String;)V

    aput-object v0, v8, v6

    const/4 v0, 0x5

    .line 78
    new-instance v1, Lorg/hermit/geo/PointOfInterest$LAT;

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-string v4, "The North Pole"

    invoke-direct {v1, v2, v3, v4}, Lorg/hermit/geo/PointOfInterest$LAT;-><init>(DLjava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v0, 0x6

    .line 79
    new-instance v1, Lorg/hermit/geo/PointOfInterest$LAT;

    sget-wide v2, Lorg/hermit/geo/PointOfInterest;->ARCTIC:D

    const-string v4, "The Arctic Circle"

    invoke-direct {v1, v2, v3, v4}, Lorg/hermit/geo/PointOfInterest$LAT;-><init>(DLjava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v0, 0x7

    .line 80
    new-instance v1, Lorg/hermit/geo/PointOfInterest$LAT;

    sget-wide v2, Lorg/hermit/geo/PointOfInterest;->CANCER:D

    const-string v4, "The Tropic of Cancer"

    invoke-direct {v1, v2, v3, v4}, Lorg/hermit/geo/PointOfInterest$LAT;-><init>(DLjava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x8

    .line 81
    new-instance v1, Lorg/hermit/geo/PointOfInterest$LAT;

    const-wide/16 v2, 0x0

    const-string v4, "The Equator"

    invoke-direct {v1, v2, v3, v4}, Lorg/hermit/geo/PointOfInterest$LAT;-><init>(DLjava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0x9

    .line 82
    new-instance v1, Lorg/hermit/geo/PointOfInterest$LAT;

    sget-wide v2, Lorg/hermit/geo/PointOfInterest;->CAPRICORN:D

    const-string v4, "The Tropic of Capricorn"

    invoke-direct {v1, v2, v3, v4}, Lorg/hermit/geo/PointOfInterest$LAT;-><init>(DLjava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0xa

    .line 83
    new-instance v1, Lorg/hermit/geo/PointOfInterest$LAT;

    sget-wide v2, Lorg/hermit/geo/PointOfInterest;->ANTARC:D

    const-string v4, "The Antarctic Circle"

    invoke-direct {v1, v2, v3, v4}, Lorg/hermit/geo/PointOfInterest$LAT;-><init>(DLjava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v0, 0xb

    .line 84
    new-instance v1, Lorg/hermit/geo/PointOfInterest$LAT;

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-string v4, "The South Pole"

    invoke-direct {v1, v2, v3, v4}, Lorg/hermit/geo/PointOfInterest$LAT;-><init>(DLjava/lang/String;)V

    aput-object v1, v8, v0

    const/16 v9, 0xc

    .line 89
    new-instance v0, Lorg/hermit/geo/PointOfInterest$LON;

    const-wide/16 v1, 0x0

    sget-wide v3, Lorg/hermit/geo/PointOfInterest;->ANTARC:D

    sget-wide v5, Lorg/hermit/geo/PointOfInterest;->ARCTIC:D

    const-string v7, "The Greenwich Meridian"

    invoke-direct/range {v0 .. v7}, Lorg/hermit/geo/PointOfInterest$LON;-><init>(DDDLjava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xd

    .line 90
    new-instance v0, Lorg/hermit/geo/PointOfInterest$LON;

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    sget-wide v3, Lorg/hermit/geo/PointOfInterest;->ANTARC:D

    sget-wide v5, Lorg/hermit/geo/PointOfInterest;->ARCTIC:D

    const-string v7, "The Anti-Meridian"

    invoke-direct/range {v0 .. v7}, Lorg/hermit/geo/PointOfInterest$LON;-><init>(DDDLjava/lang/String;)V

    aput-object v0, v8, v9

    .line 69
    sput-object v8, Lorg/hermit/geo/PointOfInterest;->GLOBAL_POIS:[Lorg/hermit/geo/PointOfInterest;

    .line 101
    const/4 v0, 0x7

    new-array v6, v0, [Lorg/hermit/geo/PointOfInterest;

    const/4 v7, 0x0

    .line 103
    new-instance v0, Lorg/hermit/geo/PointOfInterest$BAND;

    sget-wide v1, Lorg/hermit/geo/PointOfInterest;->ARCTIC:D

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-string v5, "The Arctic"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$BAND;-><init>(DDLjava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    .line 104
    new-instance v0, Lorg/hermit/geo/PointOfInterest$BAND;

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    sget-wide v3, Lorg/hermit/geo/PointOfInterest;->ANTARC:D

    const-string v5, "The Antarctic"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$BAND;-><init>(DDLjava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x2

    .line 107
    new-instance v0, Lorg/hermit/geo/PointOfInterest$BAND;

    const-wide/high16 v1, -0x3fb7000000000000L    # -50.0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    const-wide/high16 v3, -0x3fbc000000000000L    # -40.0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    const-string v5, "The Roaring Forties"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$BAND;-><init>(DDLjava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x3

    .line 108
    new-instance v0, Lorg/hermit/geo/PointOfInterest$BAND;

    const-wide/high16 v1, -0x3fb2000000000000L    # -60.0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    const-wide/high16 v3, -0x3fb7000000000000L    # -50.0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    const-string v5, "The Furious Fifties"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$BAND;-><init>(DDLjava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x4

    .line 109
    new-instance v0, Lorg/hermit/geo/PointOfInterest$BAND;

    const-wide v1, -0x3fae800000000000L    # -70.0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    const-wide/high16 v3, -0x3fb2000000000000L    # -60.0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    const-string v5, "The Screaming Sixties"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$BAND;-><init>(DDLjava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x5

    .line 112
    new-instance v0, Lorg/hermit/geo/PointOfInterest$BAND;

    const-wide/16 v1, 0x0

    sget-wide v3, Lorg/hermit/geo/PointOfInterest;->CANCER:D

    const-string v5, "The Northern Tropics"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$BAND;-><init>(DDLjava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x6

    .line 113
    new-instance v0, Lorg/hermit/geo/PointOfInterest$BAND;

    sget-wide v1, Lorg/hermit/geo/PointOfInterest;->CAPRICORN:D

    const-wide/16 v3, 0x0

    const-string v5, "The Southern Tropics"

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geo/PointOfInterest$BAND;-><init>(DDLjava/lang/String;)V

    aput-object v0, v6, v7

    .line 101
    sput-object v6, Lorg/hermit/geo/PointOfInterest;->GLOBAL_AREAS:[Lorg/hermit/geo/PointOfInterest;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lorg/hermit/geo/PointOfInterest;->name:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public static final describePoint(Lorg/hermit/geo/Position;)Ljava/lang/String;
    .locals 12
    .param p0, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "best":Lorg/hermit/geo/PointOfInterest;
    const-wide/16 v1, 0x0

    .line 499
    .local v1, "bestDistance":D
    sget-object v7, Lorg/hermit/geo/PointOfInterest;->GLOBAL_POIS:[Lorg/hermit/geo/PointOfInterest;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v8, :cond_0

    .line 509
    if-eqz v0, :cond_3

    .line 510
    invoke-virtual {v0, p0}, Lorg/hermit/geo/PointOfInterest;->status(Lorg/hermit/geo/Position;)Ljava/lang/String;

    move-result-object v7

    .line 512
    :goto_1
    return-object v7

    .line 499
    :cond_0
    aget-object v6, v7, v9

    .line 500
    .local v6, "poi":Lorg/hermit/geo/PointOfInterest;
    invoke-virtual {v6, p0}, Lorg/hermit/geo/PointOfInterest;->distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v3

    .line 501
    .local v3, "d":Lorg/hermit/geo/Distance;
    invoke-virtual {v3}, Lorg/hermit/geo/Distance;->getNm()D

    move-result-wide v4

    .line 502
    .local v4, "nm":D
    if-eqz v0, :cond_1

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    cmpg-double v10, v4, v10

    if-gtz v10, :cond_2

    cmpg-double v10, v4, v1

    if-gez v10, :cond_2

    .line 503
    :cond_1
    move-object v0, v6

    .line 504
    move-wide v1, v4

    .line 499
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 512
    .end local v3    # "d":Lorg/hermit/geo/Distance;
    .end local v4    # "nm":D
    .end local v6    # "poi":Lorg/hermit/geo/PointOfInterest;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static final describePosition(Lorg/hermit/geo/Position;)Ljava/lang/String;
    .locals 15
    .param p0, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 416
    invoke-static {p0}, Lorg/hermit/geo/PointOfInterest;->describeRegion(Lorg/hermit/geo/Position;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "area":Ljava/lang/String;
    const/4 v4, 0x0

    .line 420
    .local v4, "best":Lorg/hermit/geo/PointOfInterest;
    const-wide/16 v5, 0x0

    .line 421
    .local v5, "bestDistance":D
    const/4 v2, 0x0

    .line 422
    .local v2, "anyPoint":Lorg/hermit/geo/PointOfInterest;
    const-wide/16 v0, 0x0

    .line 423
    .local v0, "anyDistance":D
    sget-object v10, Lorg/hermit/geo/PointOfInterest;->GLOBAL_POIS:[Lorg/hermit/geo/PointOfInterest;

    array-length v11, v10

    const/4 v7, 0x0

    move v12, v7

    :goto_0
    if-lt v12, v11, :cond_0

    .line 438
    if-eqz v4, :cond_5

    invoke-virtual {v4, p0}, Lorg/hermit/geo/PointOfInterest;->status(Lorg/hermit/geo/Position;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "anyDistance":D
    move-object v1, v0

    .line 439
    .local v1, "point":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_a

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_a

    .line 440
    const/4 v0, 0x0

    .line 447
    .end local v3    # "area":Ljava/lang/String;
    .local v0, "area":Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_8

    .line 448
    if-nez v1, :cond_7

    .line 449
    if-nez v2, :cond_6

    .line 450
    const-string p0, "The World"

    .line 459
    .end local v0    # "area":Ljava/lang/String;
    .end local p0    # "pos":Lorg/hermit/geo/Position;
    :goto_3
    return-object p0

    .line 423
    .end local v1    # "point":Ljava/lang/String;
    .local v0, "anyDistance":D
    .restart local v3    # "area":Ljava/lang/String;
    .restart local p0    # "pos":Lorg/hermit/geo/Position;
    :cond_0
    aget-object v9, v10, v12

    .line 424
    .local v9, "poi":Lorg/hermit/geo/PointOfInterest;
    invoke-virtual {v9, p0}, Lorg/hermit/geo/PointOfInterest;->distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v7

    .line 425
    .local v7, "d":Lorg/hermit/geo/Distance;
    invoke-virtual {v7}, Lorg/hermit/geo/Distance;->getNm()D

    move-result-wide v7

    .line 426
    .local v7, "nm":D
    if-eqz v2, :cond_1

    cmpg-double v13, v7, v0

    if-gez v13, :cond_2

    .line 427
    :cond_1
    move-object v2, v9

    .line 428
    move-wide v0, v7

    .line 430
    :cond_2
    const-wide/high16 v13, 0x4069000000000000L    # 200.0

    cmpg-double v13, v7, v13

    if-gtz v13, :cond_4

    if-eqz v4, :cond_3

    cmpg-double v13, v7, v5

    if-gez v13, :cond_4

    .line 431
    :cond_3
    move-object v4, v9

    .line 432
    move-wide v5, v7

    .line 423
    :cond_4
    add-int/lit8 v7, v12, 0x1

    move v12, v7

    goto :goto_0

    .line 438
    .end local v7    # "nm":D
    .end local v9    # "poi":Lorg/hermit/geo/PointOfInterest;
    :cond_5
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 452
    .end local v3    # "area":Ljava/lang/String;
    .local v0, "area":Ljava/lang/String;
    .restart local v1    # "point":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, p0}, Lorg/hermit/geo/PointOfInterest;->status(Lorg/hermit/geo/Position;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    move-object p0, v1

    .line 454
    goto :goto_3

    .line 456
    :cond_8
    if-nez v1, :cond_9

    move-object p0, v0

    .line 457
    goto :goto_3

    .line 459
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "pos":Lorg/hermit/geo/Position;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "area":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .restart local v3    # "area":Ljava/lang/String;
    .restart local p0    # "pos":Lorg/hermit/geo/Position;
    :cond_a
    move-object v0, v3

    .end local v3    # "area":Ljava/lang/String;
    .restart local v0    # "area":Ljava/lang/String;
    goto :goto_2
.end method

.method public static final describeRegion(Lorg/hermit/geo/Position;)Ljava/lang/String;
    .locals 9
    .param p0, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 475
    sget-object v2, Lorg/hermit/geo/PointOfInterest;->GLOBAL_AREAS:[Lorg/hermit/geo/PointOfInterest;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 481
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 475
    :cond_0
    aget-object v1, v2, v4

    .line 476
    .local v1, "poi":Lorg/hermit/geo/PointOfInterest;
    invoke-virtual {v1, p0}, Lorg/hermit/geo/PointOfInterest;->distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v0

    .line 477
    .local v0, "d":Lorg/hermit/geo/Distance;
    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->getNm()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_1

    .line 478
    invoke-virtual {v1, p0}, Lorg/hermit/geo/PointOfInterest;->status(Lorg/hermit/geo/Position;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 475
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/hermit/geo/PointOfInterest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public status(Lorg/hermit/geo/Position;)Ljava/lang/String;
    .locals 5
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lorg/hermit/geo/PointOfInterest;->distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v0

    .line 394
    .local v0, "d":Lorg/hermit/geo/Distance;
    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->getNm()D

    move-result-wide v1

    .line 395
    .local v1, "nm":D
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_0

    .line 396
    iget-object v3, p0, Lorg/hermit/geo/PointOfInterest;->name:Ljava/lang/String;

    .line 398
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->describeNautical()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/hermit/geo/PointOfInterest;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
