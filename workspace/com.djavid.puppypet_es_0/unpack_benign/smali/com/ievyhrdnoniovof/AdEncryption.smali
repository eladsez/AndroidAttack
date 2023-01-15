.class public Lcom/ievyhrdnoniovof/AdEncryption;
.super Ljava/lang/Object;


# static fields
.field private static final synthetic k:Ljava/lang/String; = "ciF6e+7Fd^21sd|0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic A([B)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit16 v0, v0, 0x100

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic A(Ljava/lang/String;)[B
    .locals 10
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    new-array v3, v2, [B

    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    move v0, v1

    move v5, v1

    :goto_0
    int-to-double v8, v0

    cmpg-double v0, v8, v6

    if-gez v0, :cond_1

    mul-int/lit8 v0, v5, 0x2

    mul-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v8, v0

    :try_start_1
    aput-byte v8, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, v5, 0x2

    mul-int/lit8 v4, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u000b"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_3
    array-length v9, v3

    if-ge v0, v9, :cond_0

    aget-byte v9, v3, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v9, v4, v2

    move v2, v0

    goto :goto_3

    :cond_0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aput-byte v8, v4, v0

    move-object v0, v4

    goto :goto_2

    :cond_1
    return-object v3
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x200

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x10

    invoke-static {v3, v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {}, Lcom/ievyhrdnoniovof/AdEncryption;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v0, "ciF6e+7Fd^21sd|0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l([B[B)[B

    move-result-object v1

    array-length v0, v1

    if-le v0, v9, :cond_1

    new-array v0, v9, [B

    move v4, v3

    move v5, v3

    :goto_0
    if-ge v4, v9, :cond_2

    aget-byte v6, v1, v5

    add-int/lit8 v4, v5, 0x1

    aput-byte v6, v0, v5

    move v5, v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move-object v4, v0

    move-object v5, v2

    move v0, v3

    move v2, v3

    :goto_1
    if-ge v0, v7, :cond_6

    :try_start_0
    const-string v0, "h-zH\n"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    move v0, v2

    :goto_2
    add-int/lit8 v0, v0, 0x10

    if-le v0, v7, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l([B[B)[B

    move-result-object v0

    array-length v1, v5

    array-length v6, v0

    add-int/2addr v1, v6

    new-array v6, v1, [B

    array-length v1, v5

    invoke-static {v5, v3, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v5

    array-length v5, v0

    invoke-static {v0, v3, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    array-length v5, v4

    add-int/2addr v1, v5

    new-array v1, v1, [B

    array-length v5, v0

    invoke-static {v0, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v5, v4

    invoke-static {v4, v3, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    if-le v0, v9, :cond_4

    new-array v0, v9, [B

    move v4, v3

    move v5, v3

    :goto_4
    if-ge v4, v9, :cond_5

    aget-byte v8, v1, v5

    add-int/lit8 v4, v5, 0x1

    aput-byte v8, v0, v5

    move v5, v4

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdEncryption;->A(Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x10

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    :cond_5
    const-string v1, "ciF6e+7Fd^21sd|0"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    add-int/lit8 v1, v2, 0x10

    invoke-static {v4, v0}, Lcom/ievyhrdnoniovof/AdEncryption;->l([B[B)[B

    move-result-object v0

    move-object v4, v0

    move-object v5, v6

    move v2, v1

    move v0, v1

    goto :goto_1

    :cond_6
    const/16 v0, 0xa

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic l()Ljava/lang/String;
    .locals 8

    const-string v0, "\u0017`\u0015b\u0013d\u0011f\u001fhF3D5B7@9N;L=J?H!V#T%R\'P)^+f\u0013d\u0015b\u0017`\u0019n\u001bl\u001dj\u001fh\u0001v\u0003t\u0005r\u0007p\t~\u000b"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x10

    const-string v1, ""

    move-object v2, v1

    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static synthetic l(CI)Ljava/lang/String;
    .locals 3
    .param p0, "arg0"    # C
    .param p1, "arg1"    # I

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, -0x1

    xor-int/lit8 v0, v0, 0x3b

    int-to-char v0, v0

    aput-char v0, v3, v1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x65

    int-to-char v1, v1

    aput-char v1, v3, v4

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private static synthetic l([B)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # [B

    .prologue
    :try_start_0
    const-string v0, "\u0002o\u0010\n`"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdEncryption;->A([B)Ljava/lang/String;
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

.method private static synthetic l([B[B)[B
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B

    .prologue
    array-length v0, p0

    new-array v2, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v0, p0, v1

    array-length v3, p1

    rem-int v3, v1, v3

    aget-byte v3, p1, v3

    xor-int/2addr v0, v3

    int-to-byte v3, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method
