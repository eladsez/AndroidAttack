.class Lnet/youmi/android/bk;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private b:[I

.field private c:[I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/youmi/android/bk;->a:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lnet/youmi/android/bk;->b:[I

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/youmi/android/bk;->c:[I

    return-void

    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method

.method private a(II)I
    .locals 2

    shl-int v0, p1, p2

    const/16 v1, 0x20

    sub-int/2addr v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private a(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private a([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private a()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x4f

    if-le v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    move v1, v6

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_1

    move v1, v6

    :goto_2
    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    const/16 v1, 0x14

    :goto_3
    const/16 v2, 0x27

    if-le v1, v2, :cond_3

    const/16 v1, 0x28

    :goto_4
    const/16 v2, 0x3b

    if-le v1, v2, :cond_4

    const/16 v1, 0x3c

    :goto_5
    const/16 v2, 0x4f

    if-le v1, v2, :cond_5

    move v1, v6

    :goto_6
    array-length v2, v0

    if-lt v1, v2, :cond_6

    move v0, v6

    :goto_7
    iget-object v1, p0, Lnet/youmi/android/bk;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_7

    return-void

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/bk;->c:[I

    iget-object v2, p0, Lnet/youmi/android/bk;->c:[I

    sub-int v3, v0, v8

    aget v2, v2, v3

    iget-object v3, p0, Lnet/youmi/android/bk;->c:[I

    const/16 v4, 0x8

    sub-int v4, v0, v4

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget-object v3, p0, Lnet/youmi/android/bk;->c:[I

    const/16 v4, 0xe

    sub-int v4, v0, v4

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget-object v3, p0, Lnet/youmi/android/bk;->c:[I

    const/16 v4, 0x10

    sub-int v4, v0, v4

    aget v3, v3, v4

    xor-int/2addr v2, v3

    invoke-direct {p0, v2, v7}, Lnet/youmi/android/bk;->a(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/youmi/android/bk;->b:[I

    aget v2, v2, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget v2, v0, v6

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lnet/youmi/android/bk;->a(II)I

    move-result v2

    aget v3, v0, v7

    aget v4, v0, v9

    aget v5, v0, v8

    invoke-direct {p0, v3, v4, v5}, Lnet/youmi/android/bk;->a(III)I

    move-result v3

    add-int/2addr v2, v3

    aget v3, v0, v10

    add-int/2addr v2, v3

    iget-object v3, p0, Lnet/youmi/android/bk;->c:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    const v3, 0x5a827999

    add-int/2addr v2, v3

    aget v3, v0, v8

    aput v3, v0, v10

    aget v3, v0, v9

    aput v3, v0, v8

    aget v3, v0, v7

    const/16 v4, 0x1e

    invoke-direct {p0, v3, v4}, Lnet/youmi/android/bk;->a(II)I

    move-result v3

    aput v3, v0, v9

    aget v3, v0, v6

    aput v3, v0, v7

    aput v2, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_3
    aget v2, v0, v6

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lnet/youmi/android/bk;->a(II)I

    move-result v2

    aget v3, v0, v7

    aget v4, v0, v9

    aget v5, v0, v8

    invoke-direct {p0, v3, v4, v5}, Lnet/youmi/android/bk;->b(III)I

    move-result v3

    add-int/2addr v2, v3

    aget v3, v0, v10

    add-int/2addr v2, v3

    iget-object v3, p0, Lnet/youmi/android/bk;->c:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    const v3, 0x6ed9eba1

    add-int/2addr v2, v3

    aget v3, v0, v8

    aput v3, v0, v10

    aget v3, v0, v9

    aput v3, v0, v8

    aget v3, v0, v7

    const/16 v4, 0x1e

    invoke-direct {p0, v3, v4}, Lnet/youmi/android/bk;->a(II)I

    move-result v3

    aput v3, v0, v9

    aget v3, v0, v6

    aput v3, v0, v7

    aput v2, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_4
    aget v2, v0, v6

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lnet/youmi/android/bk;->a(II)I

    move-result v2

    aget v3, v0, v7

    aget v4, v0, v9

    aget v5, v0, v8

    invoke-direct {p0, v3, v4, v5}, Lnet/youmi/android/bk;->c(III)I

    move-result v3

    add-int/2addr v2, v3

    aget v3, v0, v10

    add-int/2addr v2, v3

    iget-object v3, p0, Lnet/youmi/android/bk;->c:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    const v3, -0x70e44324

    add-int/2addr v2, v3

    aget v3, v0, v8

    aput v3, v0, v10

    aget v3, v0, v9

    aput v3, v0, v8

    aget v3, v0, v7

    const/16 v4, 0x1e

    invoke-direct {p0, v3, v4}, Lnet/youmi/android/bk;->a(II)I

    move-result v3

    aput v3, v0, v9

    aget v3, v0, v6

    aput v3, v0, v7

    aput v2, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_5
    aget v2, v0, v6

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lnet/youmi/android/bk;->a(II)I

    move-result v2

    aget v3, v0, v7

    aget v4, v0, v9

    aget v5, v0, v8

    invoke-direct {p0, v3, v4, v5}, Lnet/youmi/android/bk;->b(III)I

    move-result v3

    add-int/2addr v2, v3

    aget v3, v0, v10

    add-int/2addr v2, v3

    iget-object v3, p0, Lnet/youmi/android/bk;->c:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    const v3, -0x359d3e2a    # -3715189.5f

    add-int/2addr v2, v3

    aget v3, v0, v8

    aput v3, v0, v10

    aget v3, v0, v9

    aput v3, v0, v8

    aget v3, v0, v7

    const/16 v4, 0x1e

    invoke-direct {p0, v3, v4}, Lnet/youmi/android/bk;->a(II)I

    move-result v3

    aput v3, v0, v9

    aget v3, v0, v6

    aput v3, v0, v7

    aput v2, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_6
    iget-object v2, p0, Lnet/youmi/android/bk;->b:[I

    iget-object v3, p0, Lnet/youmi/android/bk;->b:[I

    aget v3, v3, v1

    aget v4, v0, v1

    add-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_7
    iget-object v1, p0, Lnet/youmi/android/bk;->c:[I

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7
.end method

.method private a(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    return-void
.end method

.method private b(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private b([B)I
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lnet/youmi/android/bk;->a:[I

    iget-object v1, p0, Lnet/youmi/android/bk;->b:[I

    iget-object v2, p0, Lnet/youmi/android/bk;->a:[I

    array-length v2, v2

    invoke-static {v0, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1}, Lnet/youmi/android/bk;->c([B)[B

    move-result-object v0

    array-length v1, v0

    div-int/lit8 v1, v1, 0x40

    move v2, v7

    :goto_0
    if-lt v2, v1, :cond_0

    const/16 v0, 0x14

    return v0

    :cond_0
    move v3, v7

    :goto_1
    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    invoke-direct {p0}, Lnet/youmi/android/bk;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lnet/youmi/android/bk;->c:[I

    mul-int/lit8 v5, v2, 0x40

    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v5, v6

    invoke-direct {p0, v0, v5}, Lnet/youmi/android/bk;->a([BI)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private c(III)I
    .locals 2

    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private c([B)[B
    .locals 20

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    rem-int/lit8 v6, v5, 0x40

    const/16 v7, 0x38

    if-ge v6, v7, :cond_0

    const/16 v7, 0x37

    sub-int/2addr v7, v6

    sub-int v6, v5, v6

    add-int/lit8 v6, v6, 0x40

    :goto_0
    new-array v6, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v8

    move-object v2, v6

    move v3, v9

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v5, 0x1

    const/16 v9, -0x80

    aput-byte v9, v6, v5

    const/4 v9, 0x0

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    :goto_1
    if-lt v8, v7, :cond_2

    int-to-long v7, v5

    const-wide/16 v10, 0x8

    mul-long/2addr v7, v10

    const-wide/16 v10, 0xff

    and-long/2addr v10, v7

    long-to-int v5, v10

    int-to-byte v5, v5

    const/16 v10, 0x8

    shr-long v10, v7, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    const/16 v11, 0x10

    shr-long v11, v7, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    const/16 v12, 0x18

    shr-long v12, v7, v12

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0x20

    shr-long v13, v7, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0x28

    shr-long v14, v7, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    const/16 v15, 0x30

    shr-long v15, v7, v15

    const-wide/16 v17, 0xff

    and-long v15, v15, v17

    long-to-int v15, v15

    int-to-byte v15, v15

    const/16 v16, 0x38

    shr-long v7, v7, v16

    long-to-int v7, v7

    int-to-byte v7, v7

    add-int/lit8 v8, v9, 0x1

    aput-byte v7, v6, v9

    add-int/lit8 v7, v8, 0x1

    aput-byte v15, v6, v8

    add-int/lit8 v8, v7, 0x1

    aput-byte v14, v6, v7

    add-int/lit8 v7, v8, 0x1

    aput-byte v13, v6, v8

    add-int/lit8 v8, v7, 0x1

    aput-byte v12, v6, v7

    add-int/lit8 v7, v8, 0x1

    aput-byte v11, v6, v8

    add-int/lit8 v8, v7, 0x1

    aput-byte v10, v6, v7

    add-int/lit8 v7, v8, 0x1

    aput-byte v5, v6, v8

    return-object v6

    :cond_0
    const/16 v7, 0x38

    if-ne v6, v7, :cond_1

    const/16 v6, 0x3f

    add-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    move/from16 v19, v7

    move v7, v6

    move/from16 v6, v19

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x3f

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x38

    add-int/lit8 v8, v5, 0x40

    sub-int v6, v8, v6

    add-int/lit8 v6, v6, 0x40

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v10, v9, 0x1

    const/4 v11, 0x0

    aput-byte v11, v6, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto/16 :goto_1
.end method


# virtual methods
.method a([B)[B
    .locals 4

    invoke-direct {p0, p1}, Lnet/youmi/android/bk;->b([B)I

    const/16 v0, 0x14

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/youmi/android/bk;->b:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lnet/youmi/android/bk;->b:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {p0, v2, v0, v3}, Lnet/youmi/android/bk;->a(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
