.class public abstract Lorg/apache/commons/io/input/ProxyReader;
.super Ljava/io/FilterReader;
.source "ProxyReader.java"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "proxy"    # Ljava/io/Reader;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    return-void
.end method

.method protected beforeRead(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 166
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1, p1}, Ljava/io/Reader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 180
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 56
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 57
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    .line 58
    .local v0, "c":I
    if-eq v0, v3, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 62
    .end local v0    # "c":I
    :goto_1
    return v2

    .restart local v0    # "c":I
    :cond_0
    move v2, v3

    .line 58
    goto :goto_0

    .line 60
    .end local v0    # "c":I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 61
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    move v2, v3

    .line 62
    goto :goto_1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 3
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 117
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 118
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 122
    .end local v1    # "n":I
    :goto_1
    return v2

    .line 116
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 122
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public read([C)I
    .locals 3
    .param p1, "chr"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 76
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2, p1}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 77
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 81
    .end local v1    # "n":I
    :goto_1
    return v2

    .line 75
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 81
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public read([CII)I
    .locals 3
    .param p1, "chr"    # [C
    .param p2, "st"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 97
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 98
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 102
    .end local v1    # "n":I
    :goto_0
    return v2

    .line 100
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 102
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 193
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public skip(J)J
    .locals 3
    .param p1, "ln"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 138
    :goto_0
    return-wide v1

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 138
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
