.class public Lcom/parse/ParseTestUtils;
.super Ljava/lang/Object;
.source "ParseTestUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseTestUtils"

.field private static serverPort:I

.field private static synchronizer:Lcom/parse/Synchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x2328

    sput v0, Lcom/parse/ParseTestUtils;->serverPort:I

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowSleep(I)V
    .locals 1
    .param p0, "millis"    # I

    .prologue
    .line 160
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 161
    return-void
.end method

.method public static assertFinishes()V
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0}, Lcom/parse/Synchronizer;->assertFinishes()V

    .line 239
    return-void
.end method

.method public static assertSlept()V
    .locals 3

    .prologue
    .line 166
    :goto_0
    sget-object v1, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    if-nez v1, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static beginFakeSleep()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 153
    return-void
.end method

.method public static clearApp()V
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "clear_app"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v0, "command":Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static clearCurrentInstallationFromMemory()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 282
    return-void
.end method

.method public static clearFiles()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 266
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 270
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->pause()V

    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 274
    :cond_0
    return-void
.end method

.method public static clearPushRouterStateFromMemory()V
    .locals 0

    .prologue
    .line 277
    invoke-static {}, Lcom/parse/ParsePushRouter;->clearStateFromMemory()V

    .line 278
    return-void
.end method

.method public static commandCacheUnexpectedEvents()I
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache$TestHelper;->unexpectedEvents()I

    move-result v0

    return v0
.end method

.method public static consecutiveFailures()I
    .locals 1

    .prologue
    .line 189
    sget v0, Lcom/parse/PushService;->consecutiveFailures:I

    return v0
.end method

.method public static disconnectCommandCache()V
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 399
    return-void
.end method

.method public static endFakeSleep()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 157
    return-void
.end method

.method public static finish()V
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0}, Lcom/parse/Synchronizer;->finish()V

    .line 244
    return-void
.end method

.method public static getIgnoreAfterTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static getParseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const-string v0, "Parse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPushRequestJSON(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getPushRequestJSON(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getUserObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static initSynchronizer()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/parse/Synchronizer;

    invoke-direct {v0}, Lcom/parse/Synchronizer;-><init>()V

    sput-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    .line 225
    return-void
.end method

