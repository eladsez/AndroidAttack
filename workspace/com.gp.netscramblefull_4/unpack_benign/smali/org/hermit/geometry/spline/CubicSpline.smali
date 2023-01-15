.class public Lorg/hermit/geometry/spline/CubicSpline;
.super Ljava/lang/Object;
.source "CubicSpline.java"


# instance fields
.field private final controlPoints:[Lorg/hermit/geometry/Point;

.field private final controlsX:[D

.field private final controlsY:[D

.field private cubicX:[Lorg/hermit/geometry/spline/Cubic;

.field private cubicY:[Lorg/hermit/geometry/spline/Cubic;


# direct methods
.method public constructor <init>([Lorg/hermit/geometry/Point;)V
    .locals 11
    .param p1, "points"    # [Lorg/hermit/geometry/Point;

    .prologue
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v2, p1

    .line 44
    .local v2, "len":I
    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "A ControlCurve needs at least 2 control points"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_0
    iput-object p1, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlPoints:[Lorg/hermit/geometry/Point;

    .line 50
    new-array v4, v2, [D

    iput-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlsX:[D

    .line 51
    new-array v4, v2, [D

    iput-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlsY:[D

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 58
    iget-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlPoints:[Lorg/hermit/geometry/Point;

    array-length v4, v4

    sub-int v3, v4, v8

    .line 59
    .local v3, "n":I
    add-int/lit8 v4, v3, 0x1

    new-array v0, v4, [D

    .line 60
    .local v0, "gamma":[D
    const/4 v4, 0x0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    aput-wide v5, v0, v4

    .line 61
    const/4 v1, 0x1

    :goto_1
    if-lt v1, v3, :cond_2

    .line 63
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-int v6, v3, v8

    aget-wide v6, v0, v6

    sub-double/2addr v4, v6

    div-double v4, v9, v4

    aput-wide v4, v0, v3

    .line 66
    iget-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlsX:[D

    invoke-direct {p0, v3, v4, v0}, Lorg/hermit/geometry/spline/CubicSpline;->calcNaturalCubic(I[D[D)[Lorg/hermit/geometry/spline/Cubic;

    move-result-object v4

    iput-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->cubicX:[Lorg/hermit/geometry/spline/Cubic;

    .line 67
    iget-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlsY:[D

    invoke-direct {p0, v3, v4, v0}, Lorg/hermit/geometry/spline/CubicSpline;->calcNaturalCubic(I[D[D)[Lorg/hermit/geometry/spline/Cubic;

    move-result-object v4

    iput-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->cubicY:[Lorg/hermit/geometry/spline/Cubic;

    .line 68
    return-void

    .line 53
    .end local v0    # "gamma":[D
    .end local v3    # "n":I
    :cond_1
    iget-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlsX:[D

    iget-object v5, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlPoints:[Lorg/hermit/geometry/Point;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 54
    iget-object v4, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlsY:[D

    iget-object v5, p0, Lorg/hermit/geometry/spline/CubicSpline;->controlPoints:[Lorg/hermit/geometry/Point;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .restart local v0    # "gamma":[D
    .restart local v3    # "n":I
    :cond_2
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    sub-int v6, v1, v8

    aget-wide v6, v0, v6

    sub-double/2addr v4, v6

    div-double v4, v9, v4

    aput-wide v4, v0, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private calcNaturalCubic(I[D[D)[Lorg/hermit/geometry/spline/Cubic;
    .locals 21
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "gamma"    # [D

    .prologue
    .line 82
    add-int/lit8 v2, p1, 0x1

    new-array v13, v2, [D

    .line 83
    .local v13, "delta":[D
    const/4 v2, 0x0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const/4 v3, 0x1

    aget-wide v17, p2, v3

    const/4 v3, 0x0

    aget-wide v19, p2, v3

    sub-double v17, v17, v19

    mul-double v15, v15, v17

    const/4 v3, 0x0

    aget-wide v17, p3, v3

    mul-double v15, v15, v17

    aput-wide v15, v13, v2

    .line 84
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_0
    move v0, v14

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

    .line 86
    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    aget-wide v17, p2, p1

    const/4 v2, 0x1

    sub-int v2, p1, v2

    aget-wide v19, p2, v2

    sub-double v17, v17, v19

    mul-double v15, v15, v17

    const/4 v2, 0x1

    sub-int v2, p1, v2

    aget-wide v17, v13, v2

    sub-double v15, v15, v17

    aget-wide v17, p3, p1

    mul-double v15, v15, v17

    aput-wide v15, v13, p1

    .line 88
    add-int/lit8 v2, p1, 0x1

    new-array v12, v2, [D

    .line 89
    .local v12, "D":[D
    aget-wide v15, v13, p1

    aput-wide v15, v12, p1

    .line 90
    const/4 v2, 0x1

    sub-int v14, p1, v2

    :goto_1
    if-gez v14, :cond_1

    .line 95
    move/from16 v0, p1

    new-array v0, v0, [Lorg/hermit/geometry/spline/Cubic;

    move-object v11, v0

    .line 96
    .local v11, "C":[Lorg/hermit/geometry/spline/Cubic;
    const/4 v14, 0x0

    :goto_2
    move v0, v14

    move/from16 v1, p1

    if-lt v0, v1, :cond_2

    .line 103
    return-object v11

    .line 85
    .end local v11    # "C":[Lorg/hermit/geometry/spline/Cubic;
    .end local v12    # "D":[D
    :cond_0
    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    add-int/lit8 v2, v14, 0x1

    aget-wide v17, p2, v2

    const/4 v2, 0x1

    sub-int v2, v14, v2

    aget-wide v19, p2, v2

    sub-double v17, v17, v19

    mul-double v15, v15, v17

    const/4 v2, 0x1

    sub-int v2, v14, v2

    aget-wide v17, v13, v2

    sub-double v15, v15, v17

    aget-wide v17, p3, v14

    mul-double v15, v15, v17

    aput-wide v15, v13, v14

    .line 84
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 91
    .restart local v12    # "D":[D
    :cond_1
    aget-wide v15, v13, v14

    aget-wide v17, p3, v14

    add-int/lit8 v2, v14, 0x1

    aget-wide v19, v12, v2

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    aput-wide v15, v12, v14

    .line 90
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 97
    .restart local v11    # "C":[Lorg/hermit/geometry/spline/Cubic;
    :cond_2
    aget-wide v3, p2, v14

    .line 98
    .local v3, "a":D
    aget-wide v5, v12, v14

    .line 99
    .local v5, "b":D
    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    add-int/lit8 v2, v14, 0x1

    aget-wide v17, p2, v2

    aget-wide v19, p2, v14

    sub-double v17, v17, v19

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    aget-wide v19, v12, v14

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    add-int/lit8 v2, v14, 0x1

    aget-wide v17, v12, v2

    sub-double v7, v15, v17

    .line 100
    .local v7, "c":D
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    aget-wide v17, p2, v14

    add-int/lit8 v2, v14, 0x1

    aget-wide v19, p2, v2

    sub-double v17, v17, v19

    mul-double v15, v15, v17

    aget-wide v17, v12, v14

    add-double v15, v15, v17

    add-int/lit8 v2, v14, 0x1

    aget-wide v17, v12, v2

    add-double v9, v15, v17

    .line 101
    .local v9, "d":D
    new-instance v2, Lorg/hermit/geometry/spline/Cubic;

    invoke-direct/range {v2 .. v10}, Lorg/hermit/geometry/spline/Cubic;-><init>(DDDD)V

    aput-object v2, v11, v14

    .line 96
    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method


# virtual methods
.method public interpolate(I)[Lorg/hermit/geometry/Point;
    .locals 14
    .param p1, "steps"    # I

    .prologue
    const/4 v13, 0x0

    const-wide/16 v11, 0x0

    .line 114
    iget-object v7, p0, Lorg/hermit/geometry/spline/CubicSpline;->cubicX:[Lorg/hermit/geometry/spline/Cubic;

    array-length v7, v7

    mul-int/2addr v7, p1

    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [Lorg/hermit/geometry/Point;

    .line 115
    .local v4, "p":[Lorg/hermit/geometry/Point;
    const/4 v2, 0x0

    .line 118
    .local v2, "np":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "np":I
    .local v3, "np":I
    new-instance v7, Lorg/hermit/geometry/Point;

    iget-object v8, p0, Lorg/hermit/geometry/spline/CubicSpline;->cubicX:[Lorg/hermit/geometry/spline/Cubic;

    aget-object v8, v8, v13

    invoke-virtual {v8, v11, v12}, Lorg/hermit/geometry/spline/Cubic;->eval(D)D

    move-result-wide v8

    iget-object v10, p0, Lorg/hermit/geometry/spline/CubicSpline;->cubicY:[Lorg/hermit/geometry/spline/Cubic;

    aget-object v10, v10, v13

    invoke-virtual {v10, v11, v12}, Lorg/hermit/geometry/spline/Cubic;->eval(D)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/hermit/geometry/Point;-><init>(DD)V

    aput-object v7, v4, v2

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v3

    .end local v3    # "np":I
    .restart local v2    # "np":I
    :goto_0
    iget-object v7, p0, Lorg/hermit/geometry/spline/CubicSpline;->cubicX:[Lorg/hermit/geometry/spline/Cubic;

    array-length v7, v7

    if-lt v0, v7, :cond_0

    .line 125
    return-object v4

    .line 120
    :cond_0
    const/4 v1, 0x1

    .local v1, "j":I
    move v3, v2

    .end local v2    # "np":I
    .restart local v3    # "np":I
    :goto_1
    if-le v1, p1, :cond_1

    .line 119
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    .end local v3    # "np":I
    .restart local v2    # "np":I
    goto :goto_0

    .line 121
    .end local v2    # "np":I
    .restart local v3    # "np":I
    :cond_1
    int-to-double v7, v1

    int-to-double v9, p1

    div-double v5, v7, v9

    .line 122
    .local v5, "x":D
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "np":I
    .restart local v2    # "np":I
    new-instance v7, Lorg/hermit/geometry/Point;

    iget-object v8, p0, Lorg/hermit/geometry/spline/CubicSpline;->cubicX:[Lorg/hermit/geometry/spline/Cubic;

    aget-object v8, v8, v0

    invoke-virtual {v8, v5, v6}, Lorg/hermit/geometry/spline/Cubic;->eval(D)D

    move-result-wide v8

    iget-object v10, p0, Lorg/hermit/geometry/spline/CubicSpline;->cubicY:[Lorg/hermit/geometry/spline/Cubic;

    aget-object v10, v10, v0

    invoke-virtual {v10, v5, v6}, Lorg/hermit/geometry/spline/Cubic;->eval(D)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/hermit/geometry/Point;-><init>(DD)V

    aput-object v7, v4, v3

    .line 120
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "np":I
    .restart local v3    # "np":I
    goto :goto_1
.end method
