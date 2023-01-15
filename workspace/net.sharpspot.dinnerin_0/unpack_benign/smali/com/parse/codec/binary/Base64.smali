.class public Lcom/parse/codec/binary/Base64;
.super Lcom/parse/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x6

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private bitWorkArea:I

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x3f

    const/16 v5, 0x3e

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 72
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parse/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 81
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parse/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 94
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/parse/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 113
    const/16 v0, 0x7b

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 114
    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    .line 115
    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    .line 116
    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v5, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v6, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    .line 117
    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    .line 118
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    .line 119
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v6, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    .line 120
    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 113
    sput-object v0, Lcom/parse/codec/binary/Base64;->DECODE_TABLE:[B

    .line 52
    return-void

    .line 72
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 81
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 94
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/codec/binary/Base64;-><init>(I)V

    .line 178
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 218
    sget-object v0, Lcom/parse/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/parse/codec/binary/Base64;-><init>(I[B)V

    .line 219
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/codec/binary/Base64;-><init>(I[BZ)V

    .line 245
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 6
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 273
    const/4 v3, 0x3

    .line 275
    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v4, p1, v1}, Lcom/parse/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 141
    sget-object v1, Lcom/parse/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v1, p0, Lcom/parse/codec/binary/Base64;->decodeTable:[B

    .line 278
    if-eqz p2, :cond_3

    .line 279
    invoke-virtual {p0, p2}, Lcom/parse/codec/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-static {p2}, Lcom/parse/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    .end local v0    # "sep":Ljava/lang/String;
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 283
    :cond_1
    if-lez p1, :cond_2

    .line 284
    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/parse/codec/binary/Base64;->encodeSize:I

    .line 285
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    .line 286
    iget-object v1, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    :goto_1
    iget v1, p0, Lcom/parse/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parse/codec/binary/Base64;->decodeSize:I

    .line 296
    if-eqz p3, :cond_4

    sget-object v1, Lcom/parse/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v1, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    .line 297
    return-void

    .line 288
    :cond_2
    iput v4, p0, Lcom/parse/codec/binary/Base64;->encodeSize:I

    .line 289
    iput-object v5, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 292
    :cond_3
    iput v4, p0, Lcom/parse/codec/binary/Base64;->encodeSize:I

    .line 293
    iput-object v5, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 296
    :cond_4
    sget-object v1, Lcom/parse/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 196
    const/16 v0, 0x4c

    sget-object v1, Lcom/parse/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lcom/parse/codec/binary/Base64;-><init>(I[BZ)V

    .line 197
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 668
    new-instance v0, Lcom/parse/codec/binary/Base64;

    invoke-direct {v0}, Lcom/parse/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/parse/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .prologue
    .line 679
    new-instance v0, Lcom/parse/codec/binary/Base64;

    invoke-direct {v0}, Lcom/parse/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/parse/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "pArray"    # [B

    .prologue
    .line 694
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/parse/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .prologue
    .line 621
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/parse/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 6
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z
    .param p3, "maxResultSize"    # I

    .prologue
    .line 641
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 656
    .end local p0    # "binaryData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 647
    .restart local p0    # "binaryData":[B
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/parse/codec/binary/Base64;

    invoke-direct {v0, p2}, Lcom/parse/codec/binary/Base64;-><init>(Z)V

    .line 648
    .local v0, "b64":Lcom/parse/codec/binary/Base64;
    :goto_1
    invoke-virtual {v0, p0}, Lcom/parse/codec/binary/Base64;->getEncodedLength([B)J

    move-result-wide v1

    .line 649
    .local v1, "len":J
    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 650
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input array too big, the output array would be bigger ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 652
    const-string v5, ") than the specified maximum size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 653
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 650
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 647
    .end local v0    # "b64":Lcom/parse/codec/binary/Base64;
    .end local v1    # "len":J
    :cond_2
    new-instance v0, Lcom/parse/codec/binary/Base64;

    const/4 v3, 0x0

    sget-object v4, Lcom/parse/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v3, v4, p2}, Lcom/parse/codec/binary/Base64;-><init>(I[BZ)V

    goto :goto_1

    .line 656
    .restart local v0    # "b64":Lcom/parse/codec/binary/Base64;
    .restart local v1    # "len":J
    :cond_3
    invoke-virtual {v0, p0}, Lcom/parse/codec/binary/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 588
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parse/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 564
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/parse/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 577
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/parse/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 708
    if-nez p0, :cond_0

    .line 709
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_0
    invoke-static {p0}, Lcom/parse/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parse/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 1
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 506
    invoke-static {p0}, Lcom/parse/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64(B)Z
    .locals 2
    .param p0, "octet"    # B

    .prologue
    .line 478
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/parse/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/parse/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .locals 1
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-static {p0}, Lcom/parse/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64([B)Z
    .locals 2
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 525
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 521
    :cond_0
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/parse/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_1

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/parse/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    const/4 v1, 0x0

    goto :goto_1

    .line 520
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 722
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 724
    .local v1, "bitlen":I
    add-int/lit8 v6, v1, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    .line 725
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 727
    .local v0, "bigBytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x8

    if-ne v6, v7, :cond_0

    .line 742
    .end local v0    # "bigBytes":[B
    :goto_0
    return-object v0

    .line 731
    .restart local v0    # "bigBytes":[B
    :cond_0
    const/4 v5, 0x0

    .line 732
    .local v5, "startSrc":I
    array-length v2, v0

    .line 735
    .local v2, "len":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 736
    const/4 v5, 0x1

    .line 737
    add-int/lit8 v2, v2, -0x1

    .line 739
    :cond_1
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    .line 740
    .local v4, "startDst":I
    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    .line 741
    .local v3, "resizedBytes":[B
    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 742
    goto :goto_0
.end method


# virtual methods
.method decode([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/4 v7, 0x1

    .line 416
    iget-boolean v4, p0, Lcom/parse/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    if-gez p3, :cond_2

    .line 420
    iput-boolean v7, p0, Lcom/parse/codec/binary/Base64;->eof:Z

    .line 422
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_1
    if-lt v1, p3, :cond_3

    move p2, v2

    .line 448
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :goto_2
    iget-boolean v4, p0, Lcom/parse/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    if-eqz v4, :cond_0

    .line 449
    iget v4, p0, Lcom/parse/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v4}, Lcom/parse/codec/binary/Base64;->ensureBufferSize(I)V

    .line 453
    iget v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 457
    :pswitch_0
    iget v4, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    .line 458
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_0

    .line 423
    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_3
    iget v4, p0, Lcom/parse/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v4}, Lcom/parse/codec/binary/Base64;->ensureBufferSize(I)V

    .line 424
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 425
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_4

    .line 427
    iput-boolean v7, p0, Lcom/parse/codec/binary/Base64;->eof:Z

    goto :goto_2

    .line 430
    :cond_4
    if-ltz v0, :cond_5

    sget-object v4, Lcom/parse/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 431
    sget-object v4, Lcom/parse/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v3, v4, v0

    .line 432
    .local v3, "result":I
    if-ltz v3, :cond_5

    .line 433
    iget v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    .line 434
    iget v4, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    .line 435
    iget v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_5

    .line 436
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 437
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 438
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 422
    .end local v3    # "result":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_1

    .line 461
    .end local v0    # "b":B
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget v4, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    .line 462
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 463
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method encode([BII)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/16 v9, 0x3d

    const/4 v8, 0x0

    .line 328
    iget-boolean v4, p0, Lcom/parse/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    if-gez p3, :cond_4

    .line 334
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parse/codec/binary/Base64;->eof:Z

    .line 335
    iget v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/parse/codec/binary/Base64;->lineLength:I

    if-eqz v4, :cond_0

    .line 338
    :cond_2
    iget v4, p0, Lcom/parse/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v4}, Lcom/parse/codec/binary/Base64;->ensureBufferSize(I)V

    .line 339
    iget v3, p0, Lcom/parse/codec/binary/Base64;->pos:I

    .line 340
    .local v3, "savedPos":I
    iget v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    packed-switch v4, :pswitch_data_0

    .line 360
    :cond_3
    :goto_1
    iget v4, p0, Lcom/parse/codec/binary/Base64;->currentLinePos:I

    .line 361
    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    sub-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, p0, Lcom/parse/codec/binary/Base64;->currentLinePos:I

    .line 363
    iget v4, p0, Lcom/parse/codec/binary/Base64;->lineLength:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/parse/codec/binary/Base64;->currentLinePos:I

    if-lez v4, :cond_0

    .line 364
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    iget-object v5, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v7, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v4, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget v4, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/parse/codec/binary/Base64;->pos:I

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 343
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 345
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    sget-object v5, Lcom/parse/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v4, v5, :cond_3

    .line 346
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    aput-byte v9, v4, v5

    .line 347
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    aput-byte v9, v4, v5

    goto :goto_1

    .line 352
    :pswitch_1
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0xa

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 353
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 354
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 356
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    sget-object v5, Lcom/parse/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v4, v5, :cond_3

    .line 357
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    aput-byte v9, v4, v5

    goto/16 :goto_1

    .line 368
    .end local v3    # "savedPos":I
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_2
    if-lt v1, p3, :cond_5

    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 369
    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_5
    iget v4, p0, Lcom/parse/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v4}, Lcom/parse/codec/binary/Base64;->ensureBufferSize(I)V

    .line 370
    iget v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    .line 371
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 372
    .local v0, "b":I
    if-gez v0, :cond_6

    .line 373
    add-int/lit16 v0, v0, 0x100

    .line 375
    :cond_6
    iget v4, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    iput v4, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    .line 376
    iget v4, p0, Lcom/parse/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_7

    .line 377
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 378
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 379
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 380
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    iget v7, p0, Lcom/parse/codec/binary/Base64;->bitWorkArea:I

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 381
    iget v4, p0, Lcom/parse/codec/binary/Base64;->currentLinePos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/parse/codec/binary/Base64;->currentLinePos:I

    .line 382
    iget v4, p0, Lcom/parse/codec/binary/Base64;->lineLength:I

    if-lez v4, :cond_7

    iget v4, p0, Lcom/parse/codec/binary/Base64;->lineLength:I

    iget v5, p0, Lcom/parse/codec/binary/Base64;->currentLinePos:I

    if-gt v4, v5, :cond_7

    .line 383
    iget-object v4, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    iget-object v5, p0, Lcom/parse/codec/binary/Base64;->buffer:[B

    iget v6, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v7, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v4, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget v4, p0, Lcom/parse/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base64;->lineSeparator:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/parse/codec/binary/Base64;->pos:I

    .line 385
    iput v8, p0, Lcom/parse/codec/binary/Base64;->currentLinePos:I

    .line 368
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_2

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 753
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parse/codec/binary/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/parse/codec/binary/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/parse/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lcom/parse/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
