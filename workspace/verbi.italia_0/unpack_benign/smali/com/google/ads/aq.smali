.class public final Lcom/google/ads/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[B

.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 65
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/ads/aq;->a:[C

    .line 70
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/ads/aq;->b:[C

    .line 78
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/aq;->c:[B

    .line 112
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/aq;->d:[B

    return-void

    .line 78
    nop

    :array_0
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    .line 112
    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private static a([CI[BI[B)I
    .locals 3

    .prologue
    const/16 v1, 0x3d

    .line 384
    add-int/lit8 v0, p1, 0x2

    aget-char v0, p0, v0

    if-ne v0, v1, :cond_0

    .line 385
    aget-char v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    .line 389
    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 390
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    .line 391
    :cond_0
    add-int/lit8 v0, p1, 0x3

    aget-char v0, p0, v0

    if-ne v0, v1, :cond_1

    .line 393
    aget-char v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    .line 398
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 399
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 400
    const/4 v0, 0x2

    goto :goto_0

    .line 403
    :cond_1
    aget-char v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 409
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 410
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 411
    add-int/lit8 v1, p3, 0x2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 412
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static a([BII[CZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/ads/aq;->a([BII[CI)[C

    move-result-object v0

    .line 282
    array-length v1, v0

    .line 286
    :goto_0
    if-nez p4, :cond_0

    if-lez v1, :cond_0

    .line 287
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-char v2, v0, v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 293
    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 290
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/google/ads/aq;->b:[C

    invoke-static {p0, v0, v1, v2, p1}, Lcom/google/ads/aq;->a([BII[CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/ap;
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 425
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/ads/aq;->a([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([CII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/ap;
        }
    .end annotation

    .prologue
    .line 475
    sget-object v0, Lcom/google/ads/aq;->c:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/ads/aq;->a([CII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([CII[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/ap;
        }
    .end annotation

    .prologue
    .line 505
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 506
    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 507
    const/4 v1, 0x0

    .line 509
    const/4 v2, 0x4

    new-array v2, v2, [C

    .line 510
    const/4 v3, 0x0

    .line 514
    const/4 v4, 0x0

    .line 515
    const/4 v5, 0x0

    move v9, v4

    move v4, v3

    move v3, v5

    move v5, v1

    move v1, v9

    :goto_0
    if-ge v3, p2, :cond_6

    .line 516
    add-int v6, v3, p1

    aget-char v6, p0, v6

    .line 517
    and-int/lit8 v7, v6, 0x7f

    int-to-char v7, v7

    .line 518
    aget-byte v8, p3, v7

    .line 520
    if-ne v7, v6, :cond_0

    const/4 v6, -0x5

    if-ge v8, v6, :cond_0

    .line 522
    new-instance p2, Lcom/google/ads/ap;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad Base64 input character at "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/2addr p1, v3

    aget-char p0, p0, p1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "(decimal)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/ads/ap;-><init>(Ljava/lang/String;)V

    throw p2

    .line 526
    :cond_0
    const/4 v6, -0x1

    if-lt v8, v6, :cond_1

    .line 528
    const/16 v6, 0x3d

    if-ne v7, v6, :cond_4

    .line 529
    if-eqz v1, :cond_2

    .line 515
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    :cond_2
    const/4 v1, 0x2

    if-ge v3, v1, :cond_3

    .line 535
    new-instance p0, Lcom/google/ads/ap;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid padding char found in position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/ap;-><init>(Ljava/lang/String;)V

    throw p0

    .line 538
    :cond_3
    const/4 v1, 0x1

    .line 539
    const/4 v6, 0x1

    sub-int v6, p2, v6

    add-int/2addr v6, p1

    aget-char v6, p0, v6

    and-int/lit8 v6, v6, 0x7f

    int-to-char v6, v6

    .line 540
    const/16 v7, 0x3d

    if-eq v6, v7, :cond_1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    .line 541
    new-instance p0, Lcom/google/ads/ap;

    const-string p1, "encoded value has invalid trailing char"

    invoke-direct {p0, p1}, Lcom/google/ads/ap;-><init>(Ljava/lang/String;)V

    throw p0

    .line 545
    :cond_4
    if-eqz v1, :cond_5

    .line 546
    new-instance p0, Lcom/google/ads/ap;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data found after trailing padding char at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/ap;-><init>(Ljava/lang/String;)V

    throw p0

    .line 550
    :cond_5
    add-int/lit8 v6, v4, 0x1

    aput-char v7, v2, v4

    .line 551
    const/4 v4, 0x4

    if-ne v6, v4, :cond_9

    .line 552
    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v5, p3}, Lcom/google/ads/aq;->a([CI[BI[B)I

    move-result v4

    add-int/2addr v4, v5

    .line 554
    const/4 v5, 0x0

    move v9, v5

    move v5, v4

    move v4, v9

    goto :goto_1

    .line 566
    :cond_6
    if-eqz v4, :cond_8

    .line 567
    const/4 p0, 0x1

    if-ne v4, p0, :cond_7

    .line 568
    new-instance p0, Lcom/google/ads/ap;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "single trailing character at offset "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/ap;-><init>(Ljava/lang/String;)V

    throw p0

    .line 571
    :cond_7
    const/16 p0, 0x3d

    aput-char p0, v2, v4

    .line 572
    const/4 p0, 0x0

    invoke-static {v2, p0, v0, v5, p3}, Lcom/google/ads/aq;->a([CI[BI[B)I

    move-result p0

    add-int/2addr p0, v5

    .line 575
    :goto_2
    new-array p1, p0, [B

    .line 576
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {v0, p2, p1, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    return-object p1

    :cond_8
    move p0, v5

    goto :goto_2

    :cond_9
    move v4, v6

    goto/16 :goto_1
.end method

.method public static a([BII[CI)[C
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 308
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 309
    mul-int/lit8 v0, v0, 0x4

    .line 310
    div-int v1, v0, p4

    add-int/2addr v0, v1

    new-array v3, v0, [C

    .line 315
    const/4 v0, 0x2

    sub-int v0, p2, v0

    move v6, v8

    move v4, v8

    move v2, v8

    .line 317
    :goto_0
    if-ge v2, v0, :cond_1

    .line 322
    add-int v1, v2, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    add-int/lit8 v5, v2, 0x2

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x18

    or-int/2addr v1, v5

    .line 326
    ushr-int/lit8 v5, v1, 0x12

    aget-char v5, p3, v5

    aput-char v5, v3, v4

    .line 327
    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, p3, v7

    aput-char v7, v3, v5

    .line 328
    add-int/lit8 v5, v4, 0x2

    ushr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, p3, v7

    aput-char v7, v3, v5

    .line 329
    add-int/lit8 v5, v4, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, p3, v1

    aput-char v1, v3, v5

    .line 331
    add-int/lit8 v1, v6, 0x4

    .line 332
    if-ne v1, p4, :cond_0

    .line 333
    add-int/lit8 v1, v4, 0x4

    aput-char v9, v3, v1

    .line 334
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v8

    .line 317
    :cond_0
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v4, v4, 0x4

    move v6, v1

    goto :goto_0

    .line 339
    :cond_1
    if-ge v2, p2, :cond_2

    .line 340
    add-int v1, v2, p1

    sub-int v2, p2, v2

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/ads/aq;->a([BII[CI[C)[C

    .line 342
    add-int/lit8 v0, v6, 0x4

    .line 343
    if-ne v0, p4, :cond_3

    .line 345
    add-int/lit8 v0, v4, 0x4

    aput-char v9, v3, v0

    .line 346
    add-int/lit8 v0, v4, 0x1

    .line 348
    :goto_1
    add-int/lit8 v0, v0, 0x4

    .line 352
    :cond_2
    return-object v3

    :cond_3
    move v0, v4

    goto :goto_1
.end method

.method private static a([BII[CI[C)[C
    .locals 4

    .prologue
    const/16 v3, 0x3d

    const/4 v2, 0x0

    .line 218
    if-lez p2, :cond_0

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    const/4 v1, 0x2

    if-le p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :goto_2
    or-int/2addr v0, v1

    .line 223
    packed-switch p2, :pswitch_data_0

    move-object v0, p3

    .line 243
    :goto_3
    return-object v0

    :cond_0
    move v0, v2

    .line 218
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 225
    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 226
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 227
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 228
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, p5, v0

    aput-char v0, p3, v1

    move-object v0, p3

    .line 229
    goto :goto_3

    .line 231
    :pswitch_1
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 232
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 233
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, p5, v0

    aput-char v0, p3, v1

    .line 234
    add-int/lit8 v0, p4, 0x3

    aput-char v3, p3, v0

    move-object v0, p3

    .line 235
    goto :goto_3

    .line 237
    :pswitch_2
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 238
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, p5, v0

    aput-char v0, p3, v1

    .line 239
    add-int/lit8 v0, p4, 0x2

    aput-char v3, p3, v0

    .line 240
    add-int/lit8 v0, p4, 0x3

    aput-char v3, p3, v0

    move-object v0, p3

    .line 241
    goto :goto_3

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
