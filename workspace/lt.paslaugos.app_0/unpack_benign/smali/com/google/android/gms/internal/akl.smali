.class final Lcom/google/android/gms/internal/akl;
.super Lcom/google/android/gms/internal/akj;


# instance fields
.field private final d:[B

.field private final e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/akj;-><init>(Lcom/google/android/gms/internal/akk;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/akl;->k:I

    iput-object p1, p0, Lcom/google/android/gms/internal/akl;->d:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/akl;->f:I

    iput p2, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget p1, p0, Lcom/google/android/gms/internal/akl;->h:I

    iput p1, p0, Lcom/google/android/gms/internal/akl;->i:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/akl;->e:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/akk;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/akl;-><init>([BIIZ)V

    return-void
.end method

.method private final n()J
    .locals 11

    iget v0, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    if-eq v1, v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/akl;->d:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/akl;->f:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_9

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v0, v0

    move-wide v1, v0

    move v0, v3

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v0, v2

    move-wide v1, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_3

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_3
    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v1, v3

    int-to-long v2, v2

    const/16 v6, 0x1c

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    const-wide/32 v4, 0xfe03f80

    :goto_1
    xor-long v1, v2, v4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    const-wide v0, -0x7f01fc080L

    :goto_2
    xor-long/2addr v0, v2

    move-wide v1, v0

    :goto_3
    move v0, v6

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6

    const-wide v4, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_7

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_8

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_9

    move-wide v1, v2

    goto :goto_3

    :cond_8
    move-wide v1, v2

    :goto_4
    iput v0, p0, Lcom/google/android/gms/internal/akl;->h:I

    return-wide v1

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method private final o()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/akl;->d:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ale;->a()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0
.end method

.method private final p()J
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/akl;->d:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/akl;->h:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ale;->a()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0
.end method

.method private final q()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/akl;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/akl;->f:I

    iget v0, p0, Lcom/google/android/gms/internal/akl;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/akl;->k:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/akl;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/akl;->g:I

    iget v0, p0, Lcom/google/android/gms/internal/akl;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/akl;->f:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/akl;->g:I

    return-void
.end method

.method private final r()B
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/akl;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/akl;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    aget-byte v0, v0, v1

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ale;->a()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/akl;->j:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->j()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/akl;->j:I

    iget v0, p0, Lcom/google/android/gms/internal/akl;->j:I

    ushr-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/akl;->j:I

    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ale;->d()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/aky<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/akq;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->j()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/akl;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/akl;->b:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/akj;->b(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/akl;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/akl;->a:I

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/aky;->a(Lcom/google/android/gms/internal/aky;Lcom/google/android/gms/internal/akj;Lcom/google/android/gms/internal/akq;)Lcom/google/android/gms/internal/aky;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/akj;->a(I)V

    iget p2, p0, Lcom/google/android/gms/internal/akl;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/akl;->a:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/akj;->c(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ale;->g()Lcom/google/android/gms/internal/ale;

    move-result-object p1

    throw p1
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/akl;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ale;->e()Lcom/google/android/gms/internal/ale;

    move-result-object p1

    throw p1
.end method

.method public final b(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->m()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/akl;->k:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/akl;->k:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/akl;->q()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ale;->a()Lcom/google/android/gms/internal/ale;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ale;->b()Lcom/google/android/gms/internal/ale;

    move-result-object p1

    throw p1
.end method

.method public final b()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/akl;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/akl;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/akl;->k:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/akl;->q()V

    return-void
.end method

.method public final d()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/akl;->o()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/akl;->n()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->j()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/akl;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v3, p0, Lcom/google/android/gms/internal/akl;->h:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/anf;->a([BII)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/akl;->d:[B

    sget-object v4, Lcom/google/android/gms/internal/ala;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ale;->h()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gtz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ale;->b()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ale;->a()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0
.end method

.method public final g()Lcom/google/android/gms/internal/aka;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->j()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/akl;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/aka;->a([BII)Lcom/google/android/gms/internal/aka;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/aka;->a:Lcom/google/android/gms/internal/aka;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget-object v0, p0, Lcom/google/android/gms/internal/akl;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ala;->b:[B

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/aka;->b([B)Lcom/google/android/gms/internal/aka;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ale;->b()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ale;->a()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->j()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->j()I

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    if-eq v1, v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/akl;->d:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/akl;->h:I

    return v0

    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/akl;->f:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_6

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_5

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_5

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-ltz v1, :cond_6

    :cond_5
    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/akl;->h:I

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/akj;->k()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method final k()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/akl;->r()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ale;->c()Lcom/google/android/gms/internal/ale;

    move-result-object v0

    throw v0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/akl;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/akl;->i:I

    sub-int/2addr v0, v1

    return v0
.end method
