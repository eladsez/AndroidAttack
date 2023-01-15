.class public Lcom/parse/codec/binary/Hex;
.super Ljava/lang/Object;
.source "Hex.java"

# interfaces
.implements Lcom/parse/codec/BinaryEncoder;
.implements Lcom/parse/codec/BinaryDecoder;


# static fields
.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# instance fields
.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 49
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parse/codec/binary/Hex;->DIGITS_LOWER:[C

    .line 54
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parse/codec/binary/Hex;->DIGITS_UPPER:[C

    .line 37
    return-void

    .line 49
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 54
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/parse/codec/binary/Hex;->charsetName:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "csName"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/parse/codec/binary/Hex;->charsetName:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public static decodeHex([C)[B
    .locals 7
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 69
    array-length v3, p0

    .line 71
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 72
    new-instance v5, Lcom/parse/codec/DecoderException;

    const-string v6, "Odd number of characters."

    invoke-direct {v5, v6}, Lcom/parse/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_0
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 78
    .local v4, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 86
    return-object v4

    .line 79
    :cond_1
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/parse/codec/binary/Hex;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 80
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 81
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/parse/codec/binary/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static encodeHex([B)[C
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parse/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_0

    sget-object v0, Lcom/parse/codec/binary/Hex;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/parse/codec/binary/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/parse/codec/binary/Hex;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 131
    array-length v3, p0

    .line 132
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 134
    .local v4, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 138
    return-object v4

    .line 135
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v2

    .line 136
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 151
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/parse/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 166
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 167
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 168
    new-instance v1, Lcom/parse/codec/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal hexadecimal character "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parse/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_0
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 230
    .local v0, "charArray":[C
    :goto_0
    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v2

    return-object v2

    .line 229
    .end local v0    # "charArray":[C
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 231
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/parse/codec/DecoderException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/parse/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public decode([B)[B
    .locals 3
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/parse/codec/binary/Hex;->decodeHex([C)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/parse/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/parse/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 275
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/parse/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 276
    .local v0, "byteArray":[B
    :goto_0
    invoke-static {v0}, Lcom/parse/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v2

    return-object v2

    .line 275
    .end local v0    # "byteArray":[B
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, p1

    goto :goto_0

    .line 277
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/parse/codec/EncoderException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/parse/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 279
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/parse/codec/EncoderException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/parse/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public encode([B)[B
    .locals 2
    .param p1, "array"    # [B

    .prologue
    .line 254
    invoke-static {p1}, Lcom/parse/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parse/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/parse/codec/binary/Hex;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/codec/binary/Hex;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
