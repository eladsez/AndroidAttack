.class Lnet/youmi/android/bn;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x40

    new-array v0, v8, [B

    new-array v1, v8, [B

    new-array v2, v8, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Lnet/youmi/android/bk;

    invoke-direct {v4}, Lnet/youmi/android/bk;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/youmi/android/bk;->a([B)[B

    move-result-object v3

    array-length v5, v3

    move v6, v9

    :goto_0
    if-lt v6, v5, :cond_1

    move v3, v5

    :cond_0
    :goto_1
    if-lt v3, v8, :cond_3

    move v3, v9

    :goto_2
    if-lt v3, v8, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lnet/youmi/android/bn;->a([B[B)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/youmi/android/bk;->a([B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/youmi/android/bn;->a([B[B)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/youmi/android/bk;->a([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    aget-byte v7, v3, v6

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move v6, v9

    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_0

    aget-byte v7, v5, v6

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    aput-byte v9, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aget-byte v5, v2, v3

    xor-int/lit8 v5, v5, 0x36

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    aget-byte v5, v2, v3

    xor-int/lit8 v5, v5, 0x5c

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static a([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    move v1, v3

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    move v1, v3

    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_0
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p0

    add-int/2addr v2, v1

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
