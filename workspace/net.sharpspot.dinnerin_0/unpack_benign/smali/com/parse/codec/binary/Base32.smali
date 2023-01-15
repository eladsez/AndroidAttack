.class public Lcom/parse/codec/binary/Base32;
.super Lcom/parse/codec/binary/BaseNCodec;
.source "Base32.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x5

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x8

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x5

.field private static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final HEX_DECODE_TABLE:[B

.field private static final HEX_ENCODE_TABLE:[B

.field private static final MASK_5BITS:I = 0x1f


# instance fields
.field private bitWorkArea:J

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x20

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 61
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parse/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    .line 69
    const/16 v0, 0x5b

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 71
    aput-byte v3, v0, v1

    aput-byte v3, v0, v6

    aput-byte v3, v0, v4

    aput-byte v3, v0, v7

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

    .line 72
    aput-byte v3, v0, v1

    const/16 v1, 0x11

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

    .line 73
    aput-byte v3, v0, v5

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

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

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 74
    aput-byte v3, v0, v1

    const/16 v1, 0x31

    aput-byte v3, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v3, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    .line 75
    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v6, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

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

    .line 76
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

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    .line 69
    sput-object v0, Lcom/parse/codec/binary/Base32;->DECODE_TABLE:[B

    .line 83
    new-array v0, v5, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parse/codec/binary/Base32;->ENCODE_TABLE:[B

    .line 95
    const/16 v0, 0x58

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 97
    aput-byte v3, v0, v1

    aput-byte v3, v0, v6

    aput-byte v3, v0, v4

    aput-byte v3, v0, v7

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

    .line 98
    aput-byte v3, v0, v1

    const/16 v1, 0x11

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

    .line 99
    aput-byte v3, v0, v5

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

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

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    .line 100
    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v4, v0, v1

    const/16 v1, 0x33

    aput-byte v7, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    .line 101
    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    .line 102
    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    aput-byte v5, v0, v1

    .line 95
    sput-object v0, Lcom/parse/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    .line 109
    new-array v0, v5, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/parse/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    .line 45
    return-void

    .line 61
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 83
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
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    .line 109
    :array_2
    .array-data 1
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/codec/binary/Base32;-><init>(Z)V

    .line 164
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 188
    sget-object v0, Lcom/parse/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/parse/codec/binary/Base32;-><init>(I[B)V

    .line 189
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/codec/binary/Base32;-><init>(I[BZ)V

    .line 210
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 5
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "useHex"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 232
    const/4 v3, 0x5

    .line 234
    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v4, p1, v1}, Lcom/parse/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 235
    if-eqz p3, :cond_1

    .line 236
    sget-object v1, Lcom/parse/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    iput-object v1, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    .line 237
    sget-object v1, Lcom/parse/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    iput-object v1, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    .line 242
    :goto_1
    if-lez p1, :cond_4

    .line 243
    if-nez p2, :cond_2

    .line 244
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineLength "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > 0, but lineSeparator is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 239
    :cond_1
    sget-object v1, Lcom/parse/codec/binary/Base32;->ENCODE_TABLE:[B

    iput-object v1, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    .line 240
    sget-object v1, Lcom/parse/codec/binary/Base32;->DECODE_TABLE:[B

    iput-object v1, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {p0, p2}, Lcom/parse/codec/binary/Base32;->containsAlphabetOrPad([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    invoke-static {p2}, Lcom/parse/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain Base32 characters: ["

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

    .line 251
    .end local v0    # "sep":Ljava/lang/String;
    :cond_3
    array-length v1, p2

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    .line 252
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    .line 253
    iget-object v1, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :goto_2
    iget v1, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parse/codec/binary/Base32;->decodeSize:I

    .line 259
    return-void

    .line 255
    :cond_4
    iput v4, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "useHex"    # Z

    .prologue
    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/parse/codec/binary/Base32;-><init>(I[BZ)V

    .line 175
    return-void
.end method


# virtual methods
.method decode([BII)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    .line 283
    iget-boolean v4, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    if-eqz v4, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-gez p3, :cond_2

    .line 287
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    .line 289
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_1
    if-lt v1, p3, :cond_3

    move p2, v2

    .line 317
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :goto_2
    iget-boolean v4, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 318
    iget v4, p0, Lcom/parse/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v4}, Lcom/parse/codec/binary/Base32;->ensureBufferSize(I)V

    .line 321
    iget v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 323
    :pswitch_0
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v8, 0x2

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_0

    .line 290
    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_3
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 291
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_4

    .line 293
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    goto :goto_2

    .line 296
    :cond_4
    iget v4, p0, Lcom/parse/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v4}, Lcom/parse/codec/binary/Base32;->ensureBufferSize(I)V

    .line 297
    if-ltz v0, :cond_5

    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 298
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    aget-byte v3, v4, v0

    .line 299
    .local v3, "result":I
    if-ltz v3, :cond_5

    .line 300
    iget v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    .line 301
    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v6, 0x5

    shl-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 302
    iget v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    if-nez v4, :cond_5

    .line 303
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 304
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 305
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 306
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 307
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 289
    .end local v3    # "result":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_1

    .line 326
    .end local v0    # "b":B
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v8, 0x7

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    .line 329
    :pswitch_2
    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v6, 0x4

    shr-long/2addr v4, v6

    iput-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 330
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 331
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    .line 334
    :pswitch_3
    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v6, 0x1

    shr-long/2addr v4, v6

    iput-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 335
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 336
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 337
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    .line 340
    :pswitch_4
    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v6, 0x6

    shr-long/2addr v4, v6

    iput-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 341
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 342
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 343
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    .line 346
    :pswitch_5
    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v6, 0x3

    shr-long/2addr v4, v6

    iput-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 347
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 348
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 349
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 350
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-wide v6, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method encode([BII)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    .line 371
    iget-boolean v4, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    if-eqz v4, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    if-gez p3, :cond_3

    .line 377
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parse/codec/binary/Base32;->eof:Z

    .line 378
    iget v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/parse/codec/binary/Base32;->lineLength:I

    if-eqz v4, :cond_0

    .line 381
    :cond_2
    iget v4, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v4}, Lcom/parse/codec/binary/Base32;->ensureBufferSize(I)V

    .line 382
    iget v3, p0, Lcom/parse/codec/binary/Base32;->pos:I

    .line 383
    .local v3, "savedPos":I
    iget v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    packed-switch v4, :pswitch_data_0

    .line 425
    :goto_1
    iget v4, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    .line 426
    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    sub-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    .line 428
    iget v4, p0, Lcom/parse/codec/binary/Base32;->lineLength:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    if-lez v4, :cond_0

    .line 429
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v7, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v8, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    goto :goto_0

    .line 385
    :pswitch_0
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x3

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 386
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x2

    shl-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 387
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 388
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 389
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 390
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 391
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 392
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    goto/16 :goto_1

    .line 396
    :pswitch_1
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0xb

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 397
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x6

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 398
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x1

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 399
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x4

    shl-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 400
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 401
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 402
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 403
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    goto/16 :goto_1

    .line 406
    :pswitch_2
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x13

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 407
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0xe

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 408
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x9

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 409
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x4

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 410
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x1

    shl-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 411
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 412
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    .line 413
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    goto/16 :goto_1

    .line 416
    :pswitch_3
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x1b

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 417
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x16

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 418
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x11

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 419
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0xc

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 420
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x7

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 421
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x2

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 422
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x3

    shl-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 423
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v4, v5

    goto/16 :goto_1

    .line 433
    .end local v3    # "savedPos":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_2
    if-lt v1, p3, :cond_4

    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 434
    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_4
    iget v4, p0, Lcom/parse/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v4}, Lcom/parse/codec/binary/Base32;->ensureBufferSize(I)V

    .line 435
    iget v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    .line 436
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 437
    .local v0, "b":I
    if-gez v0, :cond_5

    .line 438
    add-int/lit16 v0, v0, 0x100

    .line 440
    :cond_5
    iget-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    .line 441
    iget v4, p0, Lcom/parse/codec/binary/Base32;->modulus:I

    if-nez v4, :cond_6

    .line 442
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x23

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 443
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x1e

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 444
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x19

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 445
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0x14

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 446
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0xf

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 447
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/16 v9, 0xa

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 448
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    const/4 v9, 0x5

    shr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 449
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v5, p0, Lcom/parse/codec/binary/Base32;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->encodeTable:[B

    iget-wide v7, p0, Lcom/parse/codec/binary/Base32;->bitWorkArea:J

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 450
    iget v4, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    .line 451
    iget v4, p0, Lcom/parse/codec/binary/Base32;->lineLength:I

    if-lez v4, :cond_6

    iget v4, p0, Lcom/parse/codec/binary/Base32;->lineLength:I

    iget v5, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    if-gt v4, v5, :cond_6

    .line 452
    iget-object v4, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parse/codec/binary/Base32;->buffer:[B

    iget v7, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v8, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    iget-object v5, p0, Lcom/parse/codec/binary/Base32;->lineSeparator:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/parse/codec/binary/Base32;->pos:I

    .line 454
    const/4 v4, 0x0

    iput v4, p0, Lcom/parse/codec/binary/Base32;->currentLinePos:I

    .line 433
    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_2

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 469
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/parse/codec/binary/Base32;->decodeTable:[B

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
