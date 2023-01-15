.class public interface abstract Lorg/hermit/astro/AstroConstants;
.super Ljava/lang/Object;
.source "AstroConstants.java"


# static fields
.field public static final ABERRATION:D

.field public static final AU:D = 1.4959787E8

.field public static final HALFPI:D = 1.5707963267948966

.field public static final J1900:D = 2415020.0

.field public static final J1990:D = 2447891.5

.field public static final J2000:D = 2451545.0

.field public static final JD_UNIX:D = 2440587.5

.field public static final REFRACTION:D

.field public static final SECS_PER_DAY:D = 86400.0

.field public static final SIDEREAL_RATIO:D = 1.00273790935

.field public static final SIDEREAL_YEAR:D = 365.2564

.field public static final TROPICAL_YEAR:D = 365.242191

.field public static final TWILIGHT:D

.field public static final TWOPI:D = 6.283185307179586

.field public static final ε_2000:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    const-wide v0, 0x4037707561abec82L    # 23.4392911

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lorg/hermit/astro/AstroConstants;->ε_2000:D

    .line 121
    const-wide v0, 0x3fe2222222222222L    # 0.5666666666666667

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lorg/hermit/astro/AstroConstants;->REFRACTION:D

    .line 127
    const-wide v0, 0x3f7751c0bcf411b5L    # 0.0056932

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lorg/hermit/astro/AstroConstants;->ABERRATION:D

    .line 134
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lorg/hermit/astro/AstroConstants;->TWILIGHT:D

    .line 43
    return-void
.end method
