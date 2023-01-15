.class public abstract Lorg/hermit/geo/GeoCalculator;
.super Ljava/lang/Object;
.source "GeoCalculator.java"

# interfaces
.implements Lorg/hermit/geo/GeoConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/geo/GeoCalculator$Algorithm;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$hermit$geo$GeoCalculator$Algorithm:[I

.field private static defaultCalculator:Lorg/hermit/geo/GeoCalculator;


# instance fields
.field private ellipsoid:Lorg/hermit/geo/GeoConstants$Ellipsoid;


# direct methods
.method static synthetic $SWITCH_TABLE$org$hermit$geo$GeoCalculator$Algorithm()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lorg/hermit/geo/GeoCalculator;->$SWITCH_TABLE$org$hermit$geo$GeoCalculator$Algorithm:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/hermit/geo/GeoCalculator$Algorithm;->values()[Lorg/hermit/geo/GeoCalculator$Algorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/hermit/geo/GeoCalculator$Algorithm;->ANDOYER:Lorg/hermit/geo/GeoCalculator$Algorithm;

    invoke-virtual {v1}, Lorg/hermit/geo/GeoCalculator$Algorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/hermit/geo/GeoCalculator$Algorithm;->HAVERSINE:Lorg/hermit/geo/GeoCalculator$Algorithm;

    invoke-virtual {v1}, Lorg/hermit/geo/GeoCalculator$Algorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/hermit/geo/GeoCalculator$Algorithm;->VINCENTY:Lorg/hermit/geo/GeoCalculator$Algorithm;

    invoke-virtual {v1}, Lorg/hermit/geo/GeoCalculator$Algorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/hermit/geo/GeoCalculator;->$SWITCH_TABLE$org$hermit$geo$GeoCalculator$Algorithm:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->HAVERSINE:Lorg/hermit/geo/GeoCalculator$Algorithm;

    invoke-static {v0}, Lorg/hermit/geo/GeoCalculator;->getCalculator(Lorg/hermit/geo/GeoCalculator$Algorithm;)Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    .line 257
    sput-object v0, Lorg/hermit/geo/GeoCalculator;->defaultCalculator:Lorg/hermit/geo/GeoCalculator;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS84:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    invoke-direct {p0, v0}, Lorg/hermit/geo/GeoCalculator;-><init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V
    .locals 1
    .param p1, "ellip"    # Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/geo/GeoCalculator;->ellipsoid:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 77
    iput-object p1, p0, Lorg/hermit/geo/GeoCalculator;->ellipsoid:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 78
    return-void
.end method

.method public static getCalculator()Lorg/hermit/geo/GeoCalculator;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lorg/hermit/geo/GeoCalculator;->defaultCalculator:Lorg/hermit/geo/GeoCalculator;

    return-object v0
.end method

.method private static getCalculator(Lorg/hermit/geo/GeoCalculator$Algorithm;)Lorg/hermit/geo/GeoCalculator;
    .locals 1
    .param p0, "algorithm"    # Lorg/hermit/geo/GeoCalculator$Algorithm;

    .prologue
    .line 141
    sget-object v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS84:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    invoke-static {p0, v0}, Lorg/hermit/geo/GeoCalculator;->getCalculator(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoConstants$Ellipsoid;)Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    return-object v0
.end method

.method private static getCalculator(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoConstants$Ellipsoid;)Lorg/hermit/geo/GeoCalculator;
    .locals 2
    .param p0, "algorithm"    # Lorg/hermit/geo/GeoCalculator$Algorithm;
    .param p1, "ellipsoid"    # Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .prologue
    .line 157
    invoke-static {}, Lorg/hermit/geo/GeoCalculator;->$SWITCH_TABLE$org$hermit$geo$GeoCalculator$Algorithm()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/hermit/geo/GeoCalculator$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    invoke-static {p0}, Lorg/hermit/geo/GeoCalculator$Algorithm;->access$3(Lorg/hermit/geo/GeoCalculator$Algorithm;)Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_0
    new-instance v0, Lorg/hermit/geo/HaversineCalculator;

    sget-object v1, Lorg/hermit/geo/GeoConstants$Ellipsoid;->SPHERE:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    invoke-direct {v0, v1}, Lorg/hermit/geo/HaversineCalculator;-><init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V

    invoke-static {p0, v0}, Lorg/hermit/geo/GeoCalculator$Algorithm;->access$2(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoCalculator;)V

    goto :goto_0

    .line 162
    :pswitch_1
    new-instance v0, Lorg/hermit/geo/AndoyerCalculator;

    invoke-direct {v0, p1}, Lorg/hermit/geo/AndoyerCalculator;-><init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V

    invoke-static {p0, v0}, Lorg/hermit/geo/GeoCalculator$Algorithm;->access$2(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoCalculator;)V

    goto :goto_0

    .line 165
    :pswitch_2
    new-instance v0, Lorg/hermit/geo/VincentyCalculator;

    invoke-direct {v0, p1}, Lorg/hermit/geo/VincentyCalculator;-><init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V

    invoke-static {p0, v0}, Lorg/hermit/geo/GeoCalculator$Algorithm;->access$2(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoCalculator;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentAlgorithm()Lorg/hermit/geo/GeoCalculator$Algorithm;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lorg/hermit/geo/GeoCalculator;->defaultCalculator:Lorg/hermit/geo/GeoCalculator;

    invoke-virtual {v0}, Lorg/hermit/geo/GeoCalculator;->getAlgorithm()Lorg/hermit/geo/GeoCalculator$Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public static setAlgorithm(Lorg/hermit/geo/GeoCalculator$Algorithm;)V
    .locals 1
    .param p0, "algorithm"    # Lorg/hermit/geo/GeoCalculator$Algorithm;

    .prologue
    .line 104
    sget-object v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS84:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    invoke-static {p0, v0}, Lorg/hermit/geo/GeoCalculator;->getCalculator(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoConstants$Ellipsoid;)Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    sput-object v0, Lorg/hermit/geo/GeoCalculator;->defaultCalculator:Lorg/hermit/geo/GeoCalculator;

    .line 105
    return-void
.end method

.method public static setAlgorithm(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoConstants$Ellipsoid;)V
    .locals 1
    .param p0, "algorithm"    # Lorg/hermit/geo/GeoCalculator$Algorithm;
    .param p1, "ellipsoid"    # Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .prologue
    .line 118
    invoke-static {p0, p1}, Lorg/hermit/geo/GeoCalculator;->getCalculator(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoConstants$Ellipsoid;)Lorg/hermit/geo/GeoCalculator;

    move-result-object v0

    sput-object v0, Lorg/hermit/geo/GeoCalculator;->defaultCalculator:Lorg/hermit/geo/GeoCalculator;

    .line 119
    return-void
.end method


# virtual methods
.method public abstract azimuth(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;
.end method

.method public abstract distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
.end method

.method public abstract getAlgorithm()Lorg/hermit/geo/GeoCalculator$Algorithm;
.end method

.method getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/hermit/geo/GeoCalculator;->ellipsoid:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    return-object v0
.end method

.method public abstract latDistance(Lorg/hermit/geo/Position;D)Lorg/hermit/geo/Distance;
.end method

.method public abstract offset(Lorg/hermit/geo/Position;Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)Lorg/hermit/geo/Position;
.end method

.method public abstract vector(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Vector;
.end method
