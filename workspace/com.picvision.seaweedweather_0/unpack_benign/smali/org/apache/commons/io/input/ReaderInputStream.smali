.class public Lorg/apache/commons/io/input/ReaderInputStream;
.super Ljava/io/InputStream;
.source "ReaderInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final encoderIn:Ljava/nio/CharBuffer;

.field private final encoderOut:Ljava/nio/ByteBuffer;

.field private endOfInput:Z

.field private lastCoderResult:Ljava/nio/charset/CoderResult;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 153
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 143
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "bufferSize"    # I

    .prologue
    .line 132
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 121
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 94
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    .line 107
    iput-object p1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    .line 108
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 109
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    .line 110
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 111
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 236
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 224
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 225
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ReaderInputStream;->read([B)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/ReaderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "read":I
    :cond_0
    :goto_0
    if-gtz p3, :cond_1

    .line 199
    :goto_1
    if-nez v2, :cond_6

    iget-boolean v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v3, :cond_6

    move v3, v7

    :goto_2
    return v3

    .line 170
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lez v3, :cond_2

    .line 171
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 172
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    .local v0, "c":I
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 174
    add-int/2addr p2, v0

    .line 175
    sub-int/2addr p3, v0

    .line 176
    add-int/2addr v2, v0

    .line 177
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 179
    .end local v0    # "c":I
    :cond_2
    iget-boolean v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 181
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .line 185
    .local v1, "position":I
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 186
    .restart local v0    # "c":I
    if-ne v0, v7, :cond_5

    .line 187
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    .line 191
    :goto_3
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    .end local v0    # "c":I
    .end local v1    # "position":I
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    iget-object v5, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    iget-boolean v6, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    .line 194
    iget-boolean v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 189
    .restart local v0    # "c":I
    .restart local v1    # "position":I
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    add-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    .end local v0    # "c":I
    .end local v1    # "position":I
    :cond_6
    move v3, v2

    .line 199
    goto/16 :goto_2
.end method
