.class public Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;
.super Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;
.source "RealDoubleFFT_Even_Odd.java"


# instance fields
.field ndim:I

.field public norm_factor:D

.field wavetable:[D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;-><init>()V

    .line 29
    iput p1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->ndim:I

    .line 30
    mul-int/lit8 v0, p1, 0x4

    int-to-double v0, v0

    iput-wide v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->norm_factor:D

    .line 31
    iget-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->wavetable:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->wavetable:[D

    array-length v0, v0

    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->ndim:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xf

    if-eq v0, v1, :cond_1

    .line 33
    :cond_0
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->ndim:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->wavetable:[D

    .line 35
    :cond_1
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->wavetable:[D

    invoke-virtual {p0, v0, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->cosqi(I[D)V

    .line 36
    return-void
.end method


# virtual methods
.method public bt([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 57
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->cosqb(I[D[D)V

    .line 58
    return-void
.end method

.method cosqb(I[D[D)V
    .locals 12
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "wtable"    # [D

    .prologue
    const/4 v4, 0x2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 159
    const-wide v0, 0x4006a09e667f3bccL    # 2.82842712474619

    .line 162
    .local v0, "tsqrt2":D
    if-ge p1, v4, :cond_0

    .line 164
    aget-wide v4, p2, v10

    mul-double/2addr v4, v8

    aput-wide v4, p2, v10

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    if-ne p1, v4, :cond_1

    .line 168
    aget-wide v4, p2, v10

    aget-wide v6, p2, v11

    add-double/2addr v4, v6

    mul-double v2, v8, v4

    .line 169
    .local v2, "x1":D
    const-wide v4, 0x4006a09e667f3bccL    # 2.82842712474619

    aget-wide v6, p2, v10

    aget-wide v8, p2, v11

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    aput-wide v4, p2, v11

    .line 170
    aput-wide v2, p2, v10

    goto :goto_0

    .line 174
    .end local v2    # "x1":D
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->cosqb1(I[D[D)V

    goto :goto_0
.end method

.method cosqb1(I[D[D)V
    .locals 19
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 103
    add-int/lit8 v12, p1, 0x1

    div-int/lit8 v9, v12, 0x2

    .line 104
    .local v9, "ns2":I
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_0
    move v0, v5

    move/from16 v1, p1

    if-lt v0, v1, :cond_2

    .line 110
    const/4 v12, 0x0

    aget-wide v13, p2, v12

    const/4 v15, 0x0

    aget-wide v15, p2, v15

    add-double/2addr v13, v15

    aput-wide v13, p2, v12

    .line 111
    rem-int/lit8 v8, p1, 0x2

    .line 112
    .local v8, "modn":I
    if-nez v8, :cond_0

    const/4 v12, 0x1

    sub-int v12, p1, v12

    aget-wide v13, p2, v12

    const/4 v15, 0x1

    sub-int v15, p1, v15

    aget-wide v15, p2, v15

    add-double/2addr v13, v15

    aput-wide v13, p2, v12

    .line 113
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->rfftb1(I[D[DI)V

    .line 114
    const/4 v6, 0x1

    .local v6, "k":I
    :goto_1
    if-lt v6, v9, :cond_3

    .line 120
    if-nez v8, :cond_1

    const/4 v12, 0x1

    sub-int v12, v9, v12

    aget-wide v12, p3, v12

    aget-wide v14, p2, v9

    aget-wide v16, p2, v9

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, p2, v9

    .line 121
    :cond_1
    const/4 v6, 0x1

    :goto_2
    if-lt v6, v9, :cond_4

    .line 127
    const/4 v12, 0x0

    aget-wide v13, p2, v12

    const/4 v15, 0x0

    aget-wide v15, p2, v15

    add-double/2addr v13, v15

    aput-wide v13, p2, v12

    .line 128
    return-void

    .line 106
    .end local v6    # "k":I
    .end local v8    # "modn":I
    :cond_2
    const/4 v12, 0x1

    sub-int v12, v5, v12

    aget-wide v12, p2, v12

    aget-wide v14, p2, v5

    add-double v10, v12, v14

    .line 107
    .local v10, "xim1":D
    aget-wide v12, p2, v5

    const/4 v14, 0x1

    sub-int v14, v5, v14

    aget-wide v14, p2, v14

    sub-double/2addr v12, v14

    aput-wide v12, p2, v5

    .line 108
    const/4 v12, 0x1

    sub-int v12, v5, v12

    aput-wide v10, p2, v12

    .line 104
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 116
    .end local v10    # "xim1":D
    .restart local v6    # "k":I
    .restart local v8    # "modn":I
    :cond_3
    sub-int v7, p1, v6

    .line 117
    .local v7, "kc":I
    add-int v12, v6, p1

    const/4 v13, 0x1

    sub-int v13, v6, v13

    aget-wide v13, p3, v13

    aget-wide v15, p2, v7

    mul-double/2addr v13, v15

    const/4 v15, 0x1

    sub-int v15, v7, v15

    aget-wide v15, p3, v15

    aget-wide v17, p2, v6

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    aput-wide v13, p3, v12

    .line 118
    add-int v12, v7, p1

    const/4 v13, 0x1

    sub-int v13, v6, v13

    aget-wide v13, p3, v13

    aget-wide v15, p2, v6

    mul-double/2addr v13, v15

    const/4 v15, 0x1

    sub-int v15, v7, v15

    aget-wide v15, p3, v15

    aget-wide v17, p2, v7

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    aput-wide v13, p3, v12

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 123
    .end local v7    # "kc":I
    :cond_4
    sub-int v7, p1, v6

    .line 124
    .restart local v7    # "kc":I
    add-int v12, v6, p1

    aget-wide v12, p3, v12

    add-int v14, v7, p1

    aget-wide v14, p3, v14

    add-double/2addr v12, v14

    aput-wide v12, p2, v6

    .line 125
    add-int v12, v6, p1

    aget-wide v12, p3, v12

    add-int v14, v7, p1

    aget-wide v14, p3, v14

    sub-double/2addr v12, v14

    aput-wide v12, p2, v7

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method cosqf(I[D[D)V
    .locals 10
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "wtable"    # [D

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 135
    const-wide v0, 0x3ff6a09e667f3be3L    # 1.4142135623731

    .line 138
    .local v0, "sqrt2":D
    if-ge p1, v4, :cond_0

    .line 152
    :goto_0
    return-void

    .line 142
    :cond_0
    if-ne p1, v4, :cond_1

    .line 144
    const-wide v4, 0x3ff6a09e667f3be3L    # 1.4142135623731

    aget-wide v6, p2, v9

    mul-double v2, v4, v6

    .line 145
    .local v2, "tsqx":D
    aget-wide v4, p2, v8

    sub-double/2addr v4, v2

    aput-wide v4, p2, v9

    .line 146
    aget-wide v4, p2, v8

    add-double/2addr v4, v2

    aput-wide v4, p2, v8

    goto :goto_0

    .line 150
    .end local v2    # "tsqx":D
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->cosqf1(I[D[D)V

    goto :goto_0
.end method

.method cosqf1(I[D[D)V
    .locals 18
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 69
    add-int/lit8 v12, p1, 0x1

    div-int/lit8 v9, v12, 0x2

    .line 70
    .local v9, "ns2":I
    const/4 v6, 0x1

    .local v6, "k":I
    :goto_0
    if-lt v6, v9, :cond_2

    .line 76
    rem-int/lit8 v8, p1, 0x2

    .line 77
    .local v8, "modn":I
    if-nez v8, :cond_0

    add-int v12, v9, p1

    aget-wide v13, p2, v9

    aget-wide v15, p2, v9

    add-double/2addr v13, v15

    aput-wide v13, p3, v12

    .line 78
    :cond_0
    const/4 v6, 0x1

    :goto_1
    if-lt v6, v9, :cond_3

    .line 84
    if-nez v8, :cond_1

    const/4 v12, 0x1

    sub-int v12, v9, v12

    aget-wide v12, p3, v12

    add-int v14, v9, p1

    aget-wide v14, p3, v14

    mul-double/2addr v12, v14

    aput-wide v12, p2, v9

    .line 85
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->rfftf1(I[D[DI)V

    .line 86
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_2
    move v0, v5

    move/from16 v1, p1

    if-lt v0, v1, :cond_4

    .line 92
    return-void

    .line 72
    .end local v5    # "i":I
    .end local v8    # "modn":I
    :cond_2
    sub-int v7, p1, v6

    .line 73
    .local v7, "kc":I
    add-int v12, v6, p1

    aget-wide v13, p2, v6

    aget-wide v15, p2, v7

    add-double/2addr v13, v15

    aput-wide v13, p3, v12

    .line 74
    add-int v12, v7, p1

    aget-wide v13, p2, v6

    aget-wide v15, p2, v7

    sub-double/2addr v13, v15

    aput-wide v13, p3, v12

    .line 70
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    .end local v7    # "kc":I
    .restart local v8    # "modn":I
    :cond_3
    sub-int v7, p1, v6

    .line 81
    .restart local v7    # "kc":I
    const/4 v12, 0x1

    sub-int v12, v6, v12

    aget-wide v12, p3, v12

    add-int v14, v7, p1

    aget-wide v14, p3, v14

    mul-double/2addr v12, v14

    const/4 v14, 0x1

    sub-int v14, v7, v14

    aget-wide v14, p3, v14

    add-int v16, v6, p1

    aget-wide v16, p3, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, p2, v6

    .line 82
    const/4 v12, 0x1

    sub-int v12, v6, v12

    aget-wide v12, p3, v12

    add-int v14, v6, p1

    aget-wide v14, p3, v14

    mul-double/2addr v12, v14

    const/4 v14, 0x1

    sub-int v14, v7, v14

    aget-wide v14, p3, v14

    add-int v16, v7, p1

    aget-wide v16, p3, v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    aput-wide v12, p2, v7

    .line 78
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 88
    .end local v7    # "kc":I
    .restart local v5    # "i":I
    :cond_4
    const/4 v12, 0x1

    sub-int v12, v5, v12

    aget-wide v12, p2, v12

    aget-wide v14, p2, v5

    sub-double v10, v12, v14

    .line 89
    .local v10, "xim1":D
    const/4 v12, 0x1

    sub-int v12, v5, v12

    aget-wide v12, p2, v12

    aget-wide v14, p2, v5

    add-double/2addr v12, v14

    aput-wide v12, p2, v5

    .line 90
    const/4 v12, 0x1

    sub-int v12, v5, v12

    aput-wide v10, p2, v12

    .line 86
    add-int/lit8 v5, v5, 0x2

    goto :goto_2
.end method

.method cosqi(I[D)V
    .locals 9
    .param p1, "n"    # I
    .param p2, "wtable"    # [D

    .prologue
    .line 183
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 186
    .local v3, "pih":D
    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    int-to-double v7, p1

    div-double v0, v5, v7

    .line 187
    .local v0, "dt":D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 188
    invoke-virtual {p0, p1, p2, p1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->rffti1(I[DI)V

    .line 189
    return-void

    .line 187
    :cond_0
    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    aput-wide v5, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public ft([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 46
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;->cosqf(I[D[D)V

    .line 47
    return-void
.end method
