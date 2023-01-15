.class public Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;
.super Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;
.source "RealDoubleFFT_Odd_Odd.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lca/uol/aig/fftpack/RealDoubleFFT_Even_Odd;-><init>(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public bt([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 52
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;->sinqb(I[D[D)V

    .line 53
    return-void
.end method

.method public ft([D)V
    .locals 2
    .param p1, "x"    # [D

    .prologue
    .line 39
    iget v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;->ndim:I

    iget-object v1, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;->wavetable:[D

    invoke-virtual {p0, v0, p1, v1}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;->sinqf(I[D[D)V

    .line 40
    return-void
.end method

.method sinqb(I[D[D)V
    .locals 10
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "wtable"    # [D

    .prologue
    const/4 v7, 0x1

    .line 86
    if-gt p1, v7, :cond_1

    .line 88
    const/4 v5, 0x0

    aget-wide v6, p2, v5

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v8

    aput-wide v6, p2, v5

    .line 101
    :cond_0
    return-void

    .line 91
    :cond_1
    div-int/lit8 v2, p1, 0x2

    .line 92
    .local v2, "ns2":I
    const/4 v0, 0x1

    .local v0, "k":I
    :goto_0
    if-lt v0, p1, :cond_2

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;->cosqb(I[D[D)V

    .line 94
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 96
    sub-int v5, p1, v0

    sub-int v1, v5, v7

    .line 97
    .local v1, "kc":I
    aget-wide v3, p2, v0

    .line 98
    .local v3, "xhold":D
    aget-wide v5, p2, v1

    aput-wide v5, p2, v0

    .line 99
    aput-wide v3, p2, v1

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    .end local v1    # "kc":I
    .end local v3    # "xhold":D
    :cond_2
    aget-wide v5, p2, v0

    neg-double v5, v5

    aput-wide v5, p2, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method sinqf(I[D[D)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "x"    # [D
    .param p3, "wtable"    # [D

    .prologue
    const/4 v7, 0x1

    .line 64
    if-ne p1, v7, :cond_1

    .line 75
    :cond_0
    return-void

    .line 65
    :cond_1
    div-int/lit8 v2, p1, 0x2

    .line 66
    .local v2, "ns2":I
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lca/uol/aig/fftpack/RealDoubleFFT_Odd_Odd;->cosqf(I[D[D)V

    .line 74
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_0

    aget-wide v5, p2, v0

    neg-double v5, v5

    aput-wide v5, p2, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 68
    :cond_2
    sub-int v5, p1, v0

    sub-int v1, v5, v7

    .line 69
    .local v1, "kc":I
    aget-wide v3, p2, v0

    .line 70
    .local v3, "xhold":D
    aget-wide v5, p2, v1

    aput-wide v5, p2, v0

    .line 71
    aput-wide v3, p2, v1

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
