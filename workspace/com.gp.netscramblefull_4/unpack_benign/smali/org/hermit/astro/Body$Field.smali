.class public final enum Lorg/hermit/astro/Body$Field;
.super Ljava/lang/Enum;
.source "Body.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/astro/Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/astro/Body$Field;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

.field public static final enum APPARENT_DIAMETER:Lorg/hermit/astro/Body$Field;

.field public static final enum DECLINATION_AP:Lorg/hermit/astro/Body$Field;

.field public static final enum DECLINATION_TOPO:Lorg/hermit/astro/Body$Field;

.field public static final enum EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

.field public static final enum EC_LATITUDE:Lorg/hermit/astro/Body$Field;

.field public static final enum EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

.field private static final synthetic ENUM$VALUES:[Lorg/hermit/astro/Body$Field;

.field public static final enum HE_LATITUDE:Lorg/hermit/astro/Body$Field;

.field public static final enum HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

.field public static final enum HE_RADIUS:Lorg/hermit/astro/Body$Field;

.field public static final enum HORIZ_PARALLAX:Lorg/hermit/astro/Body$Field;

.field public static final enum LOCAL_ALTITUDE:Lorg/hermit/astro/Body$Field;

.field public static final enum LOCAL_AZIMUTH:Lorg/hermit/astro/Body$Field;

.field public static final enum LOCAL_HOUR_ANGLE:Lorg/hermit/astro/Body$Field;

.field public static final enum MAGNITUDE:Lorg/hermit/astro/Body$Field;

.field public static final enum OBS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

.field public static final enum PARALLACTIC:Lorg/hermit/astro/Body$Field;

.field public static final enum PHASE:Lorg/hermit/astro/Body$Field;

.field public static final enum PHASE_ANGLE:Lorg/hermit/astro/Body$Field;

.field public static final enum RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

.field public static final enum RIGHT_ASCENSION_TOPO:Lorg/hermit/astro/Body$Field;

.field public static final enum RISE_TIME:Lorg/hermit/astro/Body$Field;

.field public static final enum RISE_TWILIGHT:Lorg/hermit/astro/Body$Field;

.field public static final enum SET_TIME:Lorg/hermit/astro/Body$Field;

.field public static final enum SET_TWILIGHT:Lorg/hermit/astro/Body$Field;

.field public static final enum TRANSIT_TIME:Lorg/hermit/astro/Body$Field;


# instance fields
.field private calculator:Lorg/hermit/astro/Body$Calc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "HE_LATITUDE"

    invoke-direct {v0, v1, v3}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->HE_LATITUDE:Lorg/hermit/astro/Body$Field;

    .line 194
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "HE_LONGITUDE"

    invoke-direct {v0, v1, v4}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

    .line 197
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "HE_RADIUS"

    invoke-direct {v0, v1, v5}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    .line 200
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "EC_LONGITUDE"

    invoke-direct {v0, v1, v6}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    .line 203
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "EC_LATITUDE"

    invoke-direct {v0, v1, v7}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->EC_LATITUDE:Lorg/hermit/astro/Body$Field;

    .line 206
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "RIGHT_ASCENSION_AP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    .line 209
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "DECLINATION_AP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    .line 214
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "HORIZ_PARALLAX"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->HORIZ_PARALLAX:Lorg/hermit/astro/Body$Field;

    .line 220
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "RIGHT_ASCENSION_TOPO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_TOPO:Lorg/hermit/astro/Body$Field;

    .line 226
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "DECLINATION_TOPO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->DECLINATION_TOPO:Lorg/hermit/astro/Body$Field;

    .line 231
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "LOCAL_AZIMUTH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->LOCAL_AZIMUTH:Lorg/hermit/astro/Body$Field;

    .line 236
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "LOCAL_ALTITUDE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->LOCAL_ALTITUDE:Lorg/hermit/astro/Body$Field;

    .line 239
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "LOCAL_HOUR_ANGLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->LOCAL_HOUR_ANGLE:Lorg/hermit/astro/Body$Field;

    .line 242
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "EARTH_DISTANCE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    .line 248
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "APPARENT_DIAMETER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->APPARENT_DIAMETER:Lorg/hermit/astro/Body$Field;

    .line 253
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "RISE_TWILIGHT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->RISE_TWILIGHT:Lorg/hermit/astro/Body$Field;

    .line 258
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "RISE_TIME"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->RISE_TIME:Lorg/hermit/astro/Body$Field;

    .line 263
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "TRANSIT_TIME"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->TRANSIT_TIME:Lorg/hermit/astro/Body$Field;

    .line 268
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "SET_TIME"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->SET_TIME:Lorg/hermit/astro/Body$Field;

    .line 273
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "SET_TWILIGHT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->SET_TWILIGHT:Lorg/hermit/astro/Body$Field;

    .line 278
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "PHASE_ANGLE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->PHASE_ANGLE:Lorg/hermit/astro/Body$Field;

    .line 284
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "PHASE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->PHASE:Lorg/hermit/astro/Body$Field;

    .line 289
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "PARALLACTIC"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->PARALLACTIC:Lorg/hermit/astro/Body$Field;

    .line 294
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "ABS_BRIGHT_LIMB"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->ABS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

    .line 300
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "OBS_BRIGHT_LIMB"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->OBS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

    .line 305
    new-instance v0, Lorg/hermit/astro/Body$Field;

    const-string v1, "MAGNITUDE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Body$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Body$Field;->MAGNITUDE:Lorg/hermit/astro/Body$Field;

    .line 189
    const/16 v0, 0x1a

    new-array v0, v0, [Lorg/hermit/astro/Body$Field;

    sget-object v1, Lorg/hermit/astro/Body$Field;->HE_LATITUDE:Lorg/hermit/astro/Body$Field;

    aput-object v1, v0, v3

    sget-object v1, Lorg/hermit/astro/Body$Field;->HE_LONGITUDE:Lorg/hermit/astro/Body$Field;

    aput-object v1, v0, v4

    sget-object v1, Lorg/hermit/astro/Body$Field;->HE_RADIUS:Lorg/hermit/astro/Body$Field;

    aput-object v1, v0, v5

    sget-object v1, Lorg/hermit/astro/Body$Field;->EC_LONGITUDE:Lorg/hermit/astro/Body$Field;

    aput-object v1, v0, v6

    sget-object v1, Lorg/hermit/astro/Body$Field;->EC_LATITUDE:Lorg/hermit/astro/Body$Field;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_AP:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/hermit/astro/Body$Field;->DECLINATION_AP:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/hermit/astro/Body$Field;->HORIZ_PARALLAX:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/hermit/astro/Body$Field;->RIGHT_ASCENSION_TOPO:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/hermit/astro/Body$Field;->DECLINATION_TOPO:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/hermit/astro/Body$Field;->LOCAL_AZIMUTH:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/hermit/astro/Body$Field;->LOCAL_ALTITUDE:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/hermit/astro/Body$Field;->LOCAL_HOUR_ANGLE:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/hermit/astro/Body$Field;->EARTH_DISTANCE:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/hermit/astro/Body$Field;->APPARENT_DIAMETER:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/hermit/astro/Body$Field;->RISE_TWILIGHT:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/hermit/astro/Body$Field;->RISE_TIME:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/hermit/astro/Body$Field;->TRANSIT_TIME:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/hermit/astro/Body$Field;->SET_TIME:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/hermit/astro/Body$Field;->SET_TWILIGHT:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/hermit/astro/Body$Field;->PHASE_ANGLE:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/hermit/astro/Body$Field;->PHASE:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/hermit/astro/Body$Field;->PARALLACTIC:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/hermit/astro/Body$Field;->ABS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/hermit/astro/Body$Field;->OBS_BRIGHT_LIMB:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/hermit/astro/Body$Field;->MAGNITUDE:Lorg/hermit/astro/Body$Field;

    aput-object v2, v0, v1

    sput-object v0, Lorg/hermit/astro/Body$Field;->ENUM$VALUES:[Lorg/hermit/astro/Body$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/astro/Body$Field;->calculator:Lorg/hermit/astro/Body$Calc;

    .line 189
    return-void
.end method

.method static synthetic access$2(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V
    .locals 0

    .prologue
    .line 307
    invoke-static {p0, p1}, Lorg/hermit/astro/Body$Field;->register(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V

    return-void
.end method

.method static synthetic access$3(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lorg/hermit/astro/Body$Field;->calculate(Lorg/hermit/astro/Body;)V

    return-void
.end method

.method private calculate(Lorg/hermit/astro/Body;)V
    .locals 3
    .param p1, "b"    # Lorg/hermit/astro/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lorg/hermit/astro/Body$Field;->calculator:Lorg/hermit/astro/Body$Calc;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no calculator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/hermit/astro/Body$Field;->calculator:Lorg/hermit/astro/Body$Calc;

    invoke-virtual {v0, p1}, Lorg/hermit/astro/Body$Calc;->c(Lorg/hermit/astro/Body;)V

    .line 318
    return-void
.end method

.method private static register(Lorg/hermit/astro/Body$Field;Lorg/hermit/astro/Body$Calc;)V
    .locals 3
    .param p0, "field"    # Lorg/hermit/astro/Body$Field;
    .param p1, "calc"    # Lorg/hermit/astro/Body$Calc;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/hermit/astro/Body$Field;->calculator:Lorg/hermit/astro/Body$Calc;

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string v2, " already has a calculator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iput-object p1, p0, Lorg/hermit/astro/Body$Field;->calculator:Lorg/hermit/astro/Body$Calc;

    .line 312
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/astro/Body$Field;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/astro/Body$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/astro/Body$Field;

    return-object p0
.end method

.method public static values()[Lorg/hermit/astro/Body$Field;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/astro/Body$Field;->ENUM$VALUES:[Lorg/hermit/astro/Body$Field;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/astro/Body$Field;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
