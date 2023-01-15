.class public Lorg/hermit/geometry/MathTools;
.super Ljava/lang/Object;
.source "MathTools.java"


# static fields
.field private static precision:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    const-wide v0, 0x4202a05f20000000L    # 1.0E10

    sput-wide v0, Lorg/hermit/geometry/MathTools;->precision:D

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final eq(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 73
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v2, Lorg/hermit/geometry/MathTools;->precision:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final lt(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 85
    sub-double v0, p2, p0

    sget-wide v2, Lorg/hermit/geometry/MathTools;->precision:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final round(D)D
    .locals 4
    .param p0, "val"    # D

    .prologue
    .line 60
    sget-wide v0, Lorg/hermit/geometry/MathTools;->precision:D

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sget-wide v2, Lorg/hermit/geometry/MathTools;->precision:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static final setPrecision(D)V
    .locals 0
    .param p0, "val"    # D

    .prologue
    .line 45
    sput-wide p0, Lorg/hermit/geometry/MathTools;->precision:D

    .line 46
    return-void
.end method
