.class Lcom/parse/ParseCommandCache;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseCommandCache$TestHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseCommandCache"

.field private static filenameCounter:I

.field private static lock:Ljava/lang/Object;


# instance fields
.field private cachePath:Ljava/io/File;

.field private connected:Z

.field private connectivityListener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field private log:Ljava/util/logging/Logger;

.field private maxCacheSizeBytes:I

.field private pendingTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">.TaskCompletionSource;>;"
        }
    .end annotation
.end field

.field private running:Z

.field private runningLock:Ljava/lang/Object;

.field private shouldStop:Z

.field private testHelper:Lcom/parse/ParseCommandCache$TestHelper;

.field private timeoutMaxRetries:I

.field private timeoutRetryWaitSeconds:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x5

    iput v1, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 41
    const-wide v1, 0x4082c00000000000L    # 600.0

    iput-wide v1, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 43
    const/high16 v1, 0xa00000

    iput v1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    .line 78
    new-instance v1, Lcom/parse/ParseCommandCache$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseCommandCache$1;-><init>(Lcom/parse/ParseCommandCache;)V

    iput-object v1, p0, Lcom/parse/ParseCommandCache;->connectivityListener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 91
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->connected:Z

    .line 92
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 93
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    .line 98
    const-string v1, "com.parse.ParseCommandCache"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    .line 101
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, "parseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "CommandCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    .line 105
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 107
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ConnectivityNotifier;->isConnected()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 113
    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCommandCache;->connectivityListener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v1, v2, p1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->resume()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/parse/ParseCommandCache;)V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/parse/ParseCommandCache;->runLoop()V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private maybeRunAllCommandsNow(I)V
    .locals 32
    .param p1, "retriesRemaining"    # I

    .prologue
    .line 454
    sget-object v26, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v26

    .line 455
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->connected:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 457
    monitor-exit v26

    .line 602
    :goto_0
    return-void

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 461
    .local v12, "fileNames":[Ljava/lang/String;
    if-eqz v12, :cond_1

    array-length v0, v12

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 462
    :cond_1
    monitor-exit v26

    goto :goto_0

    .line 454
    .end local v12    # "fileNames":[Ljava/lang/String;
    :catchall_0
    move-exception v24

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    .line 464
    .restart local v12    # "fileNames":[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 465
    array-length v0, v12

    move/from16 v27, v0

    const/16 v24, 0x0

    move/from16 v25, v24

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    .line 454
    monitor-exit v26

    goto :goto_0

    .line 465
    :cond_3
    aget-object v11, v12, v25

    .line 466
    .local v11, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    .local v10, "file":Ljava/io/File;
    const/16 v16, 0x0

    .line 470
    .local v16, "json":Lorg/json/JSONObject;
    const/4 v14, 0x0

    .line 473
    .local v14, "input":Ljava/io/InputStream;
    :try_start_2
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 474
    .end local v14    # "input":Ljava/io/InputStream;
    .local v15, "input":Ljava/io/InputStream;
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 475
    .local v4, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 477
    .local v21, "temp":[B
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .local v19, "read":I
    if-gtz v19, :cond_7

    .line 480
    new-instance v17, Lorg/json/JSONObject;

    const-string v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 500
    .end local v16    # "json":Lorg/json/JSONObject;
    .local v17, "json":Lorg/json/JSONObject;
    if-eqz v15, :cond_4

    .line 502
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 509
    :cond_4
    :goto_3
    const/4 v5, 0x0

    .line 511
    .local v5, "command":Lcom/parse/ParseCommand;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/parse/Task$TaskCompletionSource;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v20, v24

    .line 514
    .local v20, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :goto_4
    :try_start_6
    new-instance v5, Lcom/parse/ParseCommand;

    .end local v5    # "command":Lcom/parse/ParseCommand;
    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 524
    .restart local v5    # "command":Lcom/parse/ParseCommand;
    :try_start_7
    invoke-virtual {v5}, Lcom/parse/ParseCommand;->getLocalId()Ljava/lang/String;

    move-result-object v18

    .line 526
    .local v18, "localId":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v24

    new-instance v28, Lcom/parse/ParseCommandCache$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/ParseCommandCache$4;-><init>(Lcom/parse/ParseCommandCache;Lcom/parse/Task$TaskCompletionSource;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/parse/Task;->onSuccess(Lcom/parse/Continuation;)Lcom/parse/Task;

    move-result-object v6

    .line 545
    .local v6, "commandTask":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(Lcom/parse/Task;)Ljava/lang/Object;

    .line 546
    if-eqz v20, :cond_5

    .line 547
    invoke-virtual/range {v20 .. v20}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(Lcom/parse/Task;)Ljava/lang/Object;

    .line 551
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_16

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v24, v0

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V
    :try_end_7
    .catch Lcom/parse/ParseException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v14, v15

    .end local v15    # "input":Ljava/io/InputStream;
    .restart local v14    # "input":Ljava/io/InputStream;
    move-object/from16 v16, v17

    .line 465
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "command":Lcom/parse/ParseCommand;
    .end local v6    # "commandTask":Lcom/parse/Task;, "Lcom/parse/Task<Ljava/lang/Void;>;"
    .end local v17    # "json":Lorg/json/JSONObject;
    .end local v18    # "localId":Ljava/lang/String;
    .end local v19    # "read":I
    .end local v20    # "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    .end local v21    # "temp":[B
    .restart local v16    # "json":Lorg/json/JSONObject;
    :cond_6
    :goto_5
    add-int/lit8 v24, v25, 0x1

    move/from16 v25, v24

    goto/16 :goto_1

    .line 478
    .end local v14    # "input":Ljava/io/InputStream;
    .restart local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v19    # "read":I
    .restart local v21    # "temp":[B
    :cond_7
    const/16 v24, 0x0

    :try_start_8
    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_2

    .line 481
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "read":I
    .end local v21    # "temp":[B
    :catch_0
    move-exception v9

    move-object v14, v15

    .line 483
    .end local v15    # "input":Ljava/io/InputStream;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "input":Ljava/io/InputStream;
    :goto_6
    const/16 v24, 0x6

    :try_start_9
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v24, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "File disappeared from cache while being read."

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 500
    :cond_8
    if-eqz v14, :cond_6

    .line 502
    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 503
    :catch_1
    move-exception v24

    goto :goto_5

    .line 487
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v9

    .line 488
    .local v9, "e":Ljava/io/IOException;
    :goto_7
    const/16 v24, 0x6

    :try_start_b
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_9

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v24, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "Unable to read contents of file in cache."

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 500
    if-eqz v14, :cond_6

    .line 502
    :try_start_c
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 503
    :catch_3
    move-exception v24

    goto :goto_5

    .line 493
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 494
    .local v9, "e":Lorg/json/JSONException;
    :goto_8
    const/16 v24, 0x6

    :try_start_d
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_a

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v24, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "Error parsing JSON found in cache."

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 500
    if-eqz v14, :cond_6

    .line 502
    :try_start_e
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_5

    .line 503
    :catch_5
    move-exception v24

    goto/16 :goto_5

    .line 499
    .end local v9    # "e":Lorg/json/JSONException;
    :catchall_1
    move-exception v24

    .line 500
    :goto_9
    if-eqz v14, :cond_b

    .line 502
    :try_start_f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 506
    :cond_b
    :goto_a
    :try_start_10
    throw v24

    .line 511
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v16    # "json":Lorg/json/JSONObject;
    .restart local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "command":Lcom/parse/ParseCommand;
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v17    # "json":Lorg/json/JSONObject;
    .restart local v19    # "read":I
    .restart local v21    # "temp":[B
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 515
    .end local v5    # "command":Lcom/parse/ParseCommand;
    .restart local v20    # "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    :catch_6
    move-exception v9

    .line 516
    .restart local v9    # "e":Lorg/json/JSONException;
    const/16 v24, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_d

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v24, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "Unable to create ParseCommand from JSON."

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    move-object v14, v15

    .end local v15    # "input":Ljava/io/InputStream;
    .restart local v14    # "input":Ljava/io/InputStream;
    move-object/from16 v16, v17

    .line 520
    .end local v17    # "json":Lorg/json/JSONObject;
    .restart local v16    # "json":Lorg/json/JSONObject;
    goto/16 :goto_5

    .line 555
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v16    # "json":Lorg/json/JSONObject;
    .restart local v5    # "command":Lcom/parse/ParseCommand;
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v17    # "json":Lorg/json/JSONObject;
    :catch_7
    move-exception v9

    .line 556
    .local v9, "e":Lcom/parse/ParseException;
    invoke-virtual {v9}, Lcom/parse/ParseException;->getCode()I

    move-result v24

    const/16 v28, 0x64

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 557
    if-lez p1, :cond_16

    .line 560
    const/16 v24, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_e

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v24, v0

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Network timeout in command cache. Waiting for "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 562
    const-string v29, " seconds and then retrying "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " times."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 561
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 564
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 565
    .local v7, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v22, v7, v28

    .line 566
    .local v22, "waitUntil":J
    :cond_f
    :goto_b
    cmp-long v24, v7, v22

    if-ltz v24, :cond_10

    .line 586
    add-int/lit8 v24, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    move-object v14, v15

    .end local v15    # "input":Ljava/io/InputStream;
    .restart local v14    # "input":Ljava/io/InputStream;
    move-object/from16 v16, v17

    .end local v17    # "json":Lorg/json/JSONObject;
    .restart local v16    # "json":Lorg/json/JSONObject;
    goto/16 :goto_5

    .line 569
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v16    # "json":Lorg/json/JSONObject;
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v17    # "json":Lorg/json/JSONObject;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->connected:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 570
    :cond_11
    const/16 v24, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_12

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v24, v0

    const-string v25, "Aborting wait because runEventually thread should stop."

    invoke-virtual/range {v24 .. v25}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 573
    :cond_12
    monitor-exit v26
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 576
    :cond_13
    :try_start_11
    sget-object v24, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    sub-long v28, v22, v7

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 580
    :goto_c
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 581
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v28, v22, v28

    cmp-long v24, v7, v28

    if-gez v24, :cond_f

    .line 583
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v7, v22, v28

    goto :goto_b

    .line 577
    :catch_8
    move-exception v13

    .line 578
    .local v13, "ie":Ljava/lang/InterruptedException;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_c

    .line 589
    .end local v7    # "currentTime":J
    .end local v13    # "ie":Ljava/lang/InterruptedException;
    .end local v22    # "waitUntil":J
    :cond_14
    const/16 v24, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_15

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v24, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "Failed to run command."

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_16

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v24, v0

    const/16 v28, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .end local v9    # "e":Lcom/parse/ParseException;
    :cond_16
    move-object v14, v15

    .end local v15    # "input":Ljava/io/InputStream;
    .restart local v14    # "input":Ljava/io/InputStream;
    move-object/from16 v16, v17

    .end local v17    # "json":Lorg/json/JSONObject;
    .restart local v16    # "json":Lorg/json/JSONObject;
    goto/16 :goto_5

    .line 503
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "command":Lcom/parse/ParseCommand;
    .end local v19    # "read":I
    .end local v20    # "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    .end local v21    # "temp":[B
    :catch_9
    move-exception v25

    goto/16 :goto_a

    .end local v14    # "input":Ljava/io/InputStream;
    .end local v16    # "json":Lorg/json/JSONObject;
    .restart local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v17    # "json":Lorg/json/JSONObject;
    .restart local v19    # "read":I
    .restart local v21    # "temp":[B
    :catch_a
    move-exception v24

    goto/16 :goto_3

    .line 499
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "json":Lorg/json/JSONObject;
    .end local v19    # "read":I
    .end local v21    # "temp":[B
    .restart local v16    # "json":Lorg/json/JSONObject;
    :catchall_2
    move-exception v24

    move-object v14, v15

    .end local v15    # "input":Ljava/io/InputStream;
    .restart local v14    # "input":Ljava/io/InputStream;
    goto/16 :goto_9

    .line 493
    .end local v14    # "input":Ljava/io/InputStream;
    .restart local v15    # "input":Ljava/io/InputStream;
    :catch_b
    move-exception v9

    move-object v14, v15

    .end local v15    # "input":Ljava/io/InputStream;
    .restart local v14    # "input":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 487
    .end local v14    # "input":Ljava/io/InputStream;
    .restart local v15    # "input":Ljava/io/InputStream;
    :catch_c
    move-exception v9

    move-object v14, v15

    .end local v15    # "input":Ljava/io/InputStream;
    .restart local v14    # "input":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 481
    :catch_d
    move-exception v9

    goto/16 :goto_6
.end method

.method private removeFile(Ljava/io/File;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 188
    sget-object v9, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 190
    :try_start_0
    iget-object v8, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    const/4 v4, 0x0

    .line 195
    .local v4, "json":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 198
    .local v2, "input":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v7, v8, [B

    .line 202
    .local v7, "temp":[B
    :goto_0
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    if-gtz v6, :cond_1

    .line 205
    new-instance v5, Lorg/json/JSONObject;

    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 207
    .end local v4    # "json":Lorg/json/JSONObject;
    .local v5, "json":Lorg/json/JSONObject;
    :try_start_3
    new-instance v1, Lcom/parse/ParseCommand;

    invoke-direct {v1, v5}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V

    .line 208
    .local v1, "command":Lcom/parse/ParseCommand;
    invoke-virtual {v1}, Lcom/parse/ParseCommand;->releaseLocalIds()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 212
    if-eqz v3, :cond_3

    .line 214
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    move-object v4, v5

    .line 221
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "command":Lcom/parse/ParseCommand;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "read":I
    .end local v7    # "temp":[B
    .restart local v4    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 188
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    return-void

    .line 203
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v6    # "read":I
    .restart local v7    # "temp":[B
    :cond_1
    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {v0, v7, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 209
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "read":I
    .end local v7    # "temp":[B
    :catch_0
    move-exception v8

    move-object v2, v3

    .line 212
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_0

    .line 214
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 215
    :catch_1
    move-exception v8

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v8

    .line 212
    :goto_3
    if-eqz v2, :cond_2

    .line 214
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 218
    :cond_2
    :goto_4
    :try_start_9
    throw v8

    .line 188
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "json":Lorg/json/JSONObject;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v8

    .line 215
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "command":Lcom/parse/ParseCommand;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "read":I
    .restart local v7    # "temp":[B
    :catch_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    move-object v4, v5

    .end local v5    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "command":Lcom/parse/ParseCommand;
    .end local v6    # "read":I
    .end local v7    # "temp":[B
    :catch_3
    move-exception v10

    goto :goto_4

    .line 211
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "read":I
    .restart local v7    # "temp":[B
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    move-object v4, v5

    .end local v5    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    goto :goto_3

    .line 209
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "read":I
    .end local v7    # "temp":[B
    :catch_4
    move-exception v8

    goto :goto_2

    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "read":I
    .restart local v7    # "temp":[B
    :catch_5
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    move-object v4, v5

    .end local v5    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    goto :goto_2

    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v1    # "command":Lcom/parse/ParseCommand;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "json":Lorg/json/JSONObject;
    :cond_3
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    move-object v4, v5

    .end local v5    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private runEventuallyInternalAsync(Lcom/parse/ParseCommand;ZLcom/parse/ParseObject;)Lcom/parse/Task;
    .locals 24
    .param p1, "command"    # Lcom/parse/ParseCommand;
    .param p2, "preferOldest"    # Z
    .param p3, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Z",
            "Lcom/parse/ParseObject;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v17

    .line 275
    .local v17, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<Ljava/lang/Object;>.TaskCompletionSource;"
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_0

    .line 276
    invoke-virtual/range {p3 .. p3}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommand;->setLocalId(Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v10

    .line 279
    .local v10, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 292
    .local v9, "json":[B
    array-length v0, v9

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 293
    const/16 v19, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    const-string v20, "Unable to save command for later because it\'s too big."

    invoke-virtual/range {v19 .. v20}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 296
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    .line 299
    :cond_2
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v19

    .line 376
    .end local v9    # "json":[B
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v19

    .line 280
    :catch_0
    move-exception v3

    .line 281
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const/16 v19, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    sget-object v20, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v21, "UTF-8 isn\'t supported.  This shouldn\'t happen."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    .line 287
    :cond_4
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;

    move-result-object v19

    goto :goto_0

    .line 302
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v9    # "json":[B
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    sget-object v20, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v20

    .line 305
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "fileNames":[Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 307
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 308
    const/16 v16, 0x0

    .line 309
    .local v16, "size":I
    array-length v0, v6

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    .line 315
    array-length v0, v9

    move/from16 v19, v0

    add-int v16, v16, v19

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 317
    if-eqz p2, :cond_8

    .line 318
    const/16 v19, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    const-string v21, "Unable to save command for later because storage is full."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 321
    :cond_6
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/parse/Task;->forResult(Ljava/lang/Object;)Lcom/parse/Task;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v19

    .line 373
    :try_start_2
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    .line 321
    monitor-exit v20

    goto/16 :goto_0

    .line 302
    .end local v6    # "fileNames":[Ljava/lang/String;
    .end local v16    # "size":I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 309
    .restart local v6    # "fileNames":[Ljava/lang/String;
    .restart local v16    # "size":I
    :cond_7
    :try_start_3
    aget-object v5, v6, v19

    .line 310
    .local v5, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v16, v16, v22

    .line 309
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 323
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    const-string v21, "Deleting old commands to make room in command cache."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 326
    :cond_9
    const/4 v7, 0x0

    .local v7, "indexToDelete":I
    move v8, v7

    .line 327
    .end local v7    # "indexToDelete":I
    .local v8, "indexToDelete":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v8, v0, :cond_e

    .line 337
    .end local v8    # "indexToDelete":I
    .end local v16    # "size":I
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    .line 338
    .local v14, "prefix1":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x10

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 339
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    rsub-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 340
    .local v18, "zeroes":[C
    const/16 v19, 0x30

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([CC)V

    .line 341
    new-instance v19, Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 346
    .end local v18    # "zeroes":[C
    :cond_b
    sget v19, Lcom/parse/ParseCommandCache;->filenameCounter:I

    add-int/lit8 v21, v19, 0x1

    sput v21, Lcom/parse/ParseCommandCache;->filenameCounter:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    .line 347
    .local v15, "prefix2":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x8

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 348
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    rsub-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 349
    .restart local v18    # "zeroes":[C
    const/16 v19, 0x30

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([CC)V

    .line 350
    new-instance v19, Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 353
    .end local v18    # "zeroes":[C
    :cond_c
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v21, "CachedCommand_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 356
    .local v13, "prefix":Ljava/lang/String;
    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v13, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    .line 359
    .local v12, "path":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseCommand;->retainLocalIds()V

    .line 361
    new-instance v11, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 362
    .local v11, "output":Ljava/io/OutputStream;
    invoke-virtual {v11, v9}, Ljava/io/OutputStream;->write([B)V

    .line 363
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v19, v0

    const/16 v21, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    :cond_d
    :try_start_4
    sget-object v19, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notify()V

    .line 302
    .end local v6    # "fileNames":[Ljava/lang/String;
    .end local v11    # "output":Ljava/io/OutputStream;
    .end local v12    # "path":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "prefix1":Ljava/lang/String;
    .end local v15    # "prefix2":Ljava/lang/String;
    :goto_3
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    invoke-virtual/range {v17 .. v17}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object v19

    goto/16 :goto_0

    .line 328
    .restart local v6    # "fileNames":[Ljava/lang/String;
    .restart local v8    # "indexToDelete":I
    .restart local v16    # "size":I
    :cond_e
    :try_start_5
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v19, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "indexToDelete":I
    .restart local v7    # "indexToDelete":I
    aget-object v21, v6, v8

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v19, v0

    sub-int v16, v16, v19

    .line 330
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v8, v7

    .end local v7    # "indexToDelete":I
    .restart local v8    # "indexToDelete":I
    goto/16 :goto_2

    .line 368
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "fileNames":[Ljava/lang/String;
    .end local v8    # "indexToDelete":I
    .end local v16    # "size":I
    :catch_1
    move-exception v3

    .line 369
    .local v3, "e":Ljava/io/IOException;
    const/16 v19, 0x5

    :try_start_6
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_f

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    sget-object v21, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v22, "Unable to save command for later."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 373
    :cond_f
    :try_start_7
    sget-object v19, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notify()V

    goto :goto_3

    .line 372
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v19

    .line 373
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    .line 374
    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private runLoop()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 613
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    if-lt v8, v4, :cond_0

    .line 614
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v5, "Parse command cache has started processing queued commands."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 617
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 618
    :try_start_0
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v5, :cond_2

    .line 620
    monitor-exit v4

    .line 659
    :cond_1
    :goto_0
    return-void

    .line 622
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 623
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 617
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "shouldRun":Z
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 629
    :try_start_1
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v1, v2

    .line 628
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 631
    :goto_2
    if-nez v1, :cond_5

    .line 652
    iget-object v3, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 653
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 654
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 652
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 656
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v8, v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v3, "saveEventually thread has stopped processing commands."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .end local v1    # "shouldRun":Z
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .restart local v1    # "shouldRun":Z
    :cond_4
    move v1, v3

    .line 629
    goto :goto_1

    .line 628
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 632
    :cond_5
    sget-object v5, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 634
    :try_start_5
    iget v4, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    invoke-direct {p0, v4}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    .line 635
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v4, :cond_6

    .line 637
    :try_start_6
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 647
    :cond_6
    :goto_3
    :try_start_7
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-eqz v4, :cond_a

    move v1, v2

    .line 632
    :goto_4
    monitor-exit v5

    goto :goto_2

    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    :try_start_8
    iput-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 642
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x6

    :try_start_9
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v4, v6, :cond_7

    .line 644
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "saveEventually thread had an error."

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 647
    :cond_7
    :try_start_a
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-eqz v4, :cond_8

    move v1, v2

    :goto_5
    goto :goto_4

    :cond_8
    move v1, v3

    goto :goto_5

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    .line 647
    iget-boolean v6, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-eqz v6, :cond_9

    move v1, v2

    .line 648
    :goto_6
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_9
    move v1, v3

    .line 647
    goto :goto_6

    :cond_a
    move v1, v3

    goto :goto_4

    .line 652
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2
.end method

.method private waitForTaskWithoutLock(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Task",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 425
    :try_start_0
    new-instance v0, Lcom/parse/Capture;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/parse/Capture;-><init>(Ljava/lang/Object;)V

    .line 426
    .local v0, "finished":Lcom/parse/Capture;, "Lcom/parse/Capture<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/parse/ParseCommandCache$3;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommandCache$3;-><init>(Lcom/parse/ParseCommandCache;Lcom/parse/Capture;)V

    .line 434
    sget-object v4, Lcom/parse/ParseCommand;->networkThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 426
    invoke-virtual {p1, v2, v4}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;Ljava/util/concurrent/Executor;)Lcom/parse/Task;

    .line 435
    :goto_0
    invoke-virtual {v0}, Lcom/parse/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    invoke-static {p1}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 437
    :cond_0
    :try_start_1
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "ie":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_0

    .line 424
    .end local v0    # "finished":Lcom/parse/Capture;, "Lcom/parse/Capture<Ljava/lang/Boolean;>;"
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 393
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 394
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 395
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 396
    monitor-exit v3

    .line 403
    :goto_0
    return-void

    .line 398
    :cond_0
    array-length v4, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    .line 401
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 393
    monitor-exit v3

    goto :goto_0

    .end local v1    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 398
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    :try_start_1
    aget-object v0, v1, v2

    .line 399
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Lcom/parse/ParseCommandCache$TestHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseCommandCache$TestHelper;-><init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseCommandCache$TestHelper;)V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    return-object v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_0

    .line 167
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 169
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 167
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-nez v0, :cond_1

    .line 165
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 165
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 174
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pendingCount()I
    .locals 3

    .prologue
    .line 383
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "files":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0

    .line 383
    .end local v0    # "files":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 141
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    iget-boolean v1, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/parse/ParseCommandCache$2;

    const-string v3, "ParseCommandCache.runLoop()"

    invoke-direct {v1, p0, v3}, Lcom/parse/ParseCommandCache$2;-><init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Lcom/parse/ParseCommandCache$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 160
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 155
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 153
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 141
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public runEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)Lcom/parse/Task;
    .locals 1
    .param p1, "command"    # Lcom/parse/ParseCommand;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "Lcom/parse/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseCommandCache;->runEventuallyInternalAsync(Lcom/parse/ParseCommand;ZLcom/parse/ParseObject;)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method public setConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 409
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->connected:Z

    if-eq v0, p1, :cond_0

    .line 411
    iput-boolean p1, p0, Lcom/parse/ParseCommandCache;->connected:Z

    .line 412
    if-eqz p1, :cond_0

    .line 413
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 409
    :cond_0
    monitor-exit v1

    .line 417
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 2
    .param p1, "bytes"    # I

    .prologue
    .line 134
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 134
    monitor-exit v1

    .line 137
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutMaxRetries(I)V
    .locals 2
    .param p1, "tries"    # I

    .prologue
    .line 120
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 120
    monitor-exit v1

    .line 123
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 2
    .param p1, "seconds"    # D

    .prologue
    .line 127
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iput-wide p1, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 127
    monitor-exit v1

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 230
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    monitor-exit v1

    .line 233
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
