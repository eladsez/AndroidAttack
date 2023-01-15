.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final delay:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private volatile run:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .prologue
    .line 140
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delay"    # J

    .prologue
    .line 150
    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delay"    # J
    .param p5, "end"    # Z

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 162
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 163
    iput-wide p3, p0, Lorg/apache/commons/io/input/Tailer;->delay:J

    .line 164
    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 167
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 168
    invoke-interface {p2, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 169
    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .prologue
    .line 209
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delay"    # J

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delay"    # J
    .param p4, "end"    # Z

    .prologue
    .line 181
    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 182
    .local v0, "tailer":Lorg/apache/commons/io/input/Tailer;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    .local v6, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 184
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 185
    return-object v0
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .locals 3
    .param p1, "reader"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    return-wide v1

    .line 340
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delay:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method public run()V
    .locals 12

    .prologue
    const-string v10, "r"

    .line 234
    const/4 v7, 0x0

    .line 236
    .local v7, "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v1, 0x0

    .line 237
    .local v1, "last":J
    const-wide/16 v5, 0x0

    .local v5, "position":J
    move-object v8, v7

    .line 239
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .local v8, "reader":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_0
    iget-boolean v10, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v10, :cond_0

    if-eqz v8, :cond_1

    .line 260
    :cond_0
    :goto_1
    iget-boolean v10, p0, Lorg/apache/commons/io/input/Tailer;->run:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_4

    .line 319
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v7, v8

    .line 321
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :goto_2
    return-void

    .line 241
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :goto_3
    if-nez v7, :cond_2

    .line 248
    :try_start_2
    iget-wide v10, p0, Lorg/apache/commons/io/input/Tailer;->delay:J

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 242
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 243
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v10}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 249
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    move-object v8, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 253
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_4
    iget-boolean v10, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    move-wide v5, v10

    .line 254
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 255
    invoke-virtual {v7, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v8, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 253
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :cond_3
    const-wide/16 v10, 0x0

    move-wide v5, v10

    goto :goto_4

    .line 263
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :cond_4
    :try_start_5
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 265
    .local v3, "length":J
    cmp-long v10, v3, v5

    if-gez v10, :cond_5

    .line 268
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v10}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 273
    move-object v9, v8

    .line 274
    .local v9, "save":Ljava/io/RandomAccessFile;
    :try_start_6
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 275
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v5, 0x0

    .line 277
    :try_start_7
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v8, v7

    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 278
    :catch_2
    move-exception v10

    move-object v0, v10

    move-object v7, v8

    .line 280
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :goto_5
    :try_start_8
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v10}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v8, v7

    .line 282
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 288
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "save":Ljava/io/RandomAccessFile;
    :cond_5
    cmp-long v10, v3, v5

    if-lez v10, :cond_7

    .line 291
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 292
    invoke-direct {p0, v8}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v5

    .line 309
    :cond_6
    :goto_6
    :try_start_a
    iget-wide v10, p0, Lorg/apache/commons/io/input/Tailer;->delay:J

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 310
    :catch_3
    move-exception v10

    goto :goto_1

    .line 294
    :cond_7
    :try_start_b
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v10, v1, v2}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 300
    const-wide/16 v5, 0x0

    .line 301
    invoke-virtual {v8, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 305
    invoke-direct {p0, v8}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v5

    goto :goto_6

    .line 314
    .end local v3    # "length":J
    :catch_4
    move-exception v10

    move-object v0, v10

    move-object v7, v8

    .line 316
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :goto_7
    :try_start_c
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v10, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 319
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_2

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v10

    move-object v7, v8

    .line 319
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v7    # "reader":Ljava/io/RandomAccessFile;
    :goto_8
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 320
    throw v10

    .line 318
    :catchall_1
    move-exception v10

    goto :goto_8

    .line 314
    :catch_5
    move-exception v10

    move-object v0, v10

    goto :goto_7

    .line 278
    .restart local v3    # "length":J
    .restart local v9    # "save":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v10

    move-object v0, v10

    goto :goto_5
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 328
    return-void
.end method