.method public static keySet(Lcom/parse/ParseObject;)Ljava/util/Set;
    .locals 1
    .param p0, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static mockPushServer()Ljava/net/ServerSocket;
    .locals 4

    .prologue
    .line 359
    sget v1, Lcom/parse/ParseTestUtils;->serverPort:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/parse/ParseTestUtils;->serverPort:I

    .line 360
    sget v1, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-static {v1}, Lcom/parse/PushService;->usePort(I)V

    .line 361
    const-string v1, "com.parse.ParseTestUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "running mockPushServer on port "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    sget v2, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static mockV8Client()V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "mock_v8_client"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v0, "command":Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static numKeyValueCacheFiles()I
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static onPush(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/PushCallback;

    .prologue
    .line 290
    invoke-static {p0, p1, p2}, Lcom/parse/ParsePushRouter;->addSingletonRoute(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V

    .line 291
    invoke-static {p0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 292
    return-void
.end method

.method public static pushRoutes(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 286
    sget-object v0, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static reconnectCommandCache()V
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 403
    return-void
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 251
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 257
    .local v1, "children":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 261
    .end local v1    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 257
    .restart local v1    # "children":[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 258
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static resetCommandCache()V
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    .line 392
    .local v0, "cache":Lcom/parse/ParseCommandCache;
    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v1

    .line 393
    .local v1, "helper":Lcom/parse/ParseCommandCache$TestHelper;
    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->clear()V

    .line 394
    invoke-virtual {v1}, Lcom/parse/ParseCommandCache$TestHelper;->clear()V

    .line 395
    return-void
.end method

.method public static saveObjectToDisk(Lcom/parse/ParseObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "object"    # Lcom/parse/ParseObject;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static saveStringToDisk(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/parse/ParseTestUtils;->getParseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 208
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static setCommandInitialDelay(D)V
    .locals 0
    .param p0, "seconds"    # D

    .prologue
    .line 247
    invoke-static {p0, p1}, Lcom/parse/ParseCommand;->setInitialDelay(D)V

    .line 248
    return-void
.end method

.method public static setMaxKeyValueCacheBytes(I)V
    .locals 0
    .param p0, "max"    # I

    .prologue
    .line 387
    sput p0, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    .line 388
    return-void
.end method

.method public static setMaxKeyValueCacheFiles(I)V
    .locals 0
    .param p0, "max"    # I

    .prologue
    .line 380
    sput p0, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    .line 381
    return-void
.end method

.method public static setPushHistoryLength(I)I
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 299
    sget v0, Lcom/parse/ParsePushRouter;->maxHistory:I

    .line 300
    .local v0, "old":I
    sput p0, Lcom/parse/ParsePushRouter;->maxHistory:I

    .line 301
    return v0
.end method

.method public static setUpPushTest(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/StandardPushCallback;->disableNotifications:Z

    .line 338
    const/4 v0, 0x0

    sput v0, Lcom/parse/StandardPushCallback;->totalNotifications:I

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 340
    const-string v0, "localhost"

    invoke-static {v0}, Lcom/parse/PushService;->useServer(Ljava/lang/String;)V

    .line 342
    const-string v0, "http://10.0.2.2:3000"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->clearStateFromDisk(Landroid/content/Context;)V

    .line 344
    invoke-static {p0}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromDisk(Landroid/content/Context;)V

    .line 345
    invoke-static {}, Lcom/parse/ParseTestUtils;->initSynchronizer()V

    .line 346
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/parse/PushConnection;->generalTimeout:J

    .line 347
    const v0, 0xea60

    sput v0, Lcom/parse/PushConnection;->connectTimeout:I

    .line 348
    return-void
.end method

.method public static start(I)V
    .locals 1
    .param p0, "count"    # I

    .prologue
    .line 233
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0, p0}, Lcom/parse/Synchronizer;->start(I)V

    .line 234
    return-void
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-static {p0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method public static tearDownPushTest(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    invoke-static {}, Lcom/parse/ParseTestUtils;->clearFiles()V

    .line 324
    invoke-static {p0}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromDisk(Landroid/content/Context;)V

    .line 325
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->clearStateFromDisk(Landroid/content/Context;)V

    .line 326
    sget-object v0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    invoke-virtual {v0}, Lcom/parse/PushConnection;->close()V

    .line 329
    :cond_0
    return-void
.end method

.method public static totalNotifications()I
    .locals 1

    .prologue
    .line 295
    sget v0, Lcom/parse/StandardPushCallback;->totalNotifications:I

    return v0
.end method

.method public static unmockV8Client()V
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "unmock_v8_client"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v0, "command":Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->performAsync()Lcom/parse/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/Parse;->waitForTask(Lcom/parse/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static useBadServerPort(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v1, "http://10.0.2.2:6000"

    .line 108
    .local v1, "newUrl":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "base":Ljava/net/URL;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    add-int/lit16 v3, v3, 0x3e7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    .end local v0    # "base":Ljava/net/URL;
    :goto_0
    invoke-static {v1}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 110
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static useDevPushServer()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "10.0.2.2"

    invoke-static {v0}, Lcom/parse/PushService;->useServer(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static useInvalidServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "http://invalid.server:3000"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "theServer"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 87
    .local v0, "oldServer":Ljava/lang/String;
    sput-object p0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 88
    return-object v0
.end method

.method public static waitForCommandCacheEnqueue()Z
    .locals 2

    .prologue
    .line 406
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    .line 407
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->waitFor(I)Z

    move-result v0

    .line 406
    return v0
.end method

.method public static waitForCommandCacheFailure()Z
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    .line 419
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->waitFor(I)Z

    move-result v0

    .line 418
    return v0
.end method

.method public static waitForCommandCacheSuccess()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 411
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v1

    .line 412
    invoke-virtual {v1, v0}, Lcom/parse/ParseCommandCache$TestHelper;->waitFor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v1

    .line 414
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/parse/ParseCommandCache$TestHelper;->waitFor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 411
    goto :goto_0
.end method
