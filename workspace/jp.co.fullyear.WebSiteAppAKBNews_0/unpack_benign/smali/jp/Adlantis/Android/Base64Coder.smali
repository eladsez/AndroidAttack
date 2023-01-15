.class Ljp/Adlantis/Android/Base64Coder;
.super Ljava/lang/Object;


# static fields
.field private static map1:[C

.field private static map2:[B

.field private static final systemLineSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x40

    const/4 v4, 0x0

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/Adlantis/Android/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    new-array v0, v5, [C

    sput-object v0, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    const/16 v0, 0x41

    move v1, v4

    :goto_0
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    sget-object v2, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1

    sget-object v2, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v3

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v2, 0x39

    if-gt v0, v2, :cond_2

    sget-object v2, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v3

    goto :goto_2

    :cond_2
    sget-object v0, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2b

    aput-char v3, v0, v1

    sget-object v0, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v1, 0x2f

    aput-char v1, v0, v2

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Ljp/Adlantis/Android/Base64Coder;->map2:[B

    move v0, v4

    :goto_3
    sget-object v1, Ljp/Adlantis/Android/Base64Coder;->map2:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Ljp/Adlantis/Android/Base64Coder;->map2:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_4
    if-ge v0, v5, :cond_4

    sget-object v1, Ljp/Adlantis/Android/Base64Coder;->map2:[B

    sget-object v2, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljp/Adlantis/Android/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljp/Adlantis/Android/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .locals 12

    const/16 v11, 0x41

    const/16 v10, 0x7f

    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    if-lez v0, :cond_0

    add-int v1, p1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-char v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v2, v1, [B

    add-int/2addr v0, p1

    const/4 v3, 0x0

    move v4, p1

    :goto_1
    if-ge v4, v0, :cond_8

    add-int/lit8 v5, v4, 0x1

    aget-char v4, p0, v4

    add-int/lit8 v6, v5, 0x1

    aget-char v5, p0, v5

    if-ge v6, v0, :cond_2

    add-int/lit8 v7, v6, 0x1

    aget-char v6, p0, v6

    :goto_2
    if-ge v7, v0, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v7, p0, v7

    :goto_3
    if-gt v4, v10, :cond_1

    if-gt v5, v10, :cond_1

    if-gt v6, v10, :cond_1

    if-le v7, v10, :cond_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v7, v6

    move v6, v11

    goto :goto_2

    :cond_3
    move v8, v7

    move v7, v11

    goto :goto_3

    :cond_4
    sget-object v9, Ljp/Adlantis/Android/Base64Coder;->map2:[B

    aget-byte v4, v9, v4

    sget-object v9, Ljp/Adlantis/Android/Base64Coder;->map2:[B

    aget-byte v5, v9, v5

    sget-object v9, Ljp/Adlantis/Android/Base64Coder;->map2:[B

    aget-byte v6, v9, v6

    sget-object v9, Ljp/Adlantis/Android/Base64Coder;->map2:[B

    aget-byte v7, v9, v7

    if-ltz v4, :cond_5

    if-ltz v5, :cond_5

    if-ltz v6, :cond_5

    if-gez v7, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v9, v5, 0x4

    or-int/2addr v4, v9

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v9, v6, 0x2

    or-int/2addr v5, v9

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    if-ge v7, v1, :cond_9

    add-int/lit8 v3, v7, 0x1

    int-to-byte v4, v5

    aput-byte v4, v2, v7

    :goto_4
    if-ge v3, v1, :cond_7

    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    move v3, v4

    :cond_7
    move v4, v8

    goto :goto_1

    :cond_8
    return-object v2

    :cond_9
    move v3, v7

    goto :goto_4

    :cond_a
    move v0, p2

    goto/16 :goto_0
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    move v1, v5

    move v2, v5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v5, v2}, Ljp/Adlantis/Android/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljp/Adlantis/Android/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljp/Adlantis/Android/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljp/Adlantis/Android/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 13

    const/16 v12, 0x3d

    const/4 v11, 0x0

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    add-int v2, p1, p2

    move v3, v11

    move v4, p1

    :goto_0
    if-ge v4, v2, :cond_4

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v5, v2, :cond_0

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    :goto_1
    if-ge v6, v2, :cond_1

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    :goto_2
    ushr-int/lit8 v8, v4, 0x2

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v9, v5, 0x4

    or-int/2addr v4, v9

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v9, v6, 0x6

    or-int/2addr v5, v9

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v9, v3, 0x1

    sget-object v10, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    aget-char v8, v10, v8

    aput-char v8, v1, v3

    add-int/lit8 v3, v9, 0x1

    sget-object v8, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    aget-char v4, v8, v4

    aput-char v4, v1, v9

    if-ge v3, v0, :cond_2

    sget-object v4, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    aget-char v4, v4, v5

    :goto_3
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_3

    sget-object v4, Ljp/Adlantis/Android/Base64Coder;->map1:[C

    aget-char v4, v4, v6

    :goto_4
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_0
    move v6, v5

    move v5, v11

    goto :goto_1

    :cond_1
    move v7, v6

    move v6, v11

    goto :goto_2

    :cond_2
    move v4, v12

    goto :goto_3

    :cond_3
    move v4, v12

    goto :goto_4

    :cond_4
    return-object v1
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    array-length v1, p0

    const/16 v2, 0x4c

    sget-object v3, Ljp/Adlantis/Android/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Ljp/Adlantis/Android/Base64Coder;->encodeLines([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 5

    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v0, v0, 0x4

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    add-int v1, p2, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    add-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    sub-int v3, p2, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p1, v1

    invoke-static {p0, v4, v3}, Ljp/Adlantis/Android/Base64Coder;->encode([BII)[C

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljp/Adlantis/Android/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
