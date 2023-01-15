.class public Lorg/apache/commons/io/output/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "WriterOutputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private final decoderIn:Ljava/nio/ByteBuffer;

.field private final decoderOut:Ljava/nio/CharBuffer;

.field private final writeImmediately:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 165
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/output/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 154
    const/16 v0, 0x400

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/output/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/lang/String;IZ)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "bufferSize"    # I
    .param p4, "writeImmediately"    # Z

    .prologue
    .line 142
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/apache/commons/io/output/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 126
    const/16 v0, 0x400

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/output/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/nio/charset/Charset;IZ)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I
    .param p4, "writeImmediately"    # Z

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 86
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    .line 108
    iput-object p1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->writer:Ljava/io/Writer;

    .line 109
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 110
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 111
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 112
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    .line 113
    iput-boolean p4, p0, Lorg/apache/commons/io/output/WriterOutputStream;->writeImmediately:Z

    .line 114
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    .line 115
    return-void
.end method

.method private flushOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 271
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 273
    :cond_0
    return-void
.end method

.method private processInput(Z)V
    .locals 4
    .param p1, "endOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 248
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2, v3, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 249
    .local v0, "coderResult":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-direct {p0}, Lorg/apache/commons/io/output/WriterOutputStream;->flushOutput()V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 261
    return-void

    .line 256
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected coder result"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/WriterOutputStream;->processInput(Z)V

    .line 233
    invoke-direct {p0}, Lorg/apache/commons/io/output/WriterOutputStream;->flushOutput()V

    .line 234
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 235
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/apache/commons/io/output/WriterOutputStream;->flushOutput()V

    .line 221
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 222
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/io/output/WriterOutputStream;->write([BII)V

    .line 210
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/output/WriterOutputStream;->write([BII)V

    .line 199
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    :goto_0
    if-gtz p3, :cond_1

    .line 185
    iget-boolean v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->writeImmediately:Z

    if-eqz v1, :cond_0

    .line 186
    invoke-direct {p0}, Lorg/apache/commons/io/output/WriterOutputStream;->flushOutput()V

    .line 188
    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 180
    .local v0, "c":I
    iget-object v1, p0, Lorg/apache/commons/io/output/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 181
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/WriterOutputStream;->processInput(Z)V

    .line 182
    sub-int/2addr p3, v0

    .line 183
    add-int/2addr p2, v0

    goto :goto_0
.end method
