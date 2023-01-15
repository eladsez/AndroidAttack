.class public Lcom/parse/Parse;
.super Ljava/lang/Object;
.source "Parse.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "com.parse.Parse"

.field static applicationContext:Landroid/content/Context;

.field static applicationId:Ljava/lang/String;

.field static clientKey:Ljava/lang/String;

.field static commandCache:Lcom/parse/ParseCommandCache;

.field private static final dateFormat:Ljava/text/DateFormat;

.field static final lock:Ljava/lang/Object;

.field private static logLevel:I

.field static maxKeyValueCacheBytes:I

.field static maxKeyValueCacheFiles:I

.field static maxParseFileSize:I

.field static uiThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    const/4 v1, 0x6

    sput v1, Lcom/parse/Parse;->logLevel:I

    .line 58
    const/high16 v1, 0xa00000

    sput v1, Lcom/parse/Parse;->maxParseFileSize:I

    .line 62
    const/high16 v1, 0x200000

    sput v1, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    .line 66
    const/16 v1, 0x3e8

    sput v1, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    .line 68
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 81
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    sput-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    .line 846
    new-instance v1, Lcom/parse/Parse$1;

    invoke-direct {v1}, Lcom/parse/Parse$1;-><init>()V

    sput-object v1, Lcom/parse/Parse;->uiThreadExecutor:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p0, "first"    # Ljava/lang/Number;
    .param p1, "second"    # Ljava/lang/Number;

    .prologue
    .line 794
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 805
    :goto_0
    return-object v0

    .line 796
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 798
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 801
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 802
    :cond_3
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 803
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 805
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method static callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;)Lcom/parse/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Task",
            "<TT;>;",
            "Lcom/parse/ParseCallback",
            "<TT;>;)",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    .local p1, "callback":Lcom/parse/ParseCallback;, "Lcom/parse/ParseCallback<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;Z)Lcom/parse/Task;

    move-result-object v0

    return-object v0
.end method

.method static callbackOnMainThreadAsync(Lcom/parse/Task;Lcom/parse/ParseCallback;Z)Lcom/parse/Task;
    .locals 2
    .param p2, "reportCancellation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/Task",
            "<TT;>;",
            "Lcom/parse/ParseCallback",
            "<TT;>;Z)",
            "Lcom/parse/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 867
    .local p0, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    .local p1, "callback":Lcom/parse/ParseCallback;, "Lcom/parse/ParseCallback<TT;>;"
    if-nez p1, :cond_0

    .line 903
    .end local p0    # "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    :goto_0
    return-object p0

    .line 870
    .restart local p0    # "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    :cond_0
    invoke-static {}, Lcom/parse/Task;->create()Lcom/parse/Task$TaskCompletionSource;

    move-result-object v0

    .line 871
    .local v0, "tcs":Lcom/parse/Task$TaskCompletionSource;, "Lcom/parse/Task<TT;>.TaskCompletionSource;"
    new-instance v1, Lcom/parse/Parse$6;

    invoke-direct {v1, p2, v0, p1}, Lcom/parse/Parse$6;-><init>(ZLcom/parse/Task$TaskCompletionSource;Lcom/parse/ParseCallback;)V

    invoke-virtual {p0, v1}, Lcom/parse/Task;->continueWith(Lcom/parse/Continuation;)Lcom/parse/Task;

    .line 903
    invoke-virtual {v0}, Lcom/parse/Task$TaskCompletionSource;->getTask()Lcom/parse/Task;

    move-result-object p0

    goto :goto_0
.end method

