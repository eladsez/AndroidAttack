.class public Lanywheresoftware/b4a/ConnectorUtils;
.super Ljava/lang/Object;
.source "ConnectorUtils.java"


# static fields
.field public static final BOOL:B = 0x5t

.field public static final CACHED_STRING:B = 0x9t

.field public static final COLOR:B = 0x6t

.field public static final ENDOFMAP:B = 0x4t

.field public static final FLOAT:B = 0x7t

.field public static final INT:B = 0x1t

.field public static final MAP:B = 0x3t

.field public static final SCALED_INT:B = 0x8t

.field public static final STRING:B = 0x2t

.field private static charset:Ljava/nio/charset/Charset;

.field private static myBb:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lanywheresoftware/b4a/ConnectorUtils$1;

    invoke-direct {v0}, Lanywheresoftware/b4a/ConnectorUtils$1;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    .line 31
    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lanywheresoftware/b4a/ConnectorUtils;->charset:Ljava/nio/charset/Charset;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mark()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 70
    return-void
.end method

.method private static readCacheString(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "din"    # Ljava/io/DataInputStream;
    .param p1, "cache"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v0

    aget-object v0, p1, v0

    goto :goto_0
.end method

.method public static readInt(Ljava/io/DataInputStream;)I
    .locals 1
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static readMap(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p0, "in"    # Ljava/io/DataInputStream;
    .param p1, "cache"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v2, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {p0, p1}, Lanywheresoftware/b4a/ConnectorUtils;->readCacheString(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 119
    .local v0, "b":B
    const/4 v3, 0x0

    .line 120
    .local v3, "value":Ljava/lang/Object;
    if-ne v0, v8, :cond_0

    .line 121
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 145
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    .line 123
    invoke-static {p0, p1}, Lanywheresoftware/b4a/ConnectorUtils;->readCacheString(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_1

    .line 125
    .local v3, "value":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 126
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_1

    .line 129
    .local v3, "value":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x7

    if-ne v0, v4, :cond_3

    .line 130
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .local v3, "value":Ljava/lang/Float;
    goto :goto_1

    .line 132
    .local v3, "value":Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 133
    invoke-static {p0, p1}, Lanywheresoftware/b4a/ConnectorUtils;->readMap(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .local v3, "value":Ljava/util/HashMap;
    goto :goto_1

    .line 134
    .local v3, "value":Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    .line 135
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    if-ne v4, v8, :cond_5

    move v4, v8

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, "value":Ljava/lang/Boolean;
    goto :goto_1

    .local v3, "value":Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 137
    :cond_6
    const/4 v4, 0x6

    if-ne v0, v4, :cond_7

    .line 138
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 139
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    .line 138
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "value":Ljava/lang/Integer;
    goto :goto_1

    .line 141
    .local v3, "value":Ljava/lang/Object;
    :cond_7
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    .line 147
    return-object v2

    .line 144
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "unknown type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v2

    .line 101
    .local v2, "size":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 104
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 105
    sget-object v3, Lanywheresoftware/b4a/ConnectorUtils;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method public static resetToMark()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 73
    return-void
.end method

.method public static sendMessage(Lanywheresoftware/b4a/ConnectorConsumer;)V
    .locals 7
    .param p0, "consumer"    # Lanywheresoftware/b4a/ConnectorConsumer;

    .prologue
    const/4 v6, 0x4

    .line 39
    if-nez p0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v5, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 42
    .local v2, "bbW":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    invoke-interface {p0}, Lanywheresoftware/b4a/ConnectorConsumer;->shouldAddPrefix()Z

    move-result v0

    .line 45
    .local v0, "addPrefix":Z
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    new-array v1, v5, [B

    .line 48
    .local v1, "b":[B
    array-length v5, v1

    sub-int v4, v5, v6

    .line 49
    .local v4, "size":I
    invoke-virtual {v2, v1, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 50
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x3

    if-le v3, v5, :cond_1

    .line 59
    .end local v3    # "i":I
    .end local v4    # "size":I
    :goto_2
    invoke-interface {p0, v1}, Lanywheresoftware/b4a/ConnectorConsumer;->putTask([B)V

    goto :goto_0

    .line 51
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    :cond_1
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 52
    shr-int/lit8 v4, v4, 0x8

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v1    # "b":[B
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    new-array v1, v5, [B

    .line 57
    .restart local v1    # "b":[B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_2
.end method

.method public static startMessage(B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "message"    # B

    .prologue
    .line 33
    sget-object v1, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 34
    .local v0, "bbW":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 36
    return-object v0
.end method

.method public static writeFloat(F)V
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 66
    sget-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 67
    return-void
.end method

.method public static writeInt(I)V
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 63
    sget-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method

.method public static writeString(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string p0, ""

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2bc

    if-le v3, v4, :cond_1

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2bb

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "......"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_1
    sget-object v3, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 83
    .local v1, "bbW":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 84
    .local v2, "pos":I
    sget-object v3, Lanywheresoftware/b4a/ConnectorUtils;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_2

    move v3, v5

    .line 93
    :goto_0
    return v3

    .line 89
    :cond_2
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 93
    const/4 v3, 0x1

    goto :goto_0
.end method
