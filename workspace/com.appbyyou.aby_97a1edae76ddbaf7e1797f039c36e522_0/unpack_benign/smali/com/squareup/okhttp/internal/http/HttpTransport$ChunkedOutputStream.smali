.class final Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;
.super Lcom/squareup/okhttp/internal/AbstractOutputStream;
.source "HttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkedOutputStream"
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final FINAL_CHUNK:[B

.field private static final HEX_DIGITS:[B


# instance fields
.field private final bufferedChunk:Ljava/io/ByteArrayOutputStream;

.field private final hex:[B

.field private final maxChunkLength:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    .line 257
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->HEX_DIGITS:[B

    .line 260
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->FINAL_CHUNK:[B

    return-void

    .line 256
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 257
    nop

    :array_1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    .line 260
    :array_2
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "socketOut"    # Ljava/io/OutputStream;
    .param p2, "maxChunkLength"    # I

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/AbstractOutputStream;-><init>()V

    .line 263
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    .line 270
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 271
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->dataLength(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    .line 272
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    .line 273
    return-void

    .line 263
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xat
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;ILcom/squareup/okhttp/internal/http/HttpTransport$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/http/HttpTransport$1;

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private dataLength(I)I
    .locals 3
    .param p1, "dataPlusHeaderLength"    # I

    .prologue
    .line 281
    const/4 v0, 0x4

    .line 282
    .local v0, "headerLength":I
    sub-int v1, p1, v0

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 282
    shr-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 285
    :cond_0
    sub-int v2, p1, v0

    return v2
.end method

.method private writeBufferedChunkToSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 348
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeHex(I)V

    .line 353
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 354
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 355
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v2, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method private writeHex(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    const/16 v0, 0x8

    .line 324
    .local v0, "cursor":I
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->HEX_DIGITS:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 325
    ushr-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 327
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 344
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z

    .line 342
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 343
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v1, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->FINAL_CHUNK:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 334
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->checkNotClosed()V

    .line 291
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/squareup/okhttp/internal/Util;->checkOffsetAndCount(III)V

    .line 293
    :goto_0
    if-lez p3, :cond_3

    .line 296
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    if-ge p3, v1, :cond_2

    .line 298
    :cond_0
    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 300
    .local v0, "numBytesWritten":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 301
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    if-ne v1, v2, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 312
    :cond_1
    :goto_1
    add-int/2addr p2, v0

    .line 313
    sub-int/2addr p3, v0

    .line 314
    goto :goto_0

    .line 306
    .end local v0    # "numBytesWritten":I
    :cond_2
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    .line 307
    .restart local v0    # "numBytesWritten":I
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeHex(I)V

    .line 308
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 309
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v2, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 290
    .end local v0    # "numBytesWritten":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 315
    :cond_3
    monitor-exit p0

    return-void
.end method
