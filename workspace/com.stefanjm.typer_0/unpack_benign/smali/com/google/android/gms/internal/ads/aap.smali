.class Lcom/google/android/gms/internal/ads/aap;
.super Lcom/google/android/gms/internal/ads/aao;


# instance fields
.field protected final b:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aao;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    array-length v0, v0

    return v0
.end method

.method protected final a(III)I
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/abs;->a(I[BII)I

    move-result p1

    return p1
.end method

.method public final a(II)Lcom/google/android/gms/internal/ads/aai;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/aap;->b(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/aai;->a:Lcom/google/android/gms/internal/ads/aai;

    return-object p1

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/ads/aal;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/aal;-><init>([BII)V

    return-object p2
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/aah;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/aah;->a([BII)V

    return-void
.end method

.method protected a([BIII)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/aai;II)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result p2

    if-le p3, p2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result p2

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result p2

    if-le p3, p2, :cond_1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result p1

    const/16 v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ran off end of other: 0, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/aap;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/aap;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/aap;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result p1

    :goto_0
    if-ge p3, v2, :cond_3

    aget-byte v3, p2, p3

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/aai;->a(II)Lcom/google/android/gms/internal/ads/aai;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/ads/aai;->a(II)Lcom/google/android/gms/internal/ads/aai;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/aai;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aer;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/aar;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aap;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aap;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aar;->a([BIIZ)Lcom/google/android/gms/internal/ads/aar;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/aai;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/aai;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/aap;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/ads/aap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aai;->f()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aai;->a()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/aao;->a(Lcom/google/android/gms/internal/ads/aai;II)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
