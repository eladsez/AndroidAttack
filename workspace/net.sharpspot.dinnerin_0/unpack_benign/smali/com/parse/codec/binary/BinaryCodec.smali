.class public Lcom/parse/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lcom/parse/codec/BinaryDecoder;
.implements Lcom/parse/codec/BinaryEncoder;


# static fields
.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-array v0, v1, [C

    sput-object v0, Lcom/parse/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 45
    new-array v0, v1, [B

    sput-object v0, Lcom/parse/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    .line 36
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .locals 6
    .param p0, "ascii"    # [B

    .prologue
    .line 195
    invoke-static {p0}, Lcom/parse/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    sget-object v3, Lcom/parse/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 211
    :cond_0
    return-object v3

    .line 199
    :cond_1
    array-length v4, p0

    shr-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 204
    .local v3, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 205
    const/4 v0, 0x0

    .local v0, "bits":I
    :goto_1
    sget-object v4, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 204
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 206
    :cond_2
    sub-int v4, v2, v0

    aget-byte v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_3

    .line 207
    aget-byte v4, v3, v1

    sget-object v5, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 205
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fromAscii([C)[B
    .locals 6
    .param p0, "ascii"    # [C

    .prologue
    .line 168
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    .line 169
    :cond_0
    sget-object v3, Lcom/parse/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 184
    :cond_1
    return-object v3

    .line 172
    :cond_2
    array-length v4, p0

    shr-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 177
    .local v3, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 178
    const/4 v0, 0x0

    .local v0, "bits":I
    :goto_1
    sget-object v4, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-lt v0, v4, :cond_3

    .line 177
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 179
    :cond_3
    sub-int v4, v2, v0

    aget-char v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_4

    .line 180
    aget-byte v4, v3, v1

    sget-object v5, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 178
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 222
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toAsciiBytes([B)[B
    .locals 6
    .param p0, "raw"    # [B

    .prologue
    .line 235
    invoke-static {p0}, Lcom/parse/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    sget-object v3, Lcom/parse/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 253
    :cond_0
    return-object v3

    .line 239
    :cond_1
    array-length v4, p0

    shl-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 244
    .local v3, "l_ascii":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 245
    const/4 v0, 0x0

    .local v0, "bits":I
    :goto_1
    sget-object v4, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 244
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 246
    :cond_2
    aget-byte v4, p0, v1

    sget-object v5, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    .line 247
    sub-int v4, v2, v0

    const/16 v5, 0x30

    aput-byte v5, v3, v4

    .line 245
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_3
    sub-int v4, v2, v0

    const/16 v5, 0x31

    aput-byte v5, v3, v4

    goto :goto_2
.end method

.method public static toAsciiChars([B)[C
    .locals 6
    .param p0, "raw"    # [B

    .prologue
    .line 265
    invoke-static {p0}, Lcom/parse/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    sget-object v3, Lcom/parse/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 283
    :cond_0
    return-object v3

    .line 269
    :cond_1
    array-length v4, p0

    shl-int/lit8 v4, v4, 0x3

    new-array v3, v4, [C

    .line 274
    .local v3, "l_ascii":[C
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 275
    const/4 v0, 0x0

    .local v0, "bits":I
    :goto_1
    sget-object v4, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 274
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 276
    :cond_2
    aget-byte v4, p0, v1

    sget-object v5, Lcom/parse/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    .line 277
    sub-int v4, v2, v0

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 275
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    :cond_3
    sub-int v4, v2, v0

    const/16 v5, 0x31

    aput-char v5, v3, v4

    goto :goto_2
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # [B

    .prologue
    .line 295
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/parse/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ascii"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    sget-object v0, Lcom/parse/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 123
    .end local p1    # "ascii":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 116
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 117
    check-cast p1, [B

    .end local p1    # "ascii":Ljava/lang/Object;
    invoke-static {p1}, Lcom/parse/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    goto :goto_0

    .line 119
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [C

    if-eqz v0, :cond_2

    .line 120
    check-cast p1, [C

    .end local p1    # "ascii":Ljava/lang/Object;
    invoke-static {p1}, Lcom/parse/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0

    .line 122
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 123
    check-cast p1, Ljava/lang/String;

    .end local p1    # "ascii":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0

    .line 125
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lcom/parse/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lcom/parse/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "ascii"    # [B

    .prologue
    .line 137
    invoke-static {p1}, Lcom/parse/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "raw"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 96
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/parse/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lcom/parse/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    check-cast p1, [B

    .end local p1    # "raw":Ljava/lang/Object;
    invoke-static {p1}, Lcom/parse/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "raw"    # [B

    .prologue
    .line 82
    invoke-static {p1}, Lcom/parse/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "ascii"    # Ljava/lang/String;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    sget-object v0, Lcom/parse/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 152
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0
.end method