.method static checkCacheApplicationId()V
    .locals 10

    .prologue
    .line 247
    sget-object v7, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 248
    :try_start_0
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 250
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "applicationId"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v0, "applicationIdFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 253
    const/4 v4, 0x0

    .line 255
    .local v4, "matches":Z
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v3, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v3, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v6, v8

    new-array v1, v6, [B

    .line 257
    .local v1, "bytes":[B
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 258
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 259
    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 260
    .local v2, "diskApplicationId":Ljava/lang/String;
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 267
    .end local v1    # "bytes":[B
    .end local v2    # "diskApplicationId":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v4, :cond_0

    .line 269
    :try_start_2
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 274
    .end local v4    # "matches":Z
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "applicationIdFile":Ljava/io/File;
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "applicationId"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    .restart local v0    # "applicationIdFile":Ljava/io/File;
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 277
    .local v5, "out":Ljava/io/FileOutputStream;
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 278
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v7

    .line 289
    return-void

    .line 247
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 284
    :catch_0
    move-exception v6

    goto :goto_1

    .line 281
    :catch_1
    move-exception v6

    goto :goto_1

    .line 279
    :catch_2
    move-exception v6

    goto :goto_1

    .line 263
    .restart local v4    # "matches":Z
    :catch_3
    move-exception v6

    goto :goto_0

    .line 261
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    .prologue
    .line 481
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    .prologue
    .line 468
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    sget-object v0, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 474
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clientKey is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    return-void
.end method

.method static clearCacheDir()V
    .locals 4

    .prologue
    .line 334
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    .line 335
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 336
    .local v1, "entries":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 342
    :cond_0
    return-void

    .line 339
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 340
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static clearFromKeyValueCache(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 399
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 402
    :cond_0
    return-void
.end method

.method static convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v2, "new_array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 512
    return-object v2

    .line 504
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 505
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-static {v3}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 506
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 507
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 517
    .local v3, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 518
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 530
    return-object v3

    .line 519
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 520
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 521
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, "decodedObject":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 523
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 524
    :cond_1
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    .line 525
    check-cast v4, Lorg/json/JSONArray;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 527
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 765
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 766
    .local v2, "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, "iso":Ljava/lang/String;
    :try_start_0
    const-string v3, "__type"

    const-string v4, "Date"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 769
    const-string v3, "iso"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    return-object v2

    .line 770
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x0

    .line 535
    instance-of v13, p0, Lorg/json/JSONObject;

    if-eqz v13, :cond_0

    move-object v3, p0

    .line 536
    check-cast v3, Lorg/json/JSONObject;

    .line 541
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v13, "__op"

    invoke-virtual {v3, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 542
    .local v9, "opString":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 544
    :try_start_0
    invoke-static {v3}, Lcom/parse/ParseFieldOperations;->decode(Lorg/json/JSONObject;)Lcom/parse/ParseFieldOperation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 601
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "opString":Ljava/lang/String;
    :goto_0
    return-object v10

    :cond_0
    move-object v10, v12

    .line 538
    goto :goto_0

    .line 545
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "opString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Lorg/json/JSONException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 550
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v13, "__type"

    invoke-virtual {v3, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 551
    .local v11, "typeString":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 552
    invoke-static {v3}, Lcom/parse/Parse;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    goto :goto_0

    .line 555
    :cond_2
    const-string v13, "Date"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 556
    const-string v12, "iso"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "iso":Ljava/lang/String;
    invoke-static {v2}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    goto :goto_0

    .line 560
    .end local v2    # "iso":Ljava/lang/String;
    :cond_3
    const-string v13, "Bytes"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 561
    const-string v12, "base64"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "base64":Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_0

    .line 565
    .end local v0    # "base64":Ljava/lang/String;
    :cond_4
    const-string v13, "Pointer"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 566
    const-string v12, "className"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 567
    const-string v13, "objectId"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 566
    invoke-static {v12, v13}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v10

    goto :goto_0

    .line 570
    :cond_5
    const-string v13, "File"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 571
    new-instance v10, Lcom/parse/ParseFile;

    const-string v12, "name"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "url"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_6
    const-string v13, "GeoPoint"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 577
    :try_start_1
    const-string v12, "latitude"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 578
    .local v4, "latitude":D
    const-string v12, "longitude"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 582
    .local v6, "longitude":D
    new-instance v10, Lcom/parse/ParseGeoPoint;

    invoke-direct {v10, v4, v5, v6, v7}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    goto/16 :goto_0

    .line 579
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :catch_1
    move-exception v1

    .line 580
    .restart local v1    # "e":Lorg/json/JSONException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 585
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_7
    const-string v13, "Object"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 586
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 588
    .local v8, "nested":Lorg/json/JSONObject;
    :try_start_2
    const-string v13, "data"

    invoke-virtual {v8, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 592
    const-string v13, "className"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v12}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v10

    .line 593
    .local v10, "output":Lcom/parse/ParseObject;
    invoke-virtual {v10, v8}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 589
    .end local v10    # "output":Lcom/parse/ParseObject;
    :catch_2
    move-exception v1

    .line 590
    .restart local v1    # "e":Lorg/json/JSONException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 597
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v8    # "nested":Lorg/json/JSONObject;
    :cond_8
    const-string v13, "Relation"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 598
    new-instance v10, Lcom/parse/ParseRelation;

    const-string v13, "className"

    invoke-virtual {v3, v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/parse/ParseRelation;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object v10, v12

    .line 601
    goto/16 :goto_0
.end method

.method static encodeAsJSONArray(Ljava/util/List;Z)Lorg/json/JSONArray;
    .locals 5
    .param p1, "allowParseObjects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 679
    .local v0, "new_array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    return-object v0

    .line 679
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 680
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 681
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid type for value in array: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_1
    invoke-static {v1, p1}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method static encodeDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 759
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 760
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static encodeJSONObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;
    .locals 12
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "allowParseObjects"    # Z

    .prologue
    .line 606
    :try_start_0
    instance-of v9, p0, Ljava/util/Date;

    if-eqz v9, :cond_1

    .line 607
    check-cast p0, Ljava/util/Date;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/parse/Parse;->dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v4

    .line 666
    :cond_0
    :goto_0
    return-object v4

    .line 610
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v9, p0, [B

    if-eqz v9, :cond_2

    .line 611
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 612
    .local v4, "json":Lorg/json/JSONObject;
    const-string v9, "__type"

    const-string v10, "Bytes"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    const-string v9, "base64"

    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/parse/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 663
    .local v2, "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 617
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v9, p0, Lcom/parse/ParseObject;

    if-eqz v9, :cond_4

    .line 618
    if-nez p1, :cond_3

    .line 619
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "ParseObjects not allowed here"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 621
    :cond_3
    check-cast p0, Lcom/parse/ParseObject;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/parse/Parse;->parseObjectToJSONPointer(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_0

    .line 624
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v9, p0, Lcom/parse/ParseFile;

    if-eqz v9, :cond_5

    .line 625
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseFile;

    move-object v3, v0

    .line 626
    .local v3, "file":Lcom/parse/ParseFile;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 627
    .restart local v4    # "json":Lorg/json/JSONObject;
    const-string v9, "__type"

    const-string v10, "File"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    const-string v9, "url"

    invoke-virtual {v3}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    const-string v9, "name"

    invoke-virtual {v3}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 633
    .end local v3    # "file":Lcom/parse/ParseFile;
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_5
    instance-of v9, p0, Lcom/parse/ParseGeoPoint;

    if-eqz v9, :cond_6

    .line 634
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    move-object v7, v0

    .line 635
    .local v7, "point":Lcom/parse/ParseGeoPoint;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 636
    .restart local v4    # "json":Lorg/json/JSONObject;
    const-string v9, "__type"

    const-string v10, "GeoPoint"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    const-string v9, "latitude"

    invoke-virtual {v7}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 638
    const-string v9, "longitude"

    invoke-virtual {v7}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 642
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v7    # "point":Lcom/parse/ParseGeoPoint;
    :cond_6
    instance-of v9, p0, Lcom/parse/ParseACL;

    if-eqz v9, :cond_7

    .line 643
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseACL;

    move-object v1, v0

    .line 644
    .local v1, "acl":Lcom/parse/ParseACL;
    invoke-virtual {v1}, Lcom/parse/ParseACL;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    goto/16 :goto_0

    .line 647
    .end local v1    # "acl":Lcom/parse/ParseACL;
    :cond_7
    instance-of v9, p0, Ljava/util/Map;

    if-eqz v9, :cond_8

    .line 649
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 650
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 651
    .restart local v4    # "json":Lorg/json/JSONObject;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 652
    .local v6, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, p1}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 657
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    instance-of v9, p0, Lcom/parse/ParseRelation;

    if-eqz v9, :cond_9

    .line 658
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v8, v0

    .line 659
    .local v8, "relation":Lcom/parse/ParseRelation;
    invoke-virtual {v8}, Lcom/parse/ParseRelation;->encodeToJSON()Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 666
    .end local v8    # "relation":Lcom/parse/ParseRelation;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static getCommandCache()Lcom/parse/ParseCommandCache;
    .locals 3

    .prologue
    .line 458
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 459
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    if-nez v0, :cond_0

    .line 460
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 461
    new-instance v0, Lcom/parse/ParseCommandCache;

    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 463
    :cond_0
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    monitor-exit v1

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getKeyValueCacheAge(Ljava/io/File;)J
    .locals 4
    .param p0, "cacheFile"    # Ljava/io/File;

    .prologue
    .line 319
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2e

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 323
    :goto_0
    return-wide v2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method static getKeyValueCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 295
    sget-object v3, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 296
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 297
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 298
    .local v0, "appCacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "ParseKeyValueCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .local v1, "parseCacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    monitor-exit v3

    return-object v1

    .line 302
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not create Parse cache directory"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    .end local v1    # "parseCacheDir":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/parse/Parse$3;

    invoke-direct {v3, v1}, Lcom/parse/Parse$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 313
    .local v0, "matches":[Ljava/io/File;
    array-length v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/parse/Parse;->logLevel:I

    return v0
.end method

.method static getParseDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 224
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 226
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "Parse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 490
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 115
    sput-object p1, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    .line 116
    sput-object p2, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    .line 117
    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    .line 122
    new-instance v0, Lcom/parse/Parse$2;

    const-string v1, "Parse.initialize Starting Command Cache"

    invoke-direct {v0, v1}, Lcom/parse/Parse$2;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/parse/Parse$2;->start()V

    .line 130
    :cond_0
    return-void
.end method

.method static isContainerObject(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 789
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 790
    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 789
    goto :goto_0
.end method

.method static isValidType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 670
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 671
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 672
    instance-of v0, p0, Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseFile;

    if-nez v0, :cond_0

    .line 673
    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    .line 674
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseRelation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 670
    goto :goto_0
.end method

.method static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 811
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 812
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 814
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 819
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 815
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "maxAgeMilliseconds"    # J

    .prologue
    const/4 v1, 0x0

    .line 435
    invoke-static {p0, p1, p2}, Lcom/parse/Parse;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "raw":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 447
    :goto_0
    return-object v1

    .line 439
    :cond_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 442
    .local v3, "tokener":Lorg/json/JSONTokener;
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 443
    .local v1, "o":Ljava/lang/Object;
    goto :goto_0

    .line 444
    .end local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "com.parse.Parse"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "corrupted cache for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    invoke-static {p0}, Lcom/parse/Parse;->clearFromKeyValueCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    move-object v0, p0

    .line 780
    .local v0, "finalObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/parse/Parse$5;

    invoke-direct {v1, v0}, Lcom/parse/Parse$5;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method static loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;
    .locals 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "maxAgeMilliseconds"    # J

    .prologue
    const/4 v7, 0x0

    .line 407
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 408
    .local v3, "file":Ljava/io/File;
    if-nez v3, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object v7

    .line 412
    :cond_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 413
    .local v4, "now":Ljava/util/Date;
    const-wide/16 v8, 0x0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, p1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 414
    .local v5, "oldestAcceptableAge":J
    invoke-static {v3}, Lcom/parse/Parse;->getKeyValueCacheAge(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-ltz v8, :cond_0

    .line 419
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 422
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v2, v3, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    .local v2, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 424
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 425
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 426
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 427
    .end local v0    # "bytes":[B
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "com.parse.Parse"

    const-string v9, "error reading from cache"

    invoke-static {v8, v9, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "messageLogLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 163
    sget v0, Lcom/parse/Parse;->logLevel:I

    if-lt p0, v0, :cond_0

    .line 164
    if-nez p3, :cond_1

    .line 165
    sget v0, Lcom/parse/Parse;->logLevel:I

    invoke-static {v0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget v0, Lcom/parse/Parse;->logLevel:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return-void
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 181
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 205
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 189
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 173
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 197
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    return-void
.end method

.method static maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "allowParseObjects"    # Z

    .prologue
    .line 693
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 695
    check-cast v1, Ljava/util/List;

    .line 696
    .local v1, "input":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v1, p1}, Lcom/parse/Parse;->encodeAsJSONArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object p0

    .line 711
    .end local v1    # "input":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local p0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 699
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Lcom/parse/ParseFieldOperation;

    if-eqz v3, :cond_2

    .line 701
    :try_start_0
    check-cast p0, Lcom/parse/ParseFieldOperation;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/parse/ParseFieldOperation;->encode()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 707
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {p0, p1}, Lcom/parse/Parse;->encodeJSONObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 708
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    move-object p0, v2

    .line 711
    goto :goto_0
.end method

.method static maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 717
    instance-of v0, p0, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 718
    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 721
    const-string v1, "unable to encode an association with an unsaved ParseObject"

    .line 720
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 747
    sget-object v2, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 749
    :try_start_0
    sget-object v1, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 753
    :goto_0
    return-object v1

    .line 750
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "com.parse.Parse"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "could not parse date: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 753
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    .line 747
    .end local v0    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static parseObjectToJSONPointer(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "pointedTo"    # Lcom/parse/ParseObject;

    .prologue
    .line 728
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 730
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 731
    const-string v2, "__type"

    const-string v3, "Pointer"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string v2, "className"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    const-string v2, "objectId"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    :goto_0
    return-object v1

    .line 735
    :cond_0
    const-string v2, "__type"

    const-string v3, "Pointer"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v2, "className"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    const-string v2, "localId"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static recursiveDelete(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 232
    sget-object v2, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 233
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 238
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 232
    monitor-exit v2

    .line 240
    return-void

    .line 234
    :cond_1
    aget-object v0, v3, v1

    .line 235
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    return-void
.end method

.method static saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 346
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 347
    .local v6, "prior":Ljava/io/File;
    if-eqz v6, :cond_0

    .line 348
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 350
    :cond_0
    invoke-static {p0}, Lcom/parse/Parse;->createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 352
    .local v0, "f":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 353
    .local v5, "out":Ljava/io/FileOutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 354
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 361
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    .line 362
    .local v4, "numFiles":I
    const/4 v3, 0x0

    .line 363
    .local v3, "numBytes":I
    array-length v9, v2

    move v8, v7

    :goto_1
    if-lt v8, v9, :cond_3

    .line 366
    sget v8, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    if-gt v4, v8, :cond_1

    sget v8, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    if-le v3, v8, :cond_2

    .line 372
    :cond_1
    new-instance v8, Lcom/parse/Parse$4;

    invoke-direct {v8}, Lcom/parse/Parse$4;-><init>()V

    invoke-static {v2, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 383
    array-length v8, v2

    :goto_2
    if-lt v7, v8, :cond_4

    .line 393
    :cond_2
    return-void

    .line 363
    :cond_3
    aget-object v1, v2, v8

    .line 364
    .local v1, "file":Ljava/io/File;
    int-to-long v10, v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v3, v10

    .line 363
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 383
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    aget-object v1, v2, v7

    .line 384
    .restart local v1    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, -0x1

    .line 385
    int-to-long v9, v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v3, v9

    .line 386
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 388
    sget v9, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    if-gt v4, v9, :cond_5

    sget v9, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    if-le v3, v9, :cond_2

    .line 383
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 356
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "numBytes":I
    .end local v4    # "numFiles":I
    :catch_0
    move-exception v8

    goto :goto_0

    .line 355
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method static setContextIfNeeded(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 218
    sput-object p0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 220
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .prologue
    .line 150
    sput p0, Lcom/parse/Parse;->logLevel:I

    .line 151
    return-void
.end method

.method static waitForTask(Lcom/parse/Task;)Ljava/lang/Object;
    .locals 4
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
    .line 827
    .local p0, "task":Lcom/parse/Task;, "Lcom/parse/Task<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/Task;->waitForCompletion()V

    .line 828
    invoke-virtual {p0}, Lcom/parse/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    invoke-virtual {p0}, Lcom/parse/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 830
    .local v1, "error":Ljava/lang/Exception;
    instance-of v2, v1, Lcom/parse/ParseException;

    if-eqz v2, :cond_0

    .line 831
    check-cast v1, Lcom/parse/ParseException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 833
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 834
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1

    .line 836
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 837
    .end local v1    # "error":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/parse/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 838
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 840
    :cond_3
    invoke-virtual {p0}, Lcom/parse/Task;->getResult()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method
