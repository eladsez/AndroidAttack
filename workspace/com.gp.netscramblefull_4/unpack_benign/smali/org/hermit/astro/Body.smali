.class public abstract Lorg/hermit/astro/Body;
.super Ljava/lang/Object;
.source "Body.java"

# interfaces
.implements Lorg/hermit/astro/AstroConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/astro/Body$Calc;,
        Lorg/hermit/astro/Body$Field;,
        Lorg/hermit/astro/Body$Name;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$hermit$astro$Body$Name:[I = null

.field public static final ALL_BODIES:[Lorg/hermit/astro/Body$Name;

.field private static final ALL_FIELDS:[Lorg/hermit/astro/Body$Field;

.field private static final KEPLER_MAX_ITER:I = 0xa

.field private static final KEPLER_TOLERANCE:D = 1.0E-5

.field public static final NUM_BODIES:I

.field private static final NUM_FIELDS:I


# instance fields
.field private dataCache:[Ljava/lang/Double;

.field private observation:Lorg/hermit/astro/Observation;

.field private final whichBody:Lorg/hermit/astro/Body$Name;


# direct methods
.method static synthetic $SWITCH_TABLE$org$hermit$astro$Body$Name()[I
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lorg/hermit/astro/Body;->$SWITCH_TABLE$org$hermit$astro$Body$Name:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/hermit/astro/Body$Name;->values()[Lorg/hermit/astro/Body$Name;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lorg/hermit/astro/Body$Name;->JUPITER:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lorg/hermit/astro/Body$Name;->MARS:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lorg/hermit/astro/Body$Name;->MERCURY:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lorg/hermit/astro/Body$Name;->NEPTUNE:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lorg/hermit/astro/Body$Name;->SATURN:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lorg/hermit/astro/Body$Name;->URANUS:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lorg/hermit/astro/Body$Name;->VENUS:Lorg/hermit/astro/Body$Name;

    invoke-virtual {v1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lorg/hermit/astro/Body;->$SWITCH_TABLE$org$hermit$astro$Body$Name:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 171
    invoke-static {}, Lorg/hermit/astro/Body$Name;->values()[Lorg/hermit/astro/Body$Name;

    move-result-object v4

    sput-object v4, Lorg/hermit/astro/Body;->ALL_BODIES:[Lorg/hermit/astro/Body$Name;

    .line 176
    sget-object v4, Lorg/hermit/astro/Body;->ALL_BODIES:[Lorg/hermit/astro/Body$Name;

    array-length v4, v4

    sput v4, Lorg/hermit/astro/Body;->NUM_BODIES:I

    .line 323
    invoke-static {}, Lorg/hermit/astro/Body$Field;->values()[Lorg/hermit/astro/Body$Field;

    move-result-object v4

    sput-object v4, Lorg/hermit/astro/Body;->ALL_FIELDS:[Lorg/hermit/astro/Body$Field;

    .line 325
    sget-object v4, Lorg/hermit/astro/Body;->ALL_FIELDS:[Lorg/hermit/astro/Body$Field;

    array-length v4, v4

    sput v4, Lorg/hermit/astro/Body;->NUM_FIELDS:I

    .line 405
    new-instance v3, Lorg/hermit/astro/Body$1;

    invoke-direct {v3}, Lorg/hermit/astro/Body$1;-><init>()V

    .line 408
    .local v3, "calcHe":Lorg/hermit/astro/Body$Calc;
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_LATITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v3}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 409
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v3}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 410
    sget-object v4, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v3}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 422
    new-instance v2, Lorg/hermit/astro/Body$2;

    invoke-direct {v2}, Lorg/hermit/astro/Body$2;-><init>()V

    .line 425
    .local v2, "calcEc":Lorg/hermit/astro/Body$Calc;
    sget-object v4, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v2}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 426
    sget-object v4, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v2}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 427
    sget-object v4, Lorg/hermit/astro/Body$Field;->EC_LATITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v2}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 439
    new-instance v0, Lorg/hermit/astro/Body$3;

    invoke-direct {v0}, Lorg/hermit/astro/Body$3;-><init>()V

    .line 442
    .local v0, "calc":Lorg/hermit/astro/Body$Calc;
    sget-object v4, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 443
    sget-object v4, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 471
    new-instance v0, Lorg/hermit/astro/Body$4;

    .end local v0    # "calc":Lorg/hermit/astro/Body$Calc;
    invoke-direct {v0}, Lorg/hermit/astro/Body$4;-><init>()V

    .line 474
    .restart local v0    # "calc":Lorg/hermit/astro/Body$Calc;
    sget-object v4, Lorg/hermit/astro/Body$Field;->HORIZ_PARALLAX:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 475
    sget-object v4, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_TOPO:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 476
    sget-object v4, Lorg/hermit/astro/Body$Field;->DECLINATION_TOPO:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 518
    sget-object v4, Lorg/hermit/astro/Body$Field;->LOCAL_HOUR_ANGLE:Lorg/hermit/astro/Body$Field;

    new-instance v5, Lorg/hermit/astro/Body$5;

    invoke-direct {v5}, Lorg/hermit/astro/Body$5;-><init>()V

    invoke-static {v4, v5}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 545
    new-instance v1, Lorg/hermit/astro/Body$6;

    invoke-direct {v1}, Lorg/hermit/astro/Body$6;-><init>()V

    .line 548
    .local v1, "calcAltAz":Lorg/hermit/astro/Body$Calc;
    sget-object v4, Lorg/hermit/astro/Body$Field;->LOCAL_AZIMUTH:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v1}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 549
    sget-object v4, Lorg/hermit/astro/Body$Field;->LOCAL_ALTITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v1}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 592
    sget-object v4, Lorg/hermit/astro/Body$Field;->APPARENT_DIAMETER:Lorg/hermit/astro/Body$Field;

    new-instance v5, Lorg/hermit/astro/Body$7;

    invoke-direct {v5}, Lorg/hermit/astro/Body$7;-><init>()V

    invoke-static {v4, v5}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 621
    new-instance v0, Lorg/hermit/astro/Body$8;

    .end local v0    # "calc":Lorg/hermit/astro/Body$Calc;
    invoke-direct {v0}, Lorg/hermit/astro/Body$8;-><init>()V

    .line 624
    .restart local v0    # "calc":Lorg/hermit/astro/Body$Calc;
    sget-object v4, Lorg/hermit/astro/Body$Field;->RISE_TIME:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 625
    sget-object v4, Lorg/hermit/astro/Body$Field;->SET_TIME:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 626
    sget-object v4, Lorg/hermit/astro/Body$Field;->RISE_TWILIGHT:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 627
    sget-object v4, Lorg/hermit/astro/Body$Field;->SET_TWILIGHT:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 777
    new-instance v0, Lorg/hermit/astro/Body$9;

    .end local v0    # "calc":Lorg/hermit/astro/Body$Calc;
    invoke-direct {v0}, Lorg/hermit/astro/Body$9;-><init>()V

    .line 780
    .restart local v0    # "calc":Lorg/hermit/astro/Body$Calc;
    sget-object v4, Lorg/hermit/astro/Body$Field;->PHASE_ANGLE:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 781
    sget-object v4, Lorg/hermit/astro/Body$Field;->PHASE:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 800
    sget-object v4, Lorg/hermit/astro/Body$Field;->PARALLACTIC:Lorg/hermit/astro/Body$Field;

    new-instance v5, Lorg/hermit/astro/Body$10;

    invoke-direct {v5}, Lorg/hermit/astro/Body$10;-><init>()V

    invoke-static {v4, v5}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 827
    new-instance v0, Lorg/hermit/astro/Body$11;

    .end local v0    # "calc":Lorg/hermit/astro/Body$Calc;
    invoke-direct {v0}, Lorg/hermit/astro/Body$11;-><init>()V

    .line 830
    .restart local v0    # "calc":Lorg/hermit/astro/Body$Calc;
    sget-object v4, Lorg/hermit/astro/Body$Field;->ABS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 831
    sget-object v4, Lorg/hermit/astro/Body$Field;->OBS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

    invoke-static {v4, v0}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 869
    sget-object v4, Lorg/hermit/astro/Body$Field;->MAGNITUDE:Lorg/hermit/astro/Body$Field;

    new-instance v5, Lorg/hermit/astro/Body$12;

    invoke-direct {v5}, Lorg/hermit/astro/Body$12;-><init>()V

    invoke-static {v4, v5}, Lorg/hermit/astro/Body$Field;->access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lorg/hermit/astro/Observation;Lorg/hermit/astro/Body$Name;)V
    .locals 1
    .param p1, "o"    # Lorg/hermit/astro/Observation;
    .param p2, "which"    # Lorg/hermit/astro/Body$Name;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    .line 343
    iput-object p2, p0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    .line 346
    sget v0, Lorg/hermit/astro/Body;->NUM_FIELDS:I

    new-array v0, v0, [Ljava/lang/Double;

    iput-object v0, p0, Lorg/hermit/astro/Body;->dataCache:[Ljava/lang/Double;

    .line 347
    invoke-virtual {p0}, Lorg/hermit/astro/Body;->invalidate()V

    .line 348
    return-void
.end method

.method static aberrationEc(DDDD[D)V
    .locals 8
    .param p0, "td"    # D
    .param p2, "\u03bb"    # D
    .param p4, "\u03b2"    # D
    .param p6, "Lsun"    # D
    .param p8, "pos"    # [D

    .prologue
    .line 980
    const-wide v0, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr p0, v0

    const-wide v0, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr p0, v0

    .line 981
    .local p0, "T":D
    mul-double v0, p0, p0

    .line 982
    .local v0, "T2":D
    const-wide v2, 0x3f911c11725d0380L    # 0.016708634

    const-wide v4, 0x3f060a1c525fe303L    # 4.2037E-5

    mul-double/2addr v4, p0

    sub-double/2addr v2, v4

    const-wide v4, 0x3e810160fc64d800L    # 1.267E-7

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    .line 983
    .local v2, "e":D
    const-wide v4, 0x4059bbfd8adab9f5L    # 102.93735

    const-wide v6, 0x3ffb82e87d2c7b89L    # 1.71946

    mul-double/2addr p0, v6

    add-double/2addr p0, v4

    const-wide v4, 0x3f3e2584f4c6e6daL    # 4.6E-4

    mul-double/2addr v0, v4

    add-double/2addr p0, v0

    .line 984
    .local p0, "\u03c0":D
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    .end local v0    # "T2":D
    move-result-wide p0

    .line 986
    sget-wide v0, Lorg/hermit/astro/Body;->ABERRATION:D

    neg-double v0, v0

    sub-double v4, p6, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sget-wide v4, Lorg/hermit/astro/Body;->ABERRATION:D

    mul-double/2addr v4, v2

    sub-double v6, p0, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    .line 987
    .local v0, "\u0394\u03bb":D
    sget-wide v4, Lorg/hermit/astro/Body;->ABERRATION:D

    neg-double v4, v4

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    .end local p4    # "\u03b2":D
    mul-double/2addr p4, v4

    sub-double/2addr p6, p2

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    .end local p6    # "Lsun":D
    move-result-wide p6

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .end local p0    # "\u03c0":D
    move-result-wide p0

    mul-double/2addr p0, v2

    sub-double p0, p6, p0

    mul-double/2addr p0, p4

    .line 989
    .local p0, "\u0394\u03b2":D
    const/4 p2, 0x0

    aput-wide v0, p8, p2

    .line 990
    .end local p2    # "\u03bb":D
    const/4 p2, 0x1

    aput-wide p0, p8, p2

    .line 991
    return-void
.end method

.method private calculateTwilight(DDDD[D[DDD)D
    .locals 27
    .param p1, "\u03980"    # D
    .param p3, "\u03c6"    # D
    .param p5, "L"    # D
    .param p7, "\u0394T"    # D
    .param p9, "\u03b1n"    # [D
    .param p10, "\u03b4n"    # [D
    .param p11, "m"    # D
    .param p13, "z"    # D

    .prologue
    .line 749
    const-wide v21, 0x40193398f014e7b1L    # 6.300388098979895

    mul-double v21, v21, p11

    add-double v21, v21, p1

    invoke-static/range {v21 .. v22}, Lorg/hermit/astro/Body;->modTwoPi(D)D

    move-result-wide v15

    .line 750
    .local v15, "\u03980_now":D
    const-wide v21, 0x40f5180000000000L    # 86400.0

    div-double v21, p7, v21

    add-double v11, p11, v21

    .line 754
    .local v11, "n":D
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object v8, v0

    fill-array-data v8, :array_0

    .line 755
    .local v8, "args":[D
    move-object v0, v8

    move-object/from16 v1, p9

    move-wide v2, v11

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/astro/Util;->interpolate([D[DD)D

    move-result-wide v17

    .line 756
    .local v17, "\u03b1":D
    move-object v0, v8

    move-object/from16 v1, p10

    move-wide v2, v11

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/astro/Util;->interpolate([D[DD)D

    move-result-wide v19

    .line 757
    .local v19, "\u03b4":D
    add-double v21, v15, p5

    sub-double v4, v21, v17

    .line 761
    .local v4, "H":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    div-double v9, v21, v23

    .line 762
    .local v9, "cosH1":D
    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    cmpg-double v21, v9, v21

    if-ltz v21, :cond_0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    cmpl-double v21, v9, v21

    if-lez v21, :cond_0

    .line 764
    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    .line 765
    .local v6, "H1":D
    sub-double v21, v6, v4

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v21

    const-wide/high16 v23, 0x402e000000000000L    # 15.0

    div-double v13, v21, v23

    .line 767
    .local v13, "t":D
    return-wide v13

    .line 754
    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method static kepler(DD)D
    .locals 11
    .param p0, "M"    # D
    .param p2, "e"    # D

    .prologue
    .line 946
    move-wide v0, p0

    .line 948
    .local v0, "E":D
    const/4 v2, 0x0

    .line 950
    .local v2, "iterations":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, p2

    sub-double v7, v0, v7

    sub-double v5, v7, p0

    .line 951
    .local v5, "\u03b4":D
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_0

    .line 959
    return-wide v0

    .line 953
    :cond_0
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0xa

    if-le v2, v7, :cond_1

    .line 954
    new-instance v7, Lorg/hermit/astro/CalcError;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Too many iterations in kepler, e="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/hermit/astro/CalcError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 955
    :cond_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, p2

    sub-double/2addr v7, v9

    div-double v3, v5, v7

    .line 956
    .local v3, "\u0394E":D
    sub-double/2addr v0, v3

    .line 949
    goto :goto_0
.end method

.method static final mod360(D)D
    .locals 4
    .param p0, "v"    # D

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 1028
    rem-double/2addr p0, v2

    .line 1029
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    add-double v0, p0, v2

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p0

    goto :goto_0
.end method

.method static final modPi(D)D
    .locals 4
    .param p0, "v"    # D

    .prologue
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 1002
    rem-double/2addr p0, v2

    .line 1003
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    add-double v0, p0, v2

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p0

    goto :goto_0
.end method

.method static final modTwoPi(D)D
    .locals 4
    .param p0, "v"    # D

    .prologue
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 1015
    rem-double/2addr p0, v2

    .line 1016
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    add-double v0, p0, v2

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p0

    goto :goto_0
.end method

.method private refineRiseSet(DDDDD[D[DD)D
    .locals 27
    .param p1, "h_o"    # D
    .param p3, "\u03980"    # D
    .param p5, "\u03c6"    # D
    .param p7, "L"    # D
    .param p9, "\u0394T"    # D
    .param p11, "\u03b1n"    # [D
    .param p12, "\u03b4n"    # [D
    .param p13, "m"    # D

    .prologue
    .line 722
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object v6, v0

    fill-array-data v6, :array_0

    .line 724
    .local v6, "args":[D
    const-wide v21, 0x40193398f014e7b1L    # 6.300388098979895

    mul-double v21, v21, p13

    add-double v21, v21, p3

    invoke-static/range {v21 .. v22}, Lorg/hermit/astro/Body;->modTwoPi(D)D

    move-result-wide v15

    .line 725
    .local v15, "\u03980_now":D
    const-wide v21, 0x40f5180000000000L    # 86400.0

    div-double v21, p9, v21

    add-double v9, p13, v21

    .line 729
    .local v9, "n":D
    move-object v0, v6

    move-object/from16 v1, p11

    move-wide v2, v9

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/astro/Util;->interpolate([D[DD)D

    move-result-wide v17

    .line 730
    .local v17, "\u03b1":D
    add-double v21, v15, p7

    sub-double v4, v21, v17

    .line 734
    .local v4, "H":D
    if-eqz p12, :cond_0

    .line 735
    move-object v0, v6

    move-object/from16 v1, p12

    move-wide v2, v9

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/astro/Util;->interpolate([D[DD)D

    move-result-wide v19

    .line 736
    .local v19, "\u03b4":D
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v11, v21, v23

    .line 737
    .local v11, "sinh":D
    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    .line 738
    .local v7, "h":D
    sub-double v21, v7, p1

    const-wide v23, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    div-double v13, v21, v23

    .line 742
    .end local v7    # "h":D
    .end local v11    # "sinh":D
    .end local v19    # "\u03b4":D
    .local v13, "\u0394m":D
    :goto_0
    add-double v21, p13, v13

    return-wide v21

    .line 740
    .end local v13    # "\u0394m":D
    :cond_0
    move-wide v0, v4

    neg-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x401921fb54442d18L    # 6.283185307179586

    div-double v13, v21, v23

    .restart local v13    # "\u0394m":D
    goto :goto_0

    .line 722
    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method static final secsToRads(D)D
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 1040
    const-wide v0, 0x40ac200000000000L    # 3600.0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method calcAltAzimuth()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 552
    sget-object v26, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v18

    .line 553
    .local v18, "\u03b4":D
    sget-object v26, Lorg/hermit/astro/Body$Field;->LOCAL_HOUR_ANGLE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v9

    .line 554
    .local v9, "H":D
    sget-object v26, Lorg/hermit/astro/Body$Field;->HORIZ_PARALLAX:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v20

    .line 556
    .local v20, "\u03c0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/hermit/astro/Observation;->getObserverPosition()Lorg/hermit/geo/Position;

    move-result-object v15

    .line 557
    .local v15, "pos":Lorg/hermit/geo/Position;
    invoke-virtual {v15}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v24

    .line 559
    .local v24, "\u03c6":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 560
    .local v7, "Ay":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->tan(D)D

    move-result-wide v28

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v5, v26, v28

    .line 561
    .local v5, "Ax":D
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 564
    .local v3, "A":D
    const-wide v26, 0x400921fb54442d18L    # Math.PI

    add-double v26, v26, v3

    const-wide v28, 0x401921fb54442d18L    # 6.283185307179586

    rem-double v3, v26, v28

    .line 567
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v16, v26, v28

    .line 568
    .local v16, "sinh":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    .line 572
    .local v11, "h":D
    invoke-virtual {v15}, Lorg/hermit/geo/Position;->getCentreDistance()D

    move-result-wide v22

    .line 573
    .local v22, "\u03c1":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v22

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    .line 575
    .local v13, "p":D
    sget-object v26, Lorg/hermit/astro/Body$Field;->LOCAL_AZIMUTH:Lorg/hermit/astro/Body$Field;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 576
    sget-object v26, Lorg/hermit/astro/Body$Field;->LOCAL_ALTITUDE:Lorg/hermit/astro/Body$Field;

    sub-double v27, v11, v13

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 577
    return-void
.end method

.method calcApparentSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v4, p0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    sget-object v5, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    if-ne v4, v5, :cond_0

    .line 598
    new-instance v4, Lorg/hermit/astro/AstroError;

    const-string v5, "Cannot calculate the apparent size of the Earth"

    invoke-direct {v4, v5}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 599
    :cond_0
    iget-object v4, p0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    sget-object v5, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    if-ne v4, v5, :cond_1

    .line 600
    new-instance v4, Lorg/hermit/astro/CalcError;

    const-string v5, "calcApparentSize must be overridden for the Moon"

    invoke-direct {v4, v5}, Lorg/hermit/astro/CalcError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 602
    :cond_1
    sget-object v4, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    invoke-virtual {p0, v4}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v0

    .line 605
    .local v0, "\u0394":D
    iget-object v4, p0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    iget-wide v4, v4, Lorg/hermit/astro/Body$Name;->θ_o:D

    div-double v2, v4, v0

    .line 607
    .local v2, "\u03b8":D
    sget-object v4, Lorg/hermit/astro/Body$Field;->APPARENT_DIAMETER:Lorg/hermit/astro/Body$Field;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 608
    return-void
.end method

.method calcBrightLimb()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v24, v0

    sget-object v25, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v24, v0

    sget-object v25, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 835
    :cond_0
    new-instance v24, Lorg/hermit/astro/AstroError;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Cannot calculate rise/set for the "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/hermit/astro/Body$Name;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 835
    invoke-direct/range {v24 .. v25}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v24

    .line 838
    :cond_1
    sget-object v24, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v16

    .line 839
    .local v16, "\u03b1":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v20

    .line 840
    .local v20, "\u03b4":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->PARALLACTIC:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v5

    .line 843
    .local v5, "q":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/hermit/astro/Observation;->getSun()Lorg/hermit/astro/Sun;

    move-result-object v7

    .line 844
    .local v7, "sun":Lorg/hermit/astro/Sun;
    sget-object v24, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Sun;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v18

    .line 845
    .local v18, "\u03b1o":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Sun;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v22

    .line 848
    .local v22, "\u03b4o":D
    sub-double v12, v18, v16

    .line 849
    .local v12, "\u0394\u03b1":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v10, v24, v26

    .line 850
    .local v10, "y":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v8, v24, v26

    .line 851
    .local v8, "x":D
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lorg/hermit/astro/Body;->modTwoPi(D)D

    move-result-wide v14

    .line 854
    .local v14, "\u03a7":D
    sub-double v24, v14, v5

    invoke-static/range {v24 .. v25}, Lorg/hermit/astro/Body;->modTwoPi(D)D

    move-result-wide v3

    .line 856
    .local v3, "obs":D
    sget-object v24, Lorg/hermit/astro/Body$Field;->ABS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 857
    sget-object v24, Lorg/hermit/astro/Body$Field;->OBS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 858
    return-void
.end method

.method abstract calcEcPosition()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation
.end method

.method calcEqPosition()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    sget-object v10, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    if-ne v0, v10, :cond_0

    .line 447
    new-instance v0, Lorg/hermit/astro/AstroError;

    const-string v10, "Cannot calculate RA and Dec of the Earth"

    invoke-direct {v0, v10}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    sget-object v0, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    invoke-virtual {p0, v0}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v1

    .line 450
    .local v1, "\u03bb":D
    sget-object v0, Lorg/hermit/astro/Body$Field;->EC_LATITUDE:Lorg/hermit/astro/Body$Field;

    invoke-virtual {p0, v0}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v3

    .line 454
    .local v3, "\u03b2":D
    const/4 v0, 0x2

    new-array v5, v0, [D

    .line 455
    .local v5, "pos":[D
    iget-object v0, p0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    invoke-virtual/range {v0 .. v5}, Lorg/hermit/astro/Observation;->eclipticToApparentEquatorial(DD[D)V

    .line 456
    const/4 v0, 0x0

    aget-wide v6, v5, v0

    .line 457
    .local v6, "\u03b1":D
    const/4 v0, 0x1

    aget-wide v8, v5, v0

    .line 459
    .local v8, "\u03b4":D
    sget-object v0, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {p0, v0, v10}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 460
    sget-object v0, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {p0, v0, v10}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 461
    return-void
.end method

.method abstract calcHePosition()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation
.end method

.method calcHourAngle()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 523
    sget-object v10, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    invoke-virtual {p0, v10}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v4

    .line 524
    .local v4, "\u03b1":D
    iget-object v10, p0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    sget-object v11, Lorg/hermit/astro/Observation$OField;->GAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {v10, v11}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v6

    .line 525
    .local v6, "\u03b8o":D
    iget-object v10, p0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    invoke-virtual {v10}, Lorg/hermit/astro/Observation;->getObserverPosition()Lorg/hermit/geo/Position;

    move-result-object v10

    invoke-virtual {v10}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v2

    .line 528
    .local v2, "L":D
    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 532
    .local v8, "\u03b8or":D
    add-double v10, v8, v2

    sub-double/2addr v10, v4

    invoke-static {v10, v11}, Lorg/hermit/astro/Body;->modTwoPi(D)D

    move-result-wide v0

    .line 533
    .local v0, "H":D
    sget-object v10, Lorg/hermit/astro/Body$Field;->LOCAL_HOUR_ANGLE:Lorg/hermit/astro/Body$Field;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 534
    return-void
.end method

.method calcMagnitude()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v16, v0

    sget-object v17, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 875
    new-instance v16, Lorg/hermit/astro/AstroError;

    const-string v17, "Cannot calculate the magnitude of the Earth"

    invoke-direct/range {v16 .. v17}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v16

    .line 877
    :cond_0
    sget-object v16, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v14

    .line 878
    .local v14, "\u0394":D
    sget-object v16, Lorg/hermit/astro/Body$Field;->PHASE_ANGLE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v4

    .line 881
    .local v4, "i":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    .line 882
    mul-double v6, v4, v4

    .line 883
    .local v6, "i2":D
    mul-double v8, v6, v4

    .line 888
    .local v8, "i3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v16, v0

    sget-object v17, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 889
    const-wide/16 v12, 0x0

    .line 897
    .local v12, "r":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/hermit/astro/Body$Name;->V_o:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v18, v12, v18

    if-nez v18, :cond_3

    const-wide/16 v18, 0x0

    :goto_1
    add-double v10, v16, v18

    .line 898
    .local v10, "mag":D
    invoke-static {}, Lorg/hermit/astro/Body;->$SWITCH_TABLE$org$hermit$astro$Body$Name()[I

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 924
    :goto_2
    :pswitch_0
    sget-object v16, Lorg/hermit/astro/Body$Field;->MAGNITUDE:Lorg/hermit/astro/Body$Field;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 925
    return-void

    .line 890
    .end local v10    # "mag":D
    .end local v12    # "r":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v16, v0

    sget-object v17, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v16, v0

    sget-object v17, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    invoke-virtual/range {v16 .. v17}, Lorg/hermit/astro/Observation;->getPlanet(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Planet;

    move-result-object v3

    .line 892
    .local v3, "earth":Lorg/hermit/astro/Planet;
    sget-object v16, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Planet;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v12

    .restart local v12    # "r":D
    goto :goto_0

    .line 894
    .end local v3    # "earth":Lorg/hermit/astro/Planet;
    .end local v12    # "r":D
    :cond_2
    sget-object v16, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v12

    .restart local v12    # "r":D
    goto :goto_0

    .line 897
    :cond_3
    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    mul-double v20, v12, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log10(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    goto :goto_1

    .line 902
    .restart local v10    # "mag":D
    :pswitch_1
    const-wide v16, 0x3fa374bc6a7ef9dbL    # 0.038

    mul-double v16, v16, v4

    const-wide v18, 0x3f31e42e12620254L    # 2.73E-4

    mul-double v18, v18, v6

    sub-double v16, v16, v18

    const-wide v18, 0x3ec0c6f7a0b5ed8dL    # 2.0E-6

    mul-double v18, v18, v8

    add-double v16, v16, v18

    add-double v10, v10, v16

    .line 903
    goto :goto_2

    .line 905
    :pswitch_2
    const-wide v16, 0x3f4d7dbf487fcb92L    # 9.0E-4

    mul-double v16, v16, v4

    const-wide v18, 0x3f2f53825e13b18eL    # 2.39E-4

    mul-double v18, v18, v6

    add-double v16, v16, v18

    const-wide v18, 0x3ea5cf751db94e6bL    # 6.5E-7

    mul-double v18, v18, v8

    sub-double v16, v16, v18

    add-double v10, v10, v16

    .line 906
    goto/16 :goto_2

    .line 908
    :pswitch_3
    const-wide v16, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v16, v16, v4

    add-double v10, v10, v16

    .line 909
    goto/16 :goto_2

    .line 911
    :pswitch_4
    const-wide v16, 0x3f747ae147ae147bL    # 0.005

    mul-double v16, v16, v4

    add-double v10, v10, v16

    .line 912
    goto/16 :goto_2

    .line 915
    :pswitch_5
    const-wide v16, 0x3fa6872b020c49baL    # 0.044

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    .line 916
    goto/16 :goto_2

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method calcParallactic()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 805
    sget-object v16, Lorg/hermit/astro/Body$Field;->LOCAL_HOUR_ANGLE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v3

    .line 806
    .local v3, "H":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/hermit/astro/Observation;->getObserverPosition()Lorg/hermit/geo/Position;

    move-result-object v5

    .line 807
    .local v5, "pos":Lorg/hermit/geo/Position;
    invoke-virtual {v5}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v14

    .line 808
    .local v14, "\u03c6":D
    sget-object v16, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v12

    .line 810
    .local v12, "\u03b4":D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 811
    .local v10, "y":D
    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v8, v16, v18

    .line 812
    .local v8, "x":D
    const-wide/16 v16, 0x0

    cmpl-double v16, v8, v16

    if-nez v16, :cond_0

    const-wide/16 v16, 0x0

    move-wide/from16 v6, v16

    .line 814
    .local v6, "q":D
    :goto_0
    sget-object v16, Lorg/hermit/astro/Body$Field;->PARALLACTIC:Lorg/hermit/astro/Body$Field;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 815
    return-void

    .line 812
    .end local v6    # "q":D
    :cond_0
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    move-wide/from16 v6, v16

    goto :goto_0
.end method

.method calcParallax()V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object/from16 v31, v0

    sget-object v32, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 480
    new-instance v31, Lorg/hermit/astro/AstroError;

    const-string v32, "Cannot calculate topocentric position of the Earth"

    invoke-direct/range {v31 .. v32}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v31

    .line 482
    :cond_0
    sget-object v31, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v17

    .line 483
    .local v17, "\u03b1":D
    sget-object v31, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v21

    .line 484
    .local v21, "\u03b4":D
    sget-object v31, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v13

    .line 485
    .local v13, "\u0394":D
    sget-object v31, Lorg/hermit/astro/Body$Field;->LOCAL_HOUR_ANGLE:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v3

    .line 487
    .local v3, "H":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v31, v0

    sget-object v32, Lorg/hermit/astro/Observation$OField;->RHO_SIN_PHI1:Lorg/hermit/astro/Observation$OField;

    invoke-virtual/range {v31 .. v32}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v29

    .line 488
    .local v29, "\u03c1sin\u03c61":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object/from16 v31, v0

    sget-object v32, Lorg/hermit/astro/Observation$OField;->RHO_COS_PHI1:Lorg/hermit/astro/Observation$OField;

    invoke-virtual/range {v31 .. v32}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v27

    .line 491
    .local v27, "\u03c1cos\u03c61":D
    const-wide v31, 0x3f065a4e43f4904fL    # 4.26345E-5

    div-double v5, v31, v13

    .line 492
    .local v5, "sin\u03c0":D
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v25

    .line 495
    .local v25, "\u03c0":D
    move-wide/from16 v0, v27

    neg-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    mul-double v9, v31, v33

    .line 496
    .local v9, "y1":D
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    mul-double v33, v27, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v33, v33, v35

    sub-double v7, v31, v33

    .line 497
    .local v7, "x":D
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    .line 498
    .local v15, "\u0394\u03b1":D
    add-double v19, v17, v15

    .line 501
    .local v19, "\u03b11":D
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    mul-double v33, v29, v5

    sub-double v31, v31, v33

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    mul-double v11, v31, v33

    .line 502
    .local v11, "y2":D
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v23

    .line 504
    .local v23, "\u03b41":D
    sget-object v31, Lorg/hermit/astro/Body$Field;->HORIZ_PARALLAX:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 505
    sget-object v31, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_TOPO:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 506
    sget-object v31, Lorg/hermit/astro/Body$Field;->DECLINATION_TOPO:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 507
    return-void
.end method

.method abstract calcPhase()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation
.end method

.method calcRiseSet()V
    .locals 93
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object v3, v0

    sget-object v4, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    if-ne v3, v4, :cond_0

    .line 631
    new-instance v3, Lorg/hermit/astro/AstroError;

    const-string v4, "Cannot calculate rise/set for the Earth"

    invoke-direct {v3, v4}, Lorg/hermit/astro/AstroError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 638
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object v3, v0

    sget-object v4, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    if-ne v3, v4, :cond_7

    .line 639
    sget-object v3, Lorg/hermit/astro/Body$Field;->HORIZ_PARALLAX:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v91

    .line 640
    .local v91, "\u03c0":D
    const-wide v18, 0x3fe747ae147ae148L    # 0.7275

    mul-double v18, v18, v91

    sget-wide v20, Lorg/hermit/astro/Body;->REFRACTION:D

    sub-double v4, v18, v20

    .line 646
    .end local v91    # "\u03c0":D
    .local v4, "h_o":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/hermit/astro/Observation;->getObserverPosition()Lorg/hermit/geo/Position;

    move-result-object v75

    .line 647
    .local v75, "pos":Lorg/hermit/geo/Position;
    invoke-virtual/range {v75 .. v75}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v8

    .line 648
    .local v8, "\u03c6":D
    invoke-virtual/range {v75 .. v75}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v10

    .line 652
    .local v10, "L":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object v3, v0

    sget-object v6, Lorg/hermit/astro/Observation$OField;->GAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {v3, v6}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v18

    const-wide/high16 v20, 0x402e000000000000L    # 15.0

    mul-double v6, v18, v20

    .line 653
    .local v6, "\u03980":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->observation:Lorg/hermit/astro/Observation;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/hermit/astro/Observation;->getTime()Lorg/hermit/astro/Instant;

    move-result-object v78

    .line 659
    .local v78, "when":Lorg/hermit/astro/Instant;
    invoke-virtual/range {v78 .. v78}, Lorg/hermit/astro/Instant;->getΔT()D

    move-result-wide v12

    .line 660
    .local v12, "\u0394T":D
    invoke-virtual/range {v78 .. v78}, Lorg/hermit/astro/Instant;->getTd()D

    move-result-wide v18

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v70, v18, v20

    .line 662
    .local v70, "jday":D
    new-instance v72, Lorg/hermit/astro/Observation;

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v70, v18

    invoke-static/range {v18 .. v19}, Lorg/hermit/astro/Instant;->fromTd(D)Lorg/hermit/astro/Instant;

    move-result-object v3

    move-object/from16 v0, v72

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/hermit/astro/Observation;-><init>(Lorg/hermit/astro/Instant;)V

    .line 663
    .local v72, "o1":Lorg/hermit/astro/Observation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object v3, v0

    move-object/from16 v0, v72

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->getBody(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Body;

    move-result-object v65

    .line 664
    .local v65, "b1":Lorg/hermit/astro/Body;
    new-instance v73, Lorg/hermit/astro/Observation;

    invoke-static/range {v70 .. v71}, Lorg/hermit/astro/Instant;->fromTd(D)Lorg/hermit/astro/Instant;

    move-result-object v3

    move-object/from16 v0, v73

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/hermit/astro/Observation;-><init>(Lorg/hermit/astro/Instant;)V

    .line 665
    .local v73, "o2":Lorg/hermit/astro/Observation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object v3, v0

    move-object/from16 v0, v73

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->getBody(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Body;

    move-result-object v66

    .line 666
    .local v66, "b2":Lorg/hermit/astro/Body;
    new-instance v74, Lorg/hermit/astro/Observation;

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v70

    invoke-static/range {v18 .. v19}, Lorg/hermit/astro/Instant;->fromTd(D)Lorg/hermit/astro/Instant;

    move-result-object v3

    move-object/from16 v0, v74

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/hermit/astro/Observation;-><init>(Lorg/hermit/astro/Instant;)V

    .line 667
    .local v74, "o3":Lorg/hermit/astro/Observation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object v3, v0

    move-object/from16 v0, v74

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->getBody(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Body;

    move-result-object v67

    .line 670
    .local v67, "b3":Lorg/hermit/astro/Body;
    sget-object v3, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v65

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v79

    .line 671
    .local v79, "\u03b11":D
    sget-object v3, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v65

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v85

    .line 672
    .local v85, "\u03b41":D
    sget-object v3, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v66

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v81

    .line 673
    .local v81, "\u03b12":D
    sget-object v3, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v66

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v87

    .line 674
    .local v87, "\u03b42":D
    sget-object v3, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v67

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v83

    .line 675
    .local v83, "\u03b13":D
    sget-object v3, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    move-object/from16 v0, v67

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Body;->get(Lorg/hermit/astro/Body$Field;)D

    move-result-wide v89

    .line 676
    .local v89, "\u03b43":D
    const/4 v3, 0x3

    new-array v14, v3, [D

    const/4 v3, 0x0

    aput-wide v79, v14, v3

    const/4 v3, 0x1

    aput-wide v81, v14, v3

    const/4 v3, 0x2

    aput-wide v83, v14, v3

    .line 677
    .local v14, "\u03b1n":[D
    const/4 v3, 0x3

    move v0, v3

    new-array v0, v0, [D

    move-object/from16 v30, v0

    const/4 v3, 0x0

    aput-wide v85, v30, v3

    const/4 v3, 0x1

    aput-wide v87, v30, v3

    const/4 v3, 0x2

    aput-wide v89, v30, v3

    .line 680
    .local v30, "\u03b4n":[D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static/range {v87 .. v88}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static/range {v87 .. v88}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    div-double v68, v18, v20

    .line 681
    .local v68, "cosH0":D
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    cmpg-double v3, v68, v18

    if-ltz v3, :cond_1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v68, v18

    if-lez v3, :cond_1

    .line 683
    :cond_1
    invoke-static/range {v68 .. v69}, Ljava/lang/Math;->acos(D)D

    move-result-wide v18

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    rem-double v63, v18, v20

    .line 684
    .local v63, "H0":D
    const-wide/16 v18, 0x0

    cmpg-double v3, v63, v18

    if-gez v3, :cond_2

    .line 685
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    add-double v63, v63, v18

    .line 689
    :cond_2
    sub-double v18, v81, v10

    sub-double v18, v18, v6

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    div-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    rem-double v16, v18, v20

    .line 690
    .local v16, "transit":D
    const-wide/16 v18, 0x0

    cmpg-double v3, v16, v18

    if-gez v3, :cond_3

    .line 691
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v18

    .line 692
    :cond_3
    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    div-double v18, v63, v18

    sub-double v18, v16, v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    rem-double v31, v18, v20

    .line 693
    .local v31, "rise":D
    const-wide/16 v18, 0x0

    cmpg-double v3, v31, v18

    if-gez v3, :cond_4

    .line 694
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v31, v31, v18

    .line 695
    :cond_4
    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    div-double v18, v63, v18

    add-double v18, v18, v16

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    rem-double v46, v18, v20

    .line 696
    .local v46, "set":D
    const-wide/16 v18, 0x0

    cmpg-double v3, v46, v18

    if-gez v3, :cond_5

    .line 697
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v46, v46, v18

    .line 700
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lorg/hermit/astro/Body;->refineRiseSet(DDDDD[D[DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    mul-double v16, v18, v20

    move-object/from16 v18, p0

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-wide/from16 v27, v12

    move-object/from16 v29, v14

    .line 701
    invoke-direct/range {v18 .. v32}, Lorg/hermit/astro/Body;->refineRiseSet(DDDDD[D[DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    mul-double v31, v18, v20

    move-object/from16 v33, p0

    move-wide/from16 v34, v4

    move-wide/from16 v36, v6

    move-wide/from16 v38, v8

    move-wide/from16 v40, v10

    move-wide/from16 v42, v12

    move-object/from16 v44, v14

    move-object/from16 v45, v30

    .line 702
    invoke-direct/range {v33 .. v47}, Lorg/hermit/astro/Body;->refineRiseSet(DDDDD[D[DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    mul-double v46, v18, v20

    .line 704
    sget-object v3, Lorg/hermit/astro/Body$Field;->RISE_TIME:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .end local v4    # "h_o":D
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 705
    sget-object v3, Lorg/hermit/astro/Body$Field;->TRANSIT_TIME:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 706
    sget-object v3, Lorg/hermit/astro/Body$Field;->SET_TIME:Lorg/hermit/astro/Body$Field;

    invoke-static/range {v46 .. v47}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object v3, v0

    sget-object v4, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    if-ne v3, v4, :cond_6

    .line 712
    const-wide/high16 v18, 0x4038000000000000L    # 24.0

    div-double v59, v46, v18

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    sget-wide v20, Lorg/hermit/astro/Body;->TWILIGHT:D

    add-double v61, v18, v20

    move-object/from16 v48, p0

    move-wide/from16 v49, v6

    move-wide/from16 v51, v8

    move-wide/from16 v53, v10

    move-wide/from16 v55, v12

    move-object/from16 v57, v14

    move-object/from16 v58, v30

    .line 711
    invoke-direct/range {v48 .. v62}, Lorg/hermit/astro/Body;->calculateTwilight(DDDD[D[DDD)D

    move-result-wide v76

    .line 713
    .local v76, "t":D
    sget-object v3, Lorg/hermit/astro/Body$Field;->RISE_TWILIGHT:Lorg/hermit/astro/Body$Field;

    sub-double v18, v31, v76

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 714
    sget-object v3, Lorg/hermit/astro/Body$Field;->SET_TWILIGHT:Lorg/hermit/astro/Body$Field;

    add-double v18, v46, v76

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Body;->put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V

    .line 716
    .end local v76    # "t":D
    :cond_6
    return-void

    .line 642
    .end local v6    # "\u03980":D
    .end local v8    # "\u03c6":D
    .end local v10    # "L":D
    .end local v12    # "\u0394T":D
    .end local v14    # "\u03b1n":[D
    .end local v16    # "transit":D
    .end local v30    # "\u03b4n":[D
    .end local v31    # "rise":D
    .end local v46    # "set":D
    .end local v63    # "H0":D
    .end local v65    # "b1":Lorg/hermit/astro/Body;
    .end local v66    # "b2":Lorg/hermit/astro/Body;
    .end local v67    # "b3":Lorg/hermit/astro/Body;
    .end local v68    # "cosH0":D
    .end local v70    # "jday":D
    .end local v72    # "o1":Lorg/hermit/astro/Observation;
    .end local v73    # "o2":Lorg/hermit/astro/Observation;
    .end local v74    # "o3":Lorg/hermit/astro/Observation;
    .end local v75    # "pos":Lorg/hermit/geo/Position;
    .end local v78    # "when":Lorg/hermit/astro/Instant;
    .end local v79    # "\u03b11":D
    .end local v81    # "\u03b12":D
    .end local v83    # "\u03b13":D
    .end local v85    # "\u03b41":D
    .end local v87    # "\u03b42":D
    .end local v89    # "\u03b43":D
    :cond_7
    sget-wide v18, Lorg/hermit/astro/Body;->REFRACTION:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    move-object v3, v0

    move-object v0, v3

    iget-wide v0, v0, Lorg/hermit/astro/Body$Name;->θ_o:D

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide v4, v0

    .restart local v4    # "h_o":D
    goto/16 :goto_0
.end method

.method public get(Lorg/hermit/astro/Body$Field;)D
    .locals 4
    .param p1, "key"    # Lorg/hermit/astro/Body$Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lorg/hermit/astro/Body;->dataCache:[Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/hermit/astro/Body$Field;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 384
    invoke-static {p1, p0}, Lorg/hermit/astro/Body$Field;->access$3(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body;)V

    .line 387
    :cond_0
    iget-object v1, p0, Lorg/hermit/astro/Body;->dataCache:[Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/hermit/astro/Body$Field;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    .line 388
    .local v0, "val":Ljava/lang/Double;
    if-nez v0, :cond_1

    .line 389
    new-instance v1, Lorg/hermit/astro/CalcError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calculator for field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/hermit/astro/CalcError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getId()Lorg/hermit/astro/Body$Name;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/hermit/astro/Body;->whichBody:Lorg/hermit/astro/Body$Name;

    iget-object v0, v0, Lorg/hermit/astro/Body$Name;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected invalidate()V
    .locals 3

    .prologue
    .line 1063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lorg/hermit/astro/Body;->NUM_FIELDS:I

    if-lt v0, v1, :cond_0

    .line 1065
    return-void

    .line 1064
    :cond_0
    iget-object v1, p0, Lorg/hermit/astro/Body;->dataCache:[Ljava/lang/Double;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected put(Lorg/hermit/astro/Body$Field;Ljava/lang/Double;)V
    .locals 2
    .param p1, "key"    # Lorg/hermit/astro/Body$Field;
    .param p2, "val"    # Ljava/lang/Double;

    .prologue
    .line 1055
    iget-object v0, p0, Lorg/hermit/astro/Body;->dataCache:[Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/hermit/astro/Body$Field;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 1056
    return-void
.end method
