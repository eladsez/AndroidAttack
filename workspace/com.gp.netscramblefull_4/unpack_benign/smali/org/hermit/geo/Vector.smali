.class public final Lorg/hermit/geo/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# instance fields
.field private azimuth:Lorg/hermit/geo/Azimuth;

.field private distance:Lorg/hermit/geo/Distance;


# direct methods
.method public constructor <init>(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)V
    .locals 0
    .param p1, "distance"    # Lorg/hermit/geo/Distance;
    .param p2, "azimuth"    # Lorg/hermit/geo/Azimuth;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/hermit/geo/Vector;->distance:Lorg/hermit/geo/Distance;

    .line 45
    iput-object p2, p0, Lorg/hermit/geo/Vector;->azimuth:Lorg/hermit/geo/Azimuth;

    .line 46
    return-void
.end method

.method public static fromMetresRadians(DD)Lorg/hermit/geo/Vector;
    .locals 3
    .param p0, "metres"    # D
    .param p2, "radians"    # D

    .prologue
    .line 61
    new-instance v0, Lorg/hermit/geo/Vector;

    new-instance v1, Lorg/hermit/geo/Distance;

    invoke-direct {v1, p0, p1}, Lorg/hermit/geo/Distance;-><init>(D)V

    new-instance v2, Lorg/hermit/geo/Azimuth;

    invoke-direct {v2, p2, p3}, Lorg/hermit/geo/Azimuth;-><init>(D)V

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Vector;-><init>(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)V

    return-object v0
.end method

.method public static fromNmRadians(DD)Lorg/hermit/geo/Vector;
    .locals 3
    .param p0, "nmiles"    # D
    .param p2, "radians"    # D

    .prologue
    .line 74
    new-instance v0, Lorg/hermit/geo/Vector;

    invoke-static {p0, p1}, Lorg/hermit/geo/Distance;->fromNm(D)Lorg/hermit/geo/Distance;

    move-result-object v1

    new-instance v2, Lorg/hermit/geo/Azimuth;

    invoke-direct {v2, p2, p3}, Lorg/hermit/geo/Azimuth;-><init>(D)V

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Vector;-><init>(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)V

    return-object v0
.end method


# virtual methods
.method public formatDegMin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/hermit/geo/Vector;->distance:Lorg/hermit/geo/Distance;

    invoke-virtual {v1}, Lorg/hermit/geo/Distance;->formatM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/geo/Vector;->azimuth:Lorg/hermit/geo/Azimuth;

    invoke-virtual {v1}, Lorg/hermit/geo/Azimuth;->formatDegMin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDegMinSec()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/hermit/geo/Vector;->distance:Lorg/hermit/geo/Distance;

    invoke-virtual {v1}, Lorg/hermit/geo/Distance;->formatM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/geo/Vector;->azimuth:Lorg/hermit/geo/Azimuth;

    invoke-virtual {v1}, Lorg/hermit/geo/Azimuth;->formatDegMinSec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAzimuth()Lorg/hermit/geo/Azimuth;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/hermit/geo/Vector;->azimuth:Lorg/hermit/geo/Azimuth;

    return-object v0
.end method

.method public final getAzimuthDegrees()D
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/hermit/geo/Vector;->azimuth:Lorg/hermit/geo/Azimuth;

    invoke-virtual {v0}, Lorg/hermit/geo/Azimuth;->getDegrees()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAzimuthRadians()D
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/hermit/geo/Vector;->azimuth:Lorg/hermit/geo/Azimuth;

    invoke-virtual {v0}, Lorg/hermit/geo/Azimuth;->getRadians()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDistance()Lorg/hermit/geo/Distance;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/hermit/geo/Vector;->distance:Lorg/hermit/geo/Distance;

    return-object v0
.end method

.method public final getDistanceMetres()D
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/hermit/geo/Vector;->distance:Lorg/hermit/geo/Distance;

    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->getMetres()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDistanceNm()D
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/hermit/geo/Vector;->distance:Lorg/hermit/geo/Distance;

    invoke-virtual {v0}, Lorg/hermit/geo/Distance;->getNm()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/hermit/geo/Vector;->formatDegMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
