.class public Lca/uol/aig/fftpack/RealDoubleFFT;
.super Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;
.source "RealDoubleFFT.java"


# instance fields
.field private ndim:I

.field public norm_factor:D

.field private wavetable:[D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;-><init>()V

    .line 25
    iput p1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    .line 26
    int-to-double v0, p1

    iput-wide v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->norm_factor:D

    .line 27
    iget-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->wavetable:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->wavetable:[D

    array-length v0, v0

    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xf

    if-eq v0, v1, :cond_1

    .line 29
    :cond_0
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->wavetable:[D

    .line 31
    :cond_1
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v0, v1}, Lca/uol/aig/fftpack/RealDoubleFFT;->rffti(I[D)V

    .line 32
    return-void
.end method


# virtual methods
.method public bt(Lca/uol/aig/fftpack/Complex1D;[D)V
    .locals 6
    .param p1, "x"    # Lca/uol/aig/fftpack/Complex1D;
    .param p2, "y"    # [D

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "The length of data can not match that of the wavetable"

    .line 139
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    array-length v1, v1

    iget v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_1

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of data can not match that of the wavetable"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    iget-object v1, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    array-length v1, v1

    iget v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_1

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of data can not match that of the wavetable"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    iget-object v1, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    aget-wide v1, v1, v3

    aput-wide v1, p2, v3

    .line 151
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_3

    .line 156
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 158
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    sub-int/2addr v1, v4

    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    iget v3, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    div-int/lit8 v3, v3, 0x2

    aget-wide v2, v2, v3

    aput-wide v2, p2, v1

    .line 160
    :cond_2
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    iget-object v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v1, p2, v2}, Lca/uol/aig/fftpack/RealDoubleFFT;->rfftb(I[D[D)V

    .line 161
    return-void

    .line 153
    :cond_3
    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr v1, v4

    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    aget-wide v2, v2, v0

    aput-wide v2, p2, v1

    .line 154
    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->y:[D

    aget-wide v2, v2, v0

    aput-wide v2, p2, v1

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bt([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 121
    array-length v0, p1

    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of data can not match that of the wavetable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT;->rfftb(I[D[D)V

    .line 124
    return-void
.end method

.method public ft([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 62
    array-length v0, p1

    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    if-eq v0, v1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of data can not match that of the wavetable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT;->rfftf(I[D[D)V

    .line 65
    return-void
.end method

.method public ft([DLca/uol/aig/fftpack/Complex1D;)V
    .locals 8
    .param p1, "x"    # [D
    .param p2, "y"    # Lca/uol/aig/fftpack/Complex1D;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 81
    array-length v1, p1

    iget v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    if-eq v1, v2, :cond_0

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of data can not match that of the wavetable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    iget-object v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v1, p1, v2}, Lca/uol/aig/fftpack/RealDoubleFFT;->rfftf(I[D[D)V

    .line 85
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 87
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    iput-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->x:[D

    .line 88
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    iput-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->y:[D

    .line 97
    :goto_0
    iget-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->x:[D

    aget-wide v2, p1, v4

    aput-wide v2, v1, v4

    .line 98
    iget-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->y:[D

    aput-wide v5, v1, v4

    .line 99
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_3

    .line 104
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->x:[D

    iget v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    sub-int/2addr v3, v7

    aget-wide v3, p1, v3

    aput-wide v3, v1, v2

    .line 107
    iget-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->y:[D

    iget v2, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    div-int/lit8 v2, v2, 0x2

    aput-wide v5, v1, v2

    .line 110
    :cond_1
    return-void

    .line 92
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->x:[D

    .line 93
    iget v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT;->ndim:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->y:[D

    goto :goto_0

    .line 101
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->x:[D

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v2, v7

    aget-wide v2, p1, v2

    aput-wide v2, v1, v0

    .line 102
    iget-object v1, p2, Lca/uol/aig/fftpack/Complex1D;->y:[D

    mul-int/lit8 v2, v0, 0x2

    aget-wide v2, p1, v2

    aput-wide v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
