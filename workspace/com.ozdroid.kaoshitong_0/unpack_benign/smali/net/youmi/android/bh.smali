.class Lnet/youmi/android/bh;
.super Ljava/lang/Object;


# static fields
.field static final a:[C

.field private static b:Ljava/lang/String;

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bh;->a:[C

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bh;->c:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->r:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/o;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    sget-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/youmi/android/aa;->r:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/o;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sget-object v0, Lnet/youmi/android/bh;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static final a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    move v5, v11

    move v6, v11

    :goto_0
    if-lt v5, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lnet/youmi/android/bh;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int v7, v6, v2

    if-le v7, v3, :cond_1

    move v7, v3

    :cond_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lnet/youmi/android/bh;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    move v8, v11

    :goto_1
    array-length v9, v7

    if-lt v8, v9, :cond_2

    add-int/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    aget-byte v9, v7, v8

    ushr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    sget-object v10, Lnet/youmi/android/bh;->a:[C

    aget-char v9, v10, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v9, v7, v8

    and-int/lit8 v9, v9, 0xf

    sget-object v10, Lnet/youmi/android/bh;->a:[C

    aget-char v9, v10, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method static final a(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p1, v6, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lnet/youmi/android/bh;->c:[C

    rem-int/lit8 v2, v0, 0x3

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v6

    move v2, v6

    :goto_0
    if-lt v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v1, 0x3

    if-ge v3, v0, :cond_1

    add-int/lit8 v3, v1, 0x3

    :goto_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_2

    move v4, v6

    :goto_2
    int-to-byte v4, v4

    sget-object v5, Lnet/youmi/android/bh;->c:[C

    add-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x40

    aget-char v4, v5, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    sget-object v4, Lnet/youmi/android/bh;->c:[C

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x40

    aget-char v3, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    :cond_2
    ushr-int/lit8 v4, v3, 0x6

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12

    const/4 v11, 0x0

    invoke-static {p1}, Lnet/youmi/android/bh;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "key should be null"

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [B

    array-length v3, v0

    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    array-length v5, v0

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v11

    move v6, v11

    :goto_0
    if-lt v5, v4, :cond_1

    return-object v2

    :cond_1
    move v7, v11

    :goto_1
    if-lt v7, v3, :cond_3

    :cond_2
    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    add-int v8, v6, v7

    array-length v9, v2

    if-ge v8, v9, :cond_2

    aget-byte v9, v1, v8

    aget-byte v10, v0, v7

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
