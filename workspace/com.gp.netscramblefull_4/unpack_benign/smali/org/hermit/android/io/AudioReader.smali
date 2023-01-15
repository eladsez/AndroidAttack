.class public Lorg/hermit/android/io/AudioReader;
.super Ljava/lang/Object;
.source "AudioReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/io/AudioReader$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindMeter"


# instance fields
.field private audioInput:Landroid/media/AudioRecord;

.field private inputBlockSize:I

.field private inputBuffer:[[S

.field private inputBufferIndex:I

.field private inputBufferWhich:I

.field private inputListener:Lorg/hermit/android/io/AudioReader$Listener;

.field private readerThread:Ljava/lang/Thread;

.field private running:Z

.field private sleepTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object v3, p0, Lorg/hermit/android/io/AudioReader;->inputBuffer:[[S

    .line 288
    iput v2, p0, Lorg/hermit/android/io/AudioReader;->inputBufferWhich:I

    .line 289
    iput v2, p0, Lorg/hermit/android/io/AudioReader;->inputBufferIndex:I

    .line 292
    iput v2, p0, Lorg/hermit/android/io/AudioReader;->inputBlockSize:I

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/android/io/AudioReader;->sleepTime:J

    .line 298
    iput-object v3, p0, Lorg/hermit/android/io/AudioReader;->inputListener:Lorg/hermit/android/io/AudioReader$Listener;

    .line 301
    iput-boolean v2, p0, Lorg/hermit/android/io/AudioReader;->running:Z

    .line 304
    iput-object v3, p0, Lorg/hermit/android/io/AudioReader;->readerThread:Ljava/lang/Thread;

    .line 85
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/io/AudioReader;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/hermit/android/io/AudioReader;->readerRun()V

    return-void
.end method

.method private readDone([S)V
    .locals 1
    .param p1, "buffer"    # [S

    .prologue
    .line 256
    iget-object v0, p0, Lorg/hermit/android/io/AudioReader;->inputListener:Lorg/hermit/android/io/AudioReader$Listener;

    invoke-virtual {v0, p1}, Lorg/hermit/android/io/AudioReader$Listener;->onReadComplete([S)V

    .line 257
    return-void
.end method

.method private readError(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lorg/hermit/android/io/AudioReader;->inputListener:Lorg/hermit/android/io/AudioReader$Listener;

    invoke-virtual {v0, p1}, Lorg/hermit/android/io/AudioReader$Listener;->onReadError(I)V

    .line 268
    return-void
.end method

.method private readerRun()V
    .locals 22

    .prologue
    .line 170
    const/16 v17, 0xc8

    .line 172
    .local v17, "timeout":I
    :goto_0
    if-lez v17, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioRecord;->getState()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 178
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioRecord;->getState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 179
    const-string v18, "WindMeter"

    const-string v19, "Audio reader failed to initialize"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/hermit/android/io/AudioReader;->readError(I)V

    .line 181
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/hermit/android/io/AudioReader;->running:Z

    .line 247
    :cond_1
    :goto_2
    return-void

    .line 173
    :cond_2
    const-wide/16 v18, 0x32

    :try_start_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    add-int/lit8 v17, v17, -0x32

    goto :goto_0

    .line 186
    :cond_3
    :try_start_2
    const-string v18, "WindMeter"

    const-string v19, "Reader: Start Recording"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioRecord;->startRecording()V

    .line 188
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/hermit/android/io/AudioReader;->running:Z

    move/from16 v18, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v18, :cond_5

    .line 243
    :cond_4
    :goto_4
    const-string v18, "WindMeter"

    const-string v19, "Reader: Stop Recording"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioRecord;->getState()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioRecord;->stop()V

    goto :goto_2

    .line 189
    :cond_5
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 191
    .local v15, "stime":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/hermit/android/io/AudioReader;->running:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/io/AudioReader;->inputBlockSize:I

    move v11, v0

    .line 195
    .local v11, "readSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/io/AudioReader;->inputBlockSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/io/AudioReader;->inputBufferIndex:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    .line 196
    .local v14, "space":I
    if-le v11, v14, :cond_6

    .line 197
    move v11, v14

    .line 198
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->inputBuffer:[[S

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/io/AudioReader;->inputBufferWhich:I

    move/from16 v19, v0

    aget-object v4, v18, v19

    .line 199
    .local v4, "buffer":[S
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/io/AudioReader;->inputBufferIndex:I

    move v9, v0

    .line 201
    .local v9, "index":I
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v9

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v10

    .line 204
    .local v10, "nread":I
    const/4 v5, 0x0

    .line 205
    .local v5, "done":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/hermit/android/io/AudioReader;->running:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 206
    monitor-exit v4

    goto :goto_4

    .line 201
    .end local v5    # "done":Z
    .end local v10    # "nread":I
    :catchall_0
    move-exception v18

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 242
    .end local v4    # "buffer":[S
    .end local v9    # "index":I
    .end local v11    # "readSize":I
    .end local v14    # "space":I
    .end local v15    # "stime":J
    :catchall_1
    move-exception v18

    .line 243
    const-string v19, "WindMeter"

    const-string v20, "Reader: Stop Recording"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioRecord;->getState()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioRecord;->stop()V

    .line 246
    :cond_7
    throw v18

    .line 208
    .restart local v4    # "buffer":[S
    .restart local v5    # "done":Z
    .restart local v9    # "index":I
    .restart local v10    # "nread":I
    .restart local v11    # "readSize":I
    .restart local v14    # "space":I
    .restart local v15    # "stime":J
    :cond_8
    if-gez v10, :cond_9

    .line 209
    :try_start_6
    const-string v18, "WindMeter"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Audio read failed: error "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/hermit/android/io/AudioReader;->readError(I)V

    .line 211
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/hermit/android/io/AudioReader;->running:Z

    .line 212
    monitor-exit v4

    goto/16 :goto_4

    .line 214
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/io/AudioReader;->inputBufferIndex:I

    move/from16 v18, v0

    add-int v6, v18, v10

    .line 215
    .local v6, "end":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/io/AudioReader;->inputBlockSize:I

    move/from16 v18, v0

    move v0, v6

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/io/AudioReader;->inputBufferWhich:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/hermit/android/io/AudioReader;->inputBufferWhich:I

    .line 217
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/hermit/android/io/AudioReader;->inputBufferIndex:I

    .line 218
    const/4 v5, 0x1

    .line 222
    :goto_5
    if-eqz v5, :cond_b

    .line 223
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/hermit/android/io/AudioReader;->readDone([S)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 233
    .local v7, "etime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/hermit/android/io/AudioReader;->sleepTime:J

    move-wide/from16 v18, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-long v20, v7, v15

    sub-long v12, v18, v20

    .line 234
    .local v12, "sleep":J
    const-wide/16 v18, 0x5

    cmp-long v18, v12, v18

    if-gez v18, :cond_a

    .line 235
    const-wide/16 v12, 0x5

    .line 237
    :cond_a
    :try_start_7
    invoke-virtual {v4, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    .end local v7    # "etime":J
    .end local v12    # "sleep":J
    :cond_b
    :goto_6
    :try_start_8
    monitor-exit v4

    goto/16 :goto_3

    .line 220
    :cond_c
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/hermit/android/io/AudioReader;->inputBufferIndex:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 238
    .restart local v7    # "etime":J
    .restart local v12    # "sleep":J
    :catch_0
    move-exception v18

    goto :goto_6

    .line 176
    .end local v4    # "buffer":[S
    .end local v5    # "done":Z
    .end local v6    # "end":I
    .end local v7    # "etime":J
    .end local v9    # "index":I
    .end local v10    # "nread":I
    .end local v11    # "readSize":I
    .end local v12    # "sleep":J
    .end local v14    # "space":I
    .end local v15    # "stime":J
    :catch_1
    move-exception v18

    goto/16 :goto_1
.end method


# virtual methods
.method public startReader(IILorg/hermit/android/io/AudioReader$Listener;)V
    .locals 6
    .param p1, "rate"    # I
    .param p2, "block"    # I
    .param p3, "listener"    # Lorg/hermit/android/io/AudioReader$Listener;

    .prologue
    .line 102
    const-string v0, "WindMeter"

    const-string v1, "Reader: Start Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-enter p0

    .line 106
    const/4 v0, 0x2

    .line 107
    const/4 v1, 0x2

    .line 105
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    .line 110
    .local v5, "audioBuf":I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    .line 112
    const/4 v3, 0x2

    .line 113
    const/4 v4, 0x2

    move v2, p1

    .line 114
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 110
    iput-object v0, p0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    .line 115
    iput p2, p0, Lorg/hermit/android/io/AudioReader;->inputBlockSize:I

    .line 116
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/hermit/android/io/AudioReader;->sleepTime:J

    .line 117
    const/4 v0, 0x2

    iget v1, p0, Lorg/hermit/android/io/AudioReader;->inputBlockSize:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/hermit/android/io/AudioReader;->inputBuffer:[[S

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lorg/hermit/android/io/AudioReader;->inputBufferWhich:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lorg/hermit/android/io/AudioReader;->inputBufferIndex:I

    .line 120
    iput-object p3, p0, Lorg/hermit/android/io/AudioReader;->inputListener:Lorg/hermit/android/io/AudioReader$Listener;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/hermit/android/io/AudioReader;->running:Z

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/hermit/android/io/AudioReader$1;

    invoke-direct {v1, p0}, Lorg/hermit/android/io/AudioReader$1;-><init>(Lorg/hermit/android/io/AudioReader;)V

    .line 125
    const-string v2, "Audio Reader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 122
    iput-object v0, p0, Lorg/hermit/android/io/AudioReader;->readerThread:Ljava/lang/Thread;

    .line 126
    iget-object v0, p0, Lorg/hermit/android/io/AudioReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    monitor-exit p0

    .line 128
    return-void

    .line 103
    .end local v5    # "audioBuf":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopReader()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "WindMeter"

    .line 135
    const-string v0, "WindMeter"

    const-string v0, "Reader: Signal Stop"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    monitor-enter p0

    .line 137
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/hermit/android/io/AudioReader;->running:Z

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    iget-object v0, p0, Lorg/hermit/android/io/AudioReader;->readerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/hermit/android/io/AudioReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/hermit/android/io/AudioReader;->readerThread:Ljava/lang/Thread;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_2
    iget-object v0, p0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/io/AudioReader;->audioInput:Landroid/media/AudioRecord;

    .line 148
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    const-string v0, "WindMeter"

    const-string v0, "Reader: Thread Stopped"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 148
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method
