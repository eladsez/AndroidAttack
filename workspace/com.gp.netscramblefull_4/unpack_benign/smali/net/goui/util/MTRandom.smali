.class public Lnet/goui/util/MTRandom;
.super Ljava/util/Random;
.source "MTRandom.java"


# static fields
.field private static final DEFAULT_SEED:J = 0x1571L

.field private static final LOWER_MASK:I = 0x7fffffff

.field private static final M:I = 0x18d

.field private static final MAGIC:[I

.field private static final MAGIC_FACTOR1:I = 0x6c078965

.field private static final MAGIC_FACTOR2:I = 0x19660d

.field private static final MAGIC_FACTOR3:I = 0x5d588b65

.field private static final MAGIC_MASK1:I = -0x62d3a980

.field private static final MAGIC_MASK2:I = -0x103a0000

.field private static final MAGIC_SEED:I = 0x12bd6aa

.field private static final N:I = 0x270

.field private static final UPPER_MASK:I = -0x80000000

.field private static final serialVersionUID:J = -0x725f0f797350346L


# instance fields
.field private transient compat:Z

.field private transient ibuf:[I

.field private transient mt:[I

.field private transient mti:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const v2, -0x66f74f21

    aput v2, v0, v1

    sput-object v0, Lnet/goui/util/MTRandom;->MAGIC:[I

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/goui/util/MTRandom;->compat:Z

    .line 122
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/util/Random;-><init>(J)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/goui/util/MTRandom;->compat:Z

    .line 159
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "compatible"    # Z

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/goui/util/MTRandom;->compat:Z

    .line 146
    iput-boolean p1, p0, Lnet/goui/util/MTRandom;->compat:Z

    .line 147
    iget-boolean v0, p0, Lnet/goui/util/MTRandom;->compat:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1571

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnet/goui/util/MTRandom;->setSeed(J)V

    .line 148
    return-void

    .line 147
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/goui/util/MTRandom;->compat:Z

    .line 172
    invoke-virtual {p0, p1}, Lnet/goui/util/MTRandom;->setSeed([B)V

    .line 173
    return-void
.end method

.method public constructor <init>([I)V
    .locals 2
    .param p1, "buf"    # [I

    .prologue
    .line 185
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/goui/util/MTRandom;->compat:Z

    .line 186
    invoke-virtual {p0, p1}, Lnet/goui/util/MTRandom;->setSeed([I)V

    .line 187
    return-void
.end method

.method public static pack([B)[I
    .locals 8
    .param p0, "buf"    # [B

    .prologue
    .line 381
    array-length v0, p0

    .local v0, "blen":I
    array-length v6, p0

    add-int/lit8 v6, v6, 0x3

    ushr-int/lit8 v2, v6, 0x2

    .line 382
    .local v2, "ilen":I
    new-array v1, v2, [I

    .line 383
    .local v1, "ibuf":[I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-lt v5, v2, :cond_0

    .line 389
    return-object v1

    .line 384
    :cond_0
    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v4, v6, 0x2

    .line 385
    .local v4, "m":I
    if-le v4, v0, :cond_1

    move v4, v0

    .line 386
    :cond_1
    add-int/lit8 v4, v4, -0x1

    aget-byte v6, p0, v4

    and-int/lit16 v3, v6, 0xff

    .local v3, "k":I
    :goto_1
    and-int/lit8 v6, v4, 0x3

    if-nez v6, :cond_2

    .line 387
    aput v3, v1, v5

    .line 383
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 386
    :cond_2
    shl-int/lit8 v6, v3, 0x8

    add-int/lit8 v4, v4, -0x1

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    or-int v3, v6, v7

    goto :goto_1
.end method

.method private final setSeed(I)V
    .locals 8
    .param p1, "seed"    # I

    .prologue
    const/16 v7, 0x270

    const/4 v6, 0x1

    .line 199
    iget-object v0, p0, Lnet/goui/util/MTRandom;->mt:[I

    if-nez v0, :cond_0

    new-array v0, v7, [I

    iput-object v0, p0, Lnet/goui/util/MTRandom;->mt:[I

    .line 202
    :cond_0
    iget-object v0, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 203
    iput v6, p0, Lnet/goui/util/MTRandom;->mti:I

    :goto_0
    iget v0, p0, Lnet/goui/util/MTRandom;->mti:I

    if-lt v0, v7, :cond_1

    .line 207
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lnet/goui/util/MTRandom;->mt:[I

    iget v1, p0, Lnet/goui/util/MTRandom;->mti:I

    const v2, 0x6c078965

    iget-object v3, p0, Lnet/goui/util/MTRandom;->mt:[I

    iget v4, p0, Lnet/goui/util/MTRandom;->mti:I

    sub-int/2addr v4, v6

    aget v3, v3, v4

    iget-object v4, p0, Lnet/goui/util/MTRandom;->mt:[I

    iget v5, p0, Lnet/goui/util/MTRandom;->mti:I

    sub-int/2addr v5, v6

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x1e

    xor-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget v3, p0, Lnet/goui/util/MTRandom;->mti:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 203
    iget v0, p0, Lnet/goui/util/MTRandom;->mti:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/goui/util/MTRandom;->mti:I

    goto :goto_0
.end method


# virtual methods
.method protected final declared-synchronized next(I)I
    .locals 9
    .param p1, "bits"    # I

    .prologue
    const v8, 0x7fffffff

    const/16 v7, 0x26f

    const/high16 v6, -0x80000000

    .line 319
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lnet/goui/util/MTRandom;->mti:I

    const/16 v3, 0x270

    if-lt v2, v3, :cond_0

    .line 329
    const/4 v0, 0x0

    .local v0, "kk":I
    :goto_0
    const/16 v2, 0xe3

    if-lt v0, v2, :cond_1

    .line 333
    :goto_1
    if-lt v0, v7, :cond_2

    .line 337
    iget-object v2, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/16 v3, 0x26f

    aget v2, v2, v3

    and-int/2addr v2, v6

    iget-object v3, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/2addr v3, v8

    or-int v1, v2, v3

    .line 338
    .local v1, "y":I
    iget-object v2, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/16 v3, 0x26f

    iget-object v4, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/16 v5, 0x18c

    aget v4, v4, v5

    ushr-int/lit8 v5, v1, 0x1

    xor-int/2addr v4, v5

    sget-object v5, Lnet/goui/util/MTRandom;->MAGIC:[I

    and-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 340
    const/4 v2, 0x0

    iput v2, p0, Lnet/goui/util/MTRandom;->mti:I

    .line 343
    .end local v0    # "kk":I
    .end local v1    # "y":I
    :cond_0
    iget-object v2, p0, Lnet/goui/util/MTRandom;->mt:[I

    iget v3, p0, Lnet/goui/util/MTRandom;->mti:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/goui/util/MTRandom;->mti:I

    aget v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .restart local v1    # "y":I
    ushr-int/lit8 v2, v1, 0xb

    xor-int/2addr v1, v2

    .line 347
    shl-int/lit8 v2, v1, 0x7

    const v3, -0x62d3a980

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 348
    shl-int/lit8 v2, v1, 0xf

    const/high16 v3, -0x103a0000

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 349
    ushr-int/lit8 v2, v1, 0x12

    xor-int/2addr v1, v2

    .line 351
    const/16 v2, 0x20

    sub-int/2addr v2, p1

    ushr-int v2, v1, v2

    monitor-exit p0

    return v2

    .line 330
    .end local v1    # "y":I
    .restart local v0    # "kk":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lnet/goui/util/MTRandom;->mt:[I

    aget v2, v2, v0

    and-int/2addr v2, v6

    iget-object v3, p0, Lnet/goui/util/MTRandom;->mt:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    and-int/2addr v3, v8

    or-int v1, v2, v3

    .line 331
    .restart local v1    # "y":I
    iget-object v2, p0, Lnet/goui/util/MTRandom;->mt:[I

    iget-object v3, p0, Lnet/goui/util/MTRandom;->mt:[I

    add-int/lit16 v4, v0, 0x18d

    aget v3, v3, v4

    ushr-int/lit8 v4, v1, 0x1

    xor-int/2addr v3, v4

    sget-object v4, Lnet/goui/util/MTRandom;->MAGIC:[I

    and-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "y":I
    :cond_2
    iget-object v2, p0, Lnet/goui/util/MTRandom;->mt:[I

    aget v2, v2, v0

    and-int/2addr v2, v6

    iget-object v3, p0, Lnet/goui/util/MTRandom;->mt:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    and-int/2addr v3, v8

    or-int v1, v2, v3

    .line 335
    .restart local v1    # "y":I
    iget-object v2, p0, Lnet/goui/util/MTRandom;->mt:[I

    iget-object v3, p0, Lnet/goui/util/MTRandom;->mt:[I

    add-int/lit16 v4, v0, -0xe3

    aget v3, v3, v4

    ushr-int/lit8 v4, v1, 0x1

    xor-int/2addr v3, v4

    sget-object v4, Lnet/goui/util/MTRandom;->MAGIC:[I

    and-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 319
    .end local v0    # "kk":I
    .end local v1    # "y":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized setSeed(J)V
    .locals 4
    .param p1, "seed"    # J

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/goui/util/MTRandom;->compat:Z

    if-eqz v0, :cond_0

    .line 227
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lnet/goui/util/MTRandom;->setSeed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 235
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/goui/util/MTRandom;->ibuf:[I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/goui/util/MTRandom;->ibuf:[I

    .line 237
    :cond_1
    iget-object v0, p0, Lnet/goui/util/MTRandom;->ibuf:[I

    const/4 v1, 0x0

    long-to-int v2, p1

    aput v2, v0, v1

    .line 238
    iget-object v0, p0, Lnet/goui/util/MTRandom;->ibuf:[I

    const/4 v1, 0x1

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 239
    iget-object v0, p0, Lnet/goui/util/MTRandom;->ibuf:[I

    invoke-virtual {p0, v0}, Lnet/goui/util/MTRandom;->setSeed([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setSeed([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 260
    invoke-static {p1}, Lnet/goui/util/MTRandom;->pack([B)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/goui/util/MTRandom;->setSeed([I)V

    .line 261
    return-void
.end method

.method public final declared-synchronized setSeed([I)V
    .locals 11
    .param p1, "buf"    # [I

    .prologue
    const/16 v10, 0x270

    const/4 v9, 0x1

    .line 273
    monitor-enter p0

    :try_start_0
    array-length v3, p1

    .line 274
    .local v3, "length":I
    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Seed buffer may not be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v3    # "length":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 276
    .restart local v3    # "length":I
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    if-le v10, v3, :cond_1

    move v2, v10

    .line 277
    .local v2, "k":I
    :goto_0
    const v4, 0x12bd6aa

    :try_start_1
    invoke-direct {p0, v4}, Lnet/goui/util/MTRandom;->setSeed(I)V

    .line 278
    :goto_1
    if-gtz v2, :cond_2

    .line 284
    const/16 v2, 0x26f

    :goto_2
    if-gtz v2, :cond_5

    .line 289
    iget-object v4, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    aput v6, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .end local v2    # "k":I
    :cond_1
    move v2, v3

    .line 276
    goto :goto_0

    .line 279
    .restart local v2    # "k":I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lnet/goui/util/MTRandom;->mt:[I

    iget-object v5, p0, Lnet/goui/util/MTRandom;->mt:[I

    aget v5, v5, v0

    iget-object v6, p0, Lnet/goui/util/MTRandom;->mt:[I

    sub-int v7, v0, v9

    aget v6, v6, v7

    iget-object v7, p0, Lnet/goui/util/MTRandom;->mt:[I

    sub-int v8, v0, v9

    aget v7, v7, v8

    ushr-int/lit8 v7, v7, 0x1e

    xor-int/2addr v6, v7

    const v7, 0x19660d

    mul-int/2addr v6, v7

    xor-int/2addr v5, v6

    aget v6, p1, v1

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    aput v5, v4, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 281
    if-lt v0, v10, :cond_3

    iget-object v4, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/16 v7, 0x26f

    aget v6, v6, v7

    aput v6, v4, v5

    const/4 v0, 0x1

    .line 282
    :cond_3
    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    .line 278
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 285
    :cond_5
    iget-object v4, p0, Lnet/goui/util/MTRandom;->mt:[I

    iget-object v5, p0, Lnet/goui/util/MTRandom;->mt:[I

    aget v5, v5, v0

    iget-object v6, p0, Lnet/goui/util/MTRandom;->mt:[I

    sub-int v7, v0, v9

    aget v6, v6, v7

    iget-object v7, p0, Lnet/goui/util/MTRandom;->mt:[I

    sub-int v8, v0, v9

    aget v7, v7, v8

    ushr-int/lit8 v7, v7, 0x1e

    xor-int/2addr v6, v7

    const v7, 0x5d588b65

    mul-int/2addr v6, v7

    xor-int/2addr v5, v6

    sub-int/2addr v5, v0

    aput v5, v4, v0

    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 287
    if-lt v0, v10, :cond_6

    iget-object v4, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lnet/goui/util/MTRandom;->mt:[I

    const/16 v7, 0x26f

    aget v6, v6, v7

    aput v6, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    .line 284
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method
