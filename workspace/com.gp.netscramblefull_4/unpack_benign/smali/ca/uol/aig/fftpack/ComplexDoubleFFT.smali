.class public Lca/uol/aig/fftpack/ComplexDoubleFFT;
.super Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;
.source "ComplexDoubleFFT.java"


# instance fields
.field private ndim:I

.field public norm_factor:D

.field private wavetable:[D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;-><init>()V

    .line 29
    iput p1, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    .line 30
    int-to-double v0, p1

    iput-wide v0, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->norm_factor:D

    .line 31
    iget-object v0, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->wavetable:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->wavetable:[D

    array-length v0, v0

    iget v1, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0xf

    if-eq v0, v1, :cond_1

    .line 33
    :cond_0
    iget v0, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->wavetable:[D

    .line 35
    :cond_1
    iget v0, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v0, v1}, Lca/uol/aig/fftpack/ComplexDoubleFFT;->cffti(I[D)V

    .line 36
    return-void
.end method


# virtual methods
.method public bt(Lca/uol/aig/fftpack/Complex1D;)V
    .locals 5
    .param p1, "x"    # Lca/uol/aig/fftpack/Complex1D;

    .prologue
    .line 110
    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    array-length v2, v2

    iget v3, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    if-eq v2, v3, :cond_0

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The length of data can not match that of the wavetable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    iget v2, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [D

    .line 113
    .local v1, "y":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    if-lt v0, v2, :cond_1

    .line 118
    iget v2, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    iget-object v3, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v2, v1, v3}, Lca/uol/aig/fftpack/ComplexDoubleFFT;->cfftb(I[D[D)V

    .line 119
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    if-lt v0, v2, :cond_2

    .line 124
    return-void

    .line 115
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    aget-wide v3, v3, v0

    aput-wide v3, v1, v2

    .line 116
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p1, Lca/uol/aig/fftpack/Complex1D;->y:[D

    aget-wide v3, v3, v0

    aput-wide v3, v1, v2

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    mul-int/lit8 v3, v0, 0x2

    aget-wide v3, v1, v3

    aput-wide v3, v2, v0

    .line 122
    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->y:[D

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, v1, v3

    aput-wide v3, v2, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bt([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 97
    array-length v0, p1

    iget v1, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of data can not match that of the wavetable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget v0, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/ComplexDoubleFFT;->cfftb(I[D[D)V

    .line 100
    return-void
.end method

.method public ft(Lca/uol/aig/fftpack/Complex1D;)V
    .locals 5
    .param p1, "x"    # Lca/uol/aig/fftpack/Complex1D;

    .prologue
    .line 65
    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    array-length v2, v2

    iget v3, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    if-eq v2, v3, :cond_0

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The length of data can not match that of the wavetable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    iget v2, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [D

    .line 68
    .local v1, "y":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    if-lt v0, v2, :cond_1

    .line 73
    iget v2, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    iget-object v3, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v2, v1, v3}, Lca/uol/aig/fftpack/ComplexDoubleFFT;->cfftf(I[D[D)V

    .line 74
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    if-lt v0, v2, :cond_2

    .line 79
    return-void

    .line 70
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    aget-wide v3, v3, v0

    aput-wide v3, v1, v2

    .line 71
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p1, Lca/uol/aig/fftpack/Complex1D;->y:[D

    aget-wide v3, v3, v0

    aput-wide v3, v1, v2

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->x:[D

    mul-int/lit8 v3, v0, 0x2

    aget-wide v3, v1, v3

    aput-wide v3, v2, v0

    .line 77
    iget-object v2, p1, Lca/uol/aig/fftpack/Complex1D;->y:[D

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, v1, v3

    aput-wide v3, v2, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public ft([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 53
    array-length v0, p1

    iget v1, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of data can not match that of the wavetable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget v0, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/ComplexDoubleFFT;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/ComplexDoubleFFT;->cfftf(I[D[D)V

    .line 56
    return-void
.end method
