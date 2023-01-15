.class public final Lorg/hermit/dsp/FFTTransformer;
.super Ljava/lang/Object;
.source "FFTTransformer.java"


# static fields
.field private static final FUDGE:F = 0.6361f


# instance fields
.field private final blockSize:I

.field private transformer:Lca/uol/aig/fftpack/RealDoubleFFT;

.field private windowFunc:Lorg/hermit/dsp/Window;

.field private final xre:[D


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/hermit/dsp/FFTTransformer;-><init>(ILorg/hermit/dsp/Window;)V

    .line 66
    return-void
.end method

.method public constructor <init>(ILorg/hermit/dsp/Window$Function;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "winfunc"    # Lorg/hermit/dsp/Window$Function;

    .prologue
    .line 80
    new-instance v0, Lorg/hermit/dsp/Window;

    invoke-direct {v0, p1, p2}, Lorg/hermit/dsp/Window;-><init>(ILorg/hermit/dsp/Window$Function;)V

    invoke-direct {p0, p1, v0}, Lorg/hermit/dsp/FFTTransformer;-><init>(ILorg/hermit/dsp/Window;)V

    .line 81
    return-void
.end method

.method public constructor <init>(ILorg/hermit/dsp/Window;)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "window"    # Lorg/hermit/dsp/Window;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/dsp/FFTTransformer;->windowFunc:Lorg/hermit/dsp/Window;

    .line 97
    invoke-static {p1}, Lorg/hermit/utils/Bitwise;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size for FFT must be a power of 2 (was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p2, p0, Lorg/hermit/dsp/FFTTransformer;->windowFunc:Lorg/hermit/dsp/Window;

    .line 102
    new-instance v0, Lca/uol/aig/fftpack/RealDoubleFFT;

    invoke-direct {v0, p1}, Lca/uol/aig/fftpack/RealDoubleFFT;-><init>(I)V

    iput-object v0, p0, Lorg/hermit/dsp/FFTTransformer;->transformer:Lca/uol/aig/fftpack/RealDoubleFFT;

    .line 104
    iput p1, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    .line 107
    iget v0, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    .line 108
    return-void
.end method


# virtual methods
.method public final findKeyFrequencies([F[F)I
    .locals 10
    .param p1, "spectrum"    # [F
    .param p2, "results"    # [F

    .prologue
    .line 304
    array-length v5, p1

    .line 307
    .local v5, "len":I
    const/4 v0, 0x0

    .line 308
    .local v0, "average":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 311
    int-to-float v8, v5

    div-float/2addr v0, v8

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "count":I
    const/4 v3, 0x0

    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    if-ge v3, v5, :cond_0

    array-length v8, p2

    if-lt v2, v8, :cond_2

    .line 334
    :cond_0
    return v2

    .line 309
    .end local v2    # "count":I
    :cond_1
    aget v8, p1, v3

    add-float/2addr v0, v8

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .restart local v2    # "count":I
    :cond_2
    aget v8, p1, v3

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 319
    const/4 v6, 0x0

    .line 320
    .local v6, "tot":F
    const/4 v7, 0x0

    .line 322
    .local v7, "wavg":F
    move v4, v3

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_3

    aget v8, p1, v4

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v0

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 326
    :cond_3
    div-float/2addr v7, v6

    .line 327
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput v7, p2, v2

    .line 330
    move v3, v4

    .line 316
    .end local v4    # "j":I
    .end local v6    # "tot":F
    .end local v7    # "wavg":F
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 323
    .restart local v4    # "j":I
    .restart local v6    # "tot":F
    .restart local v7    # "wavg":F
    :cond_4
    aget v8, p1, v4

    add-float/2addr v6, v8

    .line 324
    aget v8, p1, v4

    int-to-float v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "j":I
    .end local v6    # "tot":F
    .end local v7    # "wavg":F
    :cond_5
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3
.end method

.method public final getResults([F[[FI)I
    .locals 16
    .param p1, "average"    # [F
    .param p2, "histories"    # [[F
    .param p3, "index"    # I

    .prologue
    .line 256
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    move v13, v0

    div-int/lit8 v13, v13, 0x2

    if-eq v12, v13, :cond_0

    .line 257
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bad history buffer size in FFT: must be "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    move v14, v0

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 259
    const-string v14, "; given "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 257
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 260
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    move v13, v0

    div-int/lit8 v13, v13, 0x2

    if-eq v12, v13, :cond_1

    .line 261
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bad average buffer size in FFT: must be "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    move v14, v0

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 263
    const-string v14, "; given "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    array-length v0, v0

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 261
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 266
    :cond_1
    const/4 v12, 0x0

    aget-object v12, p2, v12

    array-length v3, v12

    .line 267
    .local v3, "historyLen":I
    add-int/lit8 p3, p3, 0x1

    move/from16 v0, p3

    move v1, v3

    if-lt v0, v1, :cond_2

    .line 268
    const/16 p3, 0x0

    .line 271
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    move v12, v0

    int-to-float v12, v12

    const v13, 0x3f22d773    # 0.6361f

    mul-float v10, v12, v13

    .line 272
    .local v10, "scale":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    move v12, v0

    div-int/lit8 v12, v12, 0x2

    if-lt v4, v12, :cond_3

    .line 283
    return p3

    .line 273
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    move-object v12, v0

    mul-int/lit8 v13, v4, 0x2

    aget-wide v8, v12, v13

    .line 274
    .local v8, "r":D
    if-nez v4, :cond_4

    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 275
    .local v5, "im":D
    :goto_1
    mul-double v12, v8, v8

    mul-double v14, v5, v5

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    div-float v11, v12, v10

    .line 277
    .local v11, "val":F
    aget-object v2, p2, v4

    .line 278
    .local v2, "hist":[F
    aget v7, v2, p3

    .line 279
    .local v7, "prev":F
    aput v11, v2, p3

    .line 280
    aget v12, p1, v4

    int-to-float v13, v3

    div-float v13, v7, v13

    sub-float/2addr v12, v13

    int-to-float v13, v3

    div-float v13, v11, v13

    add-float/2addr v12, v13

    aput v12, p1, v4

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "hist":[F
    .end local v5    # "im":D
    .end local v7    # "prev":F
    .end local v11    # "val":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    move-object v12, v0

    mul-int/lit8 v13, v4, 0x2

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    aget-wide v12, v12, v13

    move-wide v5, v12

    goto :goto_1
.end method

.method public final getResults([F)[F
    .locals 10
    .param p1, "buffer"    # [F

    .prologue
    .line 215
    array-length v6, p1

    iget v7, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    div-int/lit8 v7, v7, 0x2

    if-eq v6, v7, :cond_0

    .line 216
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bad output buffer size in FFT: must be "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    iget v8, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 218
    const-string v8, "; given "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 216
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    :cond_0
    iget v6, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    int-to-float v6, v6

    const v7, 0x3f22d773    # 0.6361f

    mul-float v5, v6, v7

    .line 221
    .local v5, "scale":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    div-int/lit8 v6, v6, 0x2

    if-lt v0, v6, :cond_1

    .line 226
    return-object p1

    .line 222
    :cond_1
    iget-object v6, p0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    mul-int/lit8 v7, v0, 0x2

    aget-wide v3, v6, v7

    .line 223
    .local v3, "r":D
    if-nez v0, :cond_2

    const-wide/16 v6, 0x0

    move-wide v1, v6

    .line 224
    .local v1, "im":D
    :goto_1
    mul-double v6, v3, v3

    mul-double v8, v1, v1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v6, v5

    aput v6, p1, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "im":D
    :cond_2
    iget-object v6, p0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-wide v6, v6, v7

    move-wide v1, v6

    goto :goto_1
.end method

.method public final setInput([FII)V
    .locals 4
    .param p1, "input"    # [F
    .param p2, "off"    # I
    .param p3, "count"    # I

    .prologue
    .line 145
    iget v1, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    if-eq p3, v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad input count in FFT: constructed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    iget v3, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    const-string v3, "; given "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    if-lt v0, v1, :cond_1

    .line 153
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    add-int v2, p2, v0

    aget v2, p1, v2

    float-to-double v2, v2

    aput-wide v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final setInput([SII)V
    .locals 6
    .param p1, "input"    # [S
    .param p2, "off"    # I
    .param p3, "count"    # I

    .prologue
    .line 172
    iget v1, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    if-eq p3, v1, :cond_0

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad input count in FFT: constructed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    iget v3, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    const-string v3, "; given "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    if-lt v0, v1, :cond_1

    .line 180
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    add-int v2, p2, v0

    aget-short v2, p1, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setWindowFunc(Lorg/hermit/dsp/Window$Function;)V
    .locals 2
    .param p1, "func"    # Lorg/hermit/dsp/Window$Function;

    .prologue
    .line 121
    new-instance v0, Lorg/hermit/dsp/Window;

    iget v1, p0, Lorg/hermit/dsp/FFTTransformer;->blockSize:I

    invoke-direct {v0, v1, p1}, Lorg/hermit/dsp/Window;-><init>(ILorg/hermit/dsp/Window$Function;)V

    iput-object v0, p0, Lorg/hermit/dsp/FFTTransformer;->windowFunc:Lorg/hermit/dsp/Window;

    .line 122
    return-void
.end method

.method public final transform()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/hermit/dsp/FFTTransformer;->windowFunc:Lorg/hermit/dsp/Window;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/hermit/dsp/FFTTransformer;->windowFunc:Lorg/hermit/dsp/Window;

    iget-object v1, p0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    invoke-virtual {v0, v1}, Lorg/hermit/dsp/Window;->transform([D)V

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/hermit/dsp/FFTTransformer;->transformer:Lca/uol/aig/fftpack/RealDoubleFFT;

    iget-object v1, p0, Lorg/hermit/dsp/FFTTransformer;->xre:[D

    invoke-virtual {v0, v1}, Lca/uol/aig/fftpack/RealDoubleFFT;->ft([D)V

    .line 197
    return-void
.end method
