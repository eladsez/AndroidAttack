.class public Lorg/apache/commons/io/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _hexcodes:[C

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 123
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    sput-object v0, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    .line 125
    new-array v0, v5, [C

    fill-array-data v0, :array_0

    .line 124
    sput-object v0, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    .line 130
    new-array v0, v4, [I

    const/4 v1, 0x0

    .line 131
    const/16 v2, 0x1c

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x18

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x14

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v5, v0, v1

    const/16 v1, 0xc

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 129
    sput-object v0, Lorg/apache/commons/io/HexDump;->_shifts:[I

    .line 34
    return-void

    .line 125
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "_cbuffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # B

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 160
    return-object p0

    .line 158
    :cond_0
    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    add-int/lit8 v3, v0, 0x6

    aget v2, v2, v3

    shr-int v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "_lbuffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # J

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 146
    return-object p0

    .line 144
    :cond_0
    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    aget v2, v2, v0

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static dump([BJLjava/io/OutputStream;I)V
    .locals 10
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x20

    .line 78
    if-ltz p4, :cond_0

    array-length v6, p0

    if-lt p4, v6, :cond_1

    .line 79
    :cond_0
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "illegal index: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into array of length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 81
    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-direct {v6, v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 83
    :cond_1
    if-nez p3, :cond_2

    .line 84
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "cannot write to nullstream"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 86
    :cond_2
    int-to-long v6, p4

    add-long v2, p1, v6

    .line 87
    .local v2, "display_offset":J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x4a

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v0, "buffer":Ljava/lang/StringBuilder;
    move v4, p4

    .local v4, "j":I
    :goto_0
    array-length v6, p0

    if-lt v4, v6, :cond_3

    .line 117
    return-void

    .line 90
    :cond_3
    array-length v6, p0

    sub-int v1, v6, v4

    .line 92
    .local v1, "chars_read":I
    if-le v1, v9, :cond_4

    .line 93
    const/16 v1, 0x10

    .line 95
    :cond_4
    invoke-static {v0, v2, v3}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-lt v5, v9, :cond_5

    .line 104
    const/4 v5, 0x0

    :goto_2
    if-lt v5, v1, :cond_7

    .line 111
    sget-object v6, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 113
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 114
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 115
    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 89
    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 97
    :cond_5
    if-ge v5, v1, :cond_6

    .line 98
    add-int v6, v5, v4

    aget-byte v6, p0, v6

    invoke-static {v0, v6}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;

    .line 102
    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 100
    :cond_6
    const-string v6, "  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 105
    :cond_7
    add-int v6, v5, v4

    aget-byte v6, p0, v6

    if-lt v6, v8, :cond_8

    add-int v6, v5, v4

    aget-byte v6, p0, v6

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_8

    .line 106
    add-int v6, v5, v4

    aget-byte v6, p0, v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 108
    :cond_8
    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4
.end method
