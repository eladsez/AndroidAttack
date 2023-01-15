.class public final Lorg/hermit/dsp/SignalPower;
.super Ljava/lang/Object;
.source "SignalPower.java"


# static fields
.field private static final FUDGE:F = 0.6f

.field private static final MAX_16_BIT:F = 32768.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static final biasAndRange([SII[F)V
    .locals 11
    .param p0, "sdata"    # [S
    .param p1, "off"    # I
    .param p2, "samples"    # I
    .param p3, "out"    # [F

    .prologue
    .line 62
    const/16 v5, 0x7fff

    .line 63
    .local v5, "min":S
    const/16 v4, -0x8000

    .line 64
    .local v4, "max":S
    const/4 v7, 0x0

    .line 65
    .local v7, "total":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    add-int v9, p1, p2

    if-lt v3, v9, :cond_0

    .line 73
    int-to-float v9, v7

    int-to-float v10, p2

    div-float v0, v9, v10

    .line 74
    .local v0, "bias":F
    int-to-float v9, v5

    add-float v2, v9, v0

    .line 75
    .local v2, "bmin":F
    int-to-float v9, v4

    sub-float v1, v9, v0

    .line 76
    .local v1, "bmax":F
    sub-float v9, v1, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v6, v9, v10

    .line 78
    .local v6, "range":F
    const/4 v9, 0x0

    aput v0, p3, v9

    .line 79
    const/4 v9, 0x1

    aput v6, p3, v9

    .line 80
    return-void

    .line 66
    .end local v0    # "bias":F
    .end local v1    # "bmax":F
    .end local v2    # "bmin":F
    .end local v6    # "range":F
    :cond_0
    aget-short v8, p0, v3

    .line 67
    .local v8, "val":S
    add-int/2addr v7, v8

    .line 68
    if-ge v8, v5, :cond_1

    .line 69
    move v5, v8

    .line 70
    :cond_1
    if-le v8, v4, :cond_2

    .line 71
    move v4, v8

    .line 65
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final calculatePowerDb([SII)D
    .locals 13
    .param p0, "sdata"    # [S
    .param p1, "off"    # I
    .param p2, "samples"    # I

    .prologue
    .line 114
    const-wide/16 v5, 0x0

    .line 115
    .local v5, "sum":D
    const-wide/16 v3, 0x0

    .line 116
    .local v3, "sqsum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 132
    mul-double v9, v5, v5

    int-to-double v11, p2

    div-double/2addr v9, v11

    sub-double v9, v3, v9

    int-to-double v11, p2

    div-double v1, v9, v11

    .line 135
    .local v1, "power":D
    const-wide/high16 v9, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v1, v9

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v9, v11

    const-wide v11, 0x3fe3333340000000L    # 0.6000000238418579

    add-double/2addr v9, v11

    return-wide v9

    .line 117
    .end local v1    # "power":D
    :cond_0
    add-int v9, p1, v0

    aget-short v9, p0, v9

    int-to-long v7, v9

    .line 118
    .local v7, "v":J
    long-to-double v9, v7

    add-double/2addr v5, v9

    .line 119
    mul-long v9, v7, v7

    long-to-double v9, v9

    add-double/2addr v3, v9

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
