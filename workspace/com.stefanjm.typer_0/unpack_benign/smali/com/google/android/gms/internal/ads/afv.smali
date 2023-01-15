.class public final Lcom/google/android/gms/internal/ads/afv;
.super Lcom/google/android/gms/internal/ads/afi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/afi<",
        "Lcom/google/android/gms/internal/ads/afv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lcom/google/android/gms/internal/ads/afu;

.field private b:Lcom/google/android/gms/internal/ads/afw;

.field private c:[B

.field private d:[B

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->b:Lcom/google/android/gms/internal/ads/afw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/afu;->b()[Lcom/google/android/gms/internal/ads/afu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->c:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->d:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->Y:Lcom/google/android/gms/internal/ads/afk;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/afv;->Z:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/afi;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->b:Lcom/google/android/gms/internal/ads/afw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->b:Lcom/google/android/gms/internal/ads/afw;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/afg;->b(ILcom/google/android/gms/internal/ads/afo;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->c:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afv;->c:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->d:[B

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afv;->d:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/afv;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/afg;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/afe;)Lcom/google/android/gms/internal/ads/afo;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->a()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afe;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->e:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->d:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->c:[B

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/afr;->a(Lcom/google/android/gms/internal/ads/afe;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/afu;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/ads/afu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/afu;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afe;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/afu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/afu;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->b:Lcom/google/android/gms/internal/ads/afw;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ads/afw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/afw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->b:Lcom/google/android/gms/internal/ads/afw;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->b:Lcom/google/android/gms/internal/ads/afw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afo;)V

    goto/16 :goto_0

    :cond_a
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/afg;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->b:Lcom/google/android/gms/internal/ads/afw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->b:Lcom/google/android/gms/internal/ads/afw;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->a:[Lcom/google/android/gms/internal/ads/afu;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/afg;->a(ILcom/google/android/gms/internal/ads/afo;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->c:[B

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->c:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(I[B)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->d:[B

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->d:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afv;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/afv;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/afg;->a(II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/afi;->a(Lcom/google/android/gms/internal/ads/afg;)V

    return-void
.end method
