.class public Lorg/apache/commons/io/input/CountingInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected declared-synchronized afterRead(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByteCount()J
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    .line 90
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 91
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The byte count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public declared-synchronized resetByteCount()J
    .locals 4

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 140
    .local v0, "tmp":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-wide v0

    .line 139
    .end local v0    # "tmp":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public resetCount()I
    .locals 5

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->resetByteCount()J

    move-result-wide v0

    .line 108
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 109
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The byte count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public declared-synchronized skip(J)J
    .locals 4
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    .line 60
    .local v0, "skip":J
    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-wide v0

    .line 59
    .end local v0    # "skip":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
