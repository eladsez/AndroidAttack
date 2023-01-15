.class public final Lorg/hermit/geo/Azimuth;
.super Lorg/hermit/utils/Angle;
.source "Azimuth.java"


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .param p1, "radians"    # D

    .prologue
    .line 50
    invoke-static {p1, p2}, Lorg/hermit/geo/Azimuth;->modTwoPi(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/hermit/utils/Angle;-><init>(D)V

    .line 51
    return-void
.end method

.method public static fromDegrees(D)Lorg/hermit/geo/Azimuth;
    .locals 3
    .param p0, "degrees"    # D

    .prologue
    .line 65
    new-instance v0, Lorg/hermit/geo/Azimuth;

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Azimuth;-><init>(D)V

    return-object v0
.end method

.method public static bridge synthetic fromDegrees(D)Lorg/hermit/utils/Angle;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/hermit/geo/Azimuth;->fromDegrees(D)Lorg/hermit/geo/Azimuth;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(D)Lorg/hermit/geo/Azimuth;
    .locals 3
    .param p1, "radians"    # D

    .prologue
    .line 85
    new-instance v0, Lorg/hermit/geo/Azimuth;

    invoke-virtual {p0}, Lorg/hermit/geo/Azimuth;->getRadians()D

    move-result-wide v1

    add-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Azimuth;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic add(D)Lorg/hermit/utils/Angle;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/hermit/geo/Azimuth;->add(D)Lorg/hermit/geo/Azimuth;

    move-result-object v0

    return-object v0
.end method
