.class public Lca/uol/aig/fftpack/RealDoubleFFT_Odd;
.super Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;
.source "RealDoubleFFT_Odd.java"


# instance fields
.field private ndim:I

.field public norm_factor:D

.field private wavetable:[D


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;-><init>()V

    .line 30
    iput p1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->ndim:I

    .line 31
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iput-wide v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->norm_factor:D

    .line 32
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->ndim:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->ndim:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, 0xf

    .line 33
    .local v0, "wtable_length":I
    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->wavetable:[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->wavetable:[D

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 35
    :cond_0
    new-array v1, v0, [D

    iput-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->wavetable:[D

    .line 37
    :cond_1
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->ndim:I

    iget-object v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->wavetable:[D

    invoke-virtual {p0, v1, v2}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->sinti(I[D)V

    .line 38
    return-void
.end method


# virtual methods
.method public bt([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 58
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->sint(I[D[D)V

    .line 59
    return-void
.end method

.method public ft([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 48
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->sint(I[D[D)V

    .line 49
    return-void
.end method

.method sint(I[D[D)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->sint1(I[D[D)V

    .line 138
    return-void
.end method

.method sint1(I[D[D)V
    .locals 31
    .param p1, "n"    # I
    .param p2, "war"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 67
    const-wide v14, 0x3ffbb67ae8584cb7L    # 1.73205080756888

    .line 72
    .local v14, "sqrt3":D
    add-int/lit8 v24, p1, 0x1

    mul-int/lit8 v24, v24, 0x2

    add-int/lit8 v24, v24, 0xf

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 73
    .local v20, "wtable_p1":[D
    div-int/lit8 v6, p1, 0x2

    .line 74
    .local v6, "iw1":I
    add-int v24, v6, p1

    add-int/lit8 v7, v24, 0x1

    .line 75
    .local v7, "iw2":I
    add-int v24, v7, p1

    add-int/lit8 v8, v24, 0x1

    .line 77
    .local v8, "iw3":I
    add-int/lit8 v24, p1, 0x1

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 79
    .local v21, "x":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move v0, v5

    move/from16 v1, p1

    if-lt v0, v1, :cond_1

    .line 84
    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 86
    add-int/lit8 v24, v6, 0x0

    aget-wide v25, p3, v24

    add-int/lit8 v27, v6, 0x0

    aget-wide v27, p3, v27

    add-double v25, v25, v27

    aput-wide v25, p3, v24

    .line 125
    :cond_0
    :goto_1
    const/4 v5, 0x0

    :goto_2
    move v0, v5

    move/from16 v1, p1

    if-lt v0, v1, :cond_7

    .line 130
    return-void

    .line 81
    :cond_1
    add-int v24, v5, v6

    aget-wide v25, p2, v5

    aput-wide v25, p3, v24

    .line 82
    add-int v24, v5, v7

    aget-wide v24, p3, v24

    aput-wide v24, p2, v5

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    :cond_2
    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 90
    const-wide v24, 0x3ffbb67ae8584cb7L    # 1.73205080756888

    add-int/lit8 v26, v6, 0x0

    aget-wide v26, p3, v26

    add-int/lit8 v28, v6, 0x1

    aget-wide v28, p3, v28

    add-double v26, v26, v28

    mul-double v22, v24, v26

    .line 91
    .local v22, "xhold":D
    add-int/lit8 v24, v6, 0x1

    const-wide v25, 0x3ffbb67ae8584cb7L    # 1.73205080756888

    add-int/lit8 v27, v6, 0x0

    aget-wide v27, p3, v27

    add-int/lit8 v29, v6, 0x1

    aget-wide v29, p3, v29

    sub-double v27, v27, v29

    mul-double v25, v25, v27

    aput-wide v25, p3, v24

    .line 92
    add-int/lit8 v24, v6, 0x0

    aput-wide v22, p3, v24

    goto :goto_1

    .line 96
    .end local v22    # "xhold":D
    :cond_3
    add-int/lit8 v12, p1, 0x1

    .line 97
    .local v12, "np1":I
    div-int/lit8 v13, p1, 0x2

    .line 98
    .local v13, "ns2":I
    add-int/lit8 v24, v7, 0x0

    const-wide/16 v25, 0x0

    aput-wide v25, p3, v24

    .line 99
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_3
    if-lt v9, v13, :cond_5

    .line 107
    rem-int/lit8 v11, p1, 0x2

    .line 108
    .local v11, "modn":I
    if-eqz v11, :cond_4

    .line 109
    add-int/lit8 v24, v13, 0x1

    add-int v24, v24, v7

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    add-int v27, v13, v6

    aget-wide v27, p3, v27

    mul-double v25, v25, v27

    aput-wide v25, p3, v24

    .line 110
    :cond_4
    const/16 v24, 0x0

    add-int/lit8 v25, p1, 0x1

    move-object/from16 v0, p3

    move v1, v6

    move-object/from16 v2, v20

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    const/16 v24, 0x0

    add-int/lit8 v25, p1, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v24

    move-object/from16 v2, v20

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int/lit8 v24, p1, 0x1

    mul-int/lit8 v24, v24, 0x2

    const/16 v25, 0xf

    move-object/from16 v0, p3

    move v1, v8

    move-object/from16 v2, v20

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    const/16 v24, 0x0

    add-int/lit8 v25, p1, 0x1

    move-object/from16 v0, p3

    move v1, v7

    move-object/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->rfftf1(I[D[DI)V

    .line 115
    const/16 v24, 0x0

    add-int/lit8 v25, p1, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, p3

    move v3, v7

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    add-int/lit8 v24, v6, 0x0

    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v27, v7, 0x0

    aget-wide v27, p3, v27

    mul-double v25, v25, v27

    aput-wide v25, p3, v24

    .line 117
    const/4 v5, 0x2

    :goto_4
    move v0, v5

    move/from16 v1, p1

    if-lt v0, v1, :cond_6

    .line 122
    if-nez v11, :cond_0

    .line 123
    const/16 v24, 0x1

    sub-int v24, p1, v24

    add-int v24, v24, v6

    add-int v25, p1, v7

    aget-wide v25, p3, v25

    move-wide/from16 v0, v25

    neg-double v0, v0

    move-wide/from16 v25, v0

    aput-wide v25, p3, v24

    goto/16 :goto_1

    .line 101
    .end local v11    # "modn":I
    :cond_5
    sub-int v24, p1, v9

    const/16 v25, 0x1

    sub-int v10, v24, v25

    .line 102
    .local v10, "kc":I
    add-int v24, v9, v6

    aget-wide v24, p3, v24

    add-int v26, v10, v6

    aget-wide v26, p3, v26

    sub-double v16, v24, v26

    .line 103
    .local v16, "t1":D
    aget-wide v24, p3, v9

    add-int v26, v9, v6

    aget-wide v26, p3, v26

    add-int v28, v10, v6

    aget-wide v28, p3, v28

    add-double v26, v26, v28

    mul-double v18, v24, v26

    .line 104
    .local v18, "t2":D
    add-int/lit8 v24, v9, 0x1

    add-int v24, v24, v7

    add-double v25, v16, v18

    aput-wide v25, p3, v24

    .line 105
    add-int/lit8 v24, v10, 0x1

    add-int v24, v24, v7

    sub-double v25, v18, v16

    aput-wide v25, p3, v24

    .line 99
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 119
    .end local v10    # "kc":I
    .end local v16    # "t1":D
    .end local v18    # "t2":D
    .restart local v11    # "modn":I
    :cond_6
    const/16 v24, 0x1

    sub-int v24, v5, v24

    add-int v24, v24, v6

    add-int v25, v5, v7

    aget-wide v25, p3, v25

    move-wide/from16 v0, v25

    neg-double v0, v0

    move-wide/from16 v25, v0

    aput-wide v25, p3, v24

    .line 120
    add-int v24, v5, v6

    const/16 v25, 0x2

    sub-int v25, v5, v25

    add-int v25, v25, v6

    aget-wide v25, p3, v25

    const/16 v27, 0x1

    sub-int v27, v5, v27

    add-int v27, v27, v7

    aget-wide v27, p3, v27

    add-double v25, v25, v27

    aput-wide v25, p3, v24

    .line 117
    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    .line 127
    .end local v9    # "k":I
    .end local v11    # "modn":I
    .end local v12    # "np1":I
    .end local v13    # "ns2":I
    :cond_7
    add-int v24, v5, v7

    aget-wide v25, p2, v5

    aput-wide v25, p3, v24

    .line 128
    add-int v24, v5, v6

    aget-wide v24, p3, v24

    aput-wide v24, p2, v5

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method sinti(I[D)V
    .locals 10
    .param p1, "n"    # I
    .param p2, "wtable"    # [D

    .prologue
    .line 145
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 149
    .local v4, "pi":D
    const/4 v6, 0x1

    if-gt p1, v6, :cond_0

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    div-int/lit8 v3, p1, 0x2

    .line 151
    .local v3, "ns2":I
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    add-int/lit8 v8, p1, 0x1

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 152
    .local v0, "dt":D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 154
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6, p2, v3}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd;->rffti1(I[DI)V

    goto :goto_0

    .line 153
    :cond_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v8, v2, 0x1

    int-to-double v8, v8

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, p2, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
