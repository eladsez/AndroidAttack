.class public Lca/uol/aig/fftpack/RealDoubleFFT_Even;
.super Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;
.source "RealDoubleFFT_Even.java"


# instance fields
.field private ndim:I

.field public norm_factor:D

.field private wavetable:[D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;-><init>()V

    .line 32
    iput p1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->ndim:I

    .line 33
    const/4 v0, 0x1

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->norm_factor:D

    .line 34
    iget-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->wavetable:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->wavetable:[D

    array-length v0, v0

    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->ndim:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xf

    if-eq v0, v1, :cond_1

    .line 35
    :cond_0
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->ndim:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->wavetable:[D

    .line 36
    :cond_1
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->wavetable:[D

    invoke-virtual {p0, v0, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->costi(I[D)V

    .line 37
    return-void
.end method


# virtual methods
.method public bt([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 57
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->cost(I[D[D)V

    .line 58
    return-void
.end method

.method cost(I[D[D)V
    .locals 32
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 76
    const/16 v27, 0x1

    sub-int v11, p1, v27

    .line 77
    .local v11, "nm1":I
    div-int/lit8 v12, p1, 0x2

    .line 78
    .local v12, "ns2":I
    const/16 v27, 0x2

    sub-int v27, p1, v27

    if-gez v27, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/16 v27, 0x2

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 81
    const/16 v27, 0x0

    aget-wide v27, p2, v27

    const/16 v29, 0x1

    aget-wide v29, p2, v29

    add-double v19, v27, v29

    .line 82
    .local v19, "x1h":D
    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-wide v28, p2, v28

    const/16 v30, 0x1

    aget-wide v30, p2, v30

    sub-double v28, v28, v30

    aput-wide v28, p2, v27

    .line 83
    const/16 v27, 0x0

    aput-wide v19, p2, v27

    goto :goto_0

    .line 85
    .end local v19    # "x1h":D
    :cond_2
    const/16 v27, 0x3

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 87
    const/16 v27, 0x0

    aget-wide v27, p2, v27

    const/16 v29, 0x2

    aget-wide v29, p2, v29

    add-double v21, v27, v29

    .line 88
    .local v21, "x1p3":D
    const/16 v27, 0x1

    aget-wide v27, p2, v27

    const/16 v29, 0x1

    aget-wide v29, p2, v29

    add-double v17, v27, v29

    .line 89
    .local v17, "tx2":D
    const/16 v27, 0x1

    const/16 v28, 0x0

    aget-wide v28, p2, v28

    const/16 v30, 0x2

    aget-wide v30, p2, v30

    sub-double v28, v28, v30

    aput-wide v28, p2, v27

    .line 90
    const/16 v27, 0x0

    add-double v28, v21, v17

    aput-wide v28, p2, v27

    .line 91
    const/16 v27, 0x2

    sub-double v28, v21, v17

    aput-wide v28, p2, v27

    goto :goto_0

    .line 95
    .end local v17    # "tx2":D
    .end local v21    # "x1p3":D
    :cond_3
    const/16 v27, 0x0

    aget-wide v27, p2, v27

    const/16 v29, 0x1

    sub-int v29, p1, v29

    aget-wide v29, p2, v29

    sub-double v5, v27, v29

    .line 96
    .local v5, "c1":D
    const/16 v27, 0x0

    aget-wide v28, p2, v27

    const/16 v30, 0x1

    sub-int v30, p1, v30

    aget-wide v30, p2, v30

    add-double v28, v28, v30

    aput-wide v28, p2, v27

    .line 97
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_1
    if-lt v8, v12, :cond_5

    .line 107
    rem-int/lit8 v10, p1, 0x2

    .line 108
    .local v10, "modn":I
    if-eqz v10, :cond_4

    aget-wide v27, p2, v12

    aget-wide v29, p2, v12

    add-double v27, v27, v29

    aput-wide v27, p2, v12

    .line 109
    :cond_4
    move-object/from16 v0, p0

    move v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->rfftf1(I[D[DI)V

    .line 110
    const/16 v27, 0x1

    aget-wide v25, p2, v27

    .line 111
    .local v25, "xim2":D
    const/16 v27, 0x1

    aput-wide v5, p2, v27

    .line 112
    const/4 v7, 0x3

    .local v7, "i":I
    :goto_2
    move v0, v7

    move/from16 v1, p1

    if-lt v0, v1, :cond_6

    .line 119
    if-eqz v10, :cond_0

    const/16 v27, 0x1

    sub-int v27, p1, v27

    aput-wide v25, p2, v27

    goto/16 :goto_0

    .line 99
    .end local v7    # "i":I
    .end local v10    # "modn":I
    .end local v25    # "xim2":D
    :cond_5
    sub-int v9, v11, v8

    .line 100
    .local v9, "kc":I
    aget-wide v27, p2, v8

    aget-wide v29, p2, v9

    add-double v13, v27, v29

    .line 101
    .local v13, "t1":D
    aget-wide v27, p2, v8

    aget-wide v29, p2, v9

    sub-double v15, v27, v29

    .line 102
    .local v15, "t2":D
    aget-wide v27, p3, v9

    mul-double v27, v27, v15

    add-double v5, v5, v27

    .line 103
    aget-wide v27, p3, v8

    mul-double v15, v15, v27

    .line 104
    sub-double v27, v13, v15

    aput-wide v27, p2, v8

    .line 105
    add-double v27, v13, v15

    aput-wide v27, p2, v9

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 114
    .end local v9    # "kc":I
    .end local v13    # "t1":D
    .end local v15    # "t2":D
    .restart local v7    # "i":I
    .restart local v10    # "modn":I
    .restart local v25    # "xim2":D
    :cond_6
    aget-wide v23, p2, v7

    .line 115
    .local v23, "xi":D
    const/16 v27, 0x2

    sub-int v27, v7, v27

    aget-wide v27, p2, v27

    const/16 v29, 0x1

    sub-int v29, v7, v29

    aget-wide v29, p2, v29

    sub-double v27, v27, v29

    aput-wide v27, p2, v7

    .line 116
    const/16 v27, 0x1

    sub-int v27, v7, v27

    aput-wide v25, p2, v27

    .line 117
    move-wide/from16 v25, v23

    .line 112
    add-int/lit8 v7, v7, 0x2

    goto :goto_2
.end method

.method costi(I[D)V
    .locals 11
    .param p1, "n"    # I
    .param p2, "wtable"    # [D

    .prologue
    .line 128
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 132
    .local v5, "pi":D
    const/4 v7, 0x3

    if-gt p1, v7, :cond_0

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    div-int/lit8 v4, p1, 0x2

    .line 134
    .local v4, "ns2":I
    const-wide v7, 0x400921fb54442d18L    # Math.PI

    const/4 v9, 0x1

    sub-int v9, p1, v9

    int-to-double v9, v9

    div-double v0, v7, v9

    .line 135
    .local v0, "dt":D
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_1
    if-lt v2, v4, :cond_1

    .line 141
    const/4 v7, 0x1

    sub-int v7, p1, v7

    invoke-virtual {p0, v7, p2, p1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->rffti1(I[DI)V

    goto :goto_0

    .line 137
    :cond_1
    sub-int v7, p1, v2

    const/4 v8, 0x1

    sub-int v3, v7, v8

    .line 138
    .local v3, "kc":I
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    int-to-double v9, v2

    mul-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    aput-wide v7, p2, v2

    .line 139
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    int-to-double v9, v2

    mul-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    aput-wide v7, p2, v3

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public ft([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 47
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even;->cost(I[D[D)V

    .line 48
    return-void
.end method
