.class public abstract Lorg/hermit/android/net/WebFetcher;
.super Ljava/lang/Thread;
.source "WebFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/net/WebFetcher$FetchException;,
        Lorg/hermit/android/net/WebFetcher$Listener;,
        Lorg/hermit/android/net/WebFetcher$Runner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebFetcher"

.field private static allFetchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/hermit/android/net/WebFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final fetchQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/hermit/android/net/WebFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private static queueRunner:Lorg/hermit/android/net/WebFetcher$Runner;


# instance fields
.field protected final dataClient:Lorg/hermit/android/net/WebFetcher$Listener;

.field protected final dataUrls:[Ljava/net/URL;

.field protected killed:Z

.field protected final newerThanDate:J

.field protected final timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    sput-object v0, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    .line 466
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 465
    sput-object v0, Lorg/hermit/android/net/WebFetcher;->fetchQueue:Ljava/util/LinkedList;

    .line 469
    const/4 v0, 0x0

    sput-object v0, Lorg/hermit/android/net/WebFetcher;->queueRunner:Lorg/hermit/android/net/WebFetcher$Runner;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;J)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lorg/hermit/android/net/WebFetcher$Listener;
    .param p3, "timeout"    # J

    .prologue
    .line 162
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/net/URL;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/hermit/android/net/WebFetcher;-><init>([Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lorg/hermit/android/net/WebFetcher$Listener;
    .param p3, "timeout"    # J
    .param p5, "newer"    # J

    .prologue
    .line 184
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/net/URL;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/hermit/android/net/WebFetcher;-><init>([Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V

    .line 185
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "client"    # Lorg/hermit/android/net/WebFetcher$Listener;
    .param p3, "timeout"    # J
    .param p5, "newer"    # J

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hermit/android/net/WebFetcher;->killed:Z

    .line 208
    iput-object p1, p0, Lorg/hermit/android/net/WebFetcher;->dataUrls:[Ljava/net/URL;

    .line 209
    iput-object p2, p0, Lorg/hermit/android/net/WebFetcher;->dataClient:Lorg/hermit/android/net/WebFetcher$Listener;

    .line 210
    iput-wide p3, p0, Lorg/hermit/android/net/WebFetcher;->timeout:J

    .line 211
    iput-wide p5, p0, Lorg/hermit/android/net/WebFetcher;->newerThanDate:J

    .line 214
    sget-object v0, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 215
    :try_start_0
    sget-object v1, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v0

    .line 217
    return-void

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$0()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lorg/hermit/android/net/WebFetcher;->fetchQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static killAll()V
    .locals 4

    .prologue
    .line 130
    sget-object v1, Lorg/hermit/android/net/WebFetcher;->fetchQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v2, Lorg/hermit/android/net/WebFetcher;->queueRunner:Lorg/hermit/android/net/WebFetcher$Runner;

    if-eqz v2, :cond_0

    .line 132
    sget-object v2, Lorg/hermit/android/net/WebFetcher;->queueRunner:Lorg/hermit/android/net/WebFetcher$Runner;

    invoke-virtual {v2}, Lorg/hermit/android/net/WebFetcher$Runner;->interrupt()V

    .line 133
    :cond_0
    sget-object v2, Lorg/hermit/android/net/WebFetcher;->fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    sget-object v1, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 138
    :try_start_1
    sget-object v2, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    return-void

    .line 130
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 138
    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/net/WebFetcher;

    .line 139
    .local v0, "f":Lorg/hermit/android/net/WebFetcher;
    invoke-virtual {v0}, Lorg/hermit/android/net/WebFetcher;->kill()V

    goto :goto_0

    .line 137
    .end local v0    # "f":Lorg/hermit/android/net/WebFetcher;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static queue(Lorg/hermit/android/net/WebFetcher;)V
    .locals 2
    .param p0, "fetcher"    # Lorg/hermit/android/net/WebFetcher;

    .prologue
    .line 116
    sget-object v0, Lorg/hermit/android/net/WebFetcher;->fetchQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lorg/hermit/android/net/WebFetcher;->queueRunner:Lorg/hermit/android/net/WebFetcher$Runner;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lorg/hermit/android/net/WebFetcher$Runner;

    invoke-direct {v1}, Lorg/hermit/android/net/WebFetcher$Runner;-><init>()V

    sput-object v1, Lorg/hermit/android/net/WebFetcher;->queueRunner:Lorg/hermit/android/net/WebFetcher$Runner;

    .line 119
    :cond_0
    sget-object v1, Lorg/hermit/android/net/WebFetcher;->fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 120
    sget-object v1, Lorg/hermit/android/net/WebFetcher;->fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v0

    .line 122
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected fetch(Ljava/net/URL;J)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "newer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/android/net/WebFetcher$FetchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "timed out"

    .line 308
    const/4 v1, 0x0

    .line 311
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 312
    .local v0, "conn":Ljava/net/URLConnection;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {v0, p2, p3}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    new-instance v2, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v3, "timed out"

    invoke-direct {v2, v3}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v0    # "conn":Ljava/net/URLConnection;
    :catchall_0
    move-exception v2

    .line 336
    if-eqz v1, :cond_1

    .line 337
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    :cond_1
    :goto_0
    throw v2

    .line 320
    .restart local v0    # "conn":Ljava/net/URLConnection;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 321
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 324
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    new-instance v2, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v3, "timed out"

    invoke-direct {v2, v3}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lorg/hermit/android/net/WebFetcher;->handle(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/InputStream;)V

    .line 331
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    new-instance v2, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v3, "timed out"

    invoke-direct {v2, v3}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    :cond_4
    if-eqz v1, :cond_5

    .line 337
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 340
    :cond_5
    :goto_1
    return-void

    .line 338
    .end local v0    # "conn":Ljava/net/URLConnection;
    :catch_0
    move-exception v3

    goto :goto_0

    .restart local v0    # "conn":Ljava/net/URLConnection;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected handle(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/BufferedReader;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "conn"    # Ljava/net/URLConnection;
    .param p3, "stream"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/android/net/WebFetcher$FetchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    return-void
.end method

.method protected handle(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "conn"    # Ljava/net/URLConnection;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/android/net/WebFetcher$FetchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, "reads":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 359
    .local v0, "readc":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v2    # "reads":Ljava/io/InputStreamReader;
    .local v3, "reads":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    .end local v0    # "readc":Ljava/io/BufferedReader;
    .local v1, "readc":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {p0, p1, p2, v1}, Lorg/hermit/android/net/WebFetcher;->handle(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/BufferedReader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 367
    if-eqz v1, :cond_0

    .line 368
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 371
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 372
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 375
    :cond_1
    :goto_1
    return-void

    .line 364
    .end local v1    # "readc":Ljava/io/BufferedReader;
    .end local v3    # "reads":Ljava/io/InputStreamReader;
    .restart local v0    # "readc":Ljava/io/BufferedReader;
    .restart local v2    # "reads":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v4

    .line 367
    :goto_2
    if-eqz v0, :cond_2

    .line 368
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 371
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 372
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 374
    :cond_3
    :goto_4
    throw v4

    .line 369
    :catch_0
    move-exception v5

    goto :goto_3

    .line 373
    :catch_1
    move-exception v5

    goto :goto_4

    .line 369
    .end local v0    # "readc":Ljava/io/BufferedReader;
    .end local v2    # "reads":Ljava/io/InputStreamReader;
    .restart local v1    # "readc":Ljava/io/BufferedReader;
    .restart local v3    # "reads":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 373
    :catch_3
    move-exception v4

    goto :goto_1

    .line 364
    .end local v1    # "readc":Ljava/io/BufferedReader;
    .restart local v0    # "readc":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reads":Ljava/io/InputStreamReader;
    .restart local v2    # "reads":Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v0    # "readc":Ljava/io/BufferedReader;
    .end local v2    # "reads":Ljava/io/InputStreamReader;
    .restart local v1    # "readc":Ljava/io/BufferedReader;
    .restart local v3    # "reads":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "readc":Ljava/io/BufferedReader;
    .restart local v0    # "readc":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "reads":Ljava/io/InputStreamReader;
    .restart local v2    # "reads":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    .line 229
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/hermit/android/net/WebFetcher;->killed:Z

    .line 230
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher;->interrupt()V

    .line 228
    :cond_0
    monitor-exit p0

    .line 233
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const-string v4, ": "

    const-string v4, "WebFetcher"

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-boolean v4, p0, Lorg/hermit/android/net/WebFetcher;->killed:Z

    if-eqz v4, :cond_0

    .line 244
    monitor-exit p0

    .line 286
    :goto_0
    return-void

    .line 242
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    const/4 v0, 0x0

    .line 251
    .local v0, "current":Ljava/net/URL;
    :try_start_1
    iget-object v4, p0, Lorg/hermit/android/net/WebFetcher;->dataUrls:[Ljava/net/URL;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_1

    .line 266
    const-string v4, "WebFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "R: finished all "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v4, p0, Lorg/hermit/android/net/WebFetcher;->dataClient:Lorg/hermit/android/net/WebFetcher$Listener;

    invoke-interface {v4}, Lorg/hermit/android/net/WebFetcher$Listener;->onWebDone()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/hermit/android/net/WebFetcher$FetchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 282
    sget-object v4, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 283
    :try_start_2
    sget-object v5, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 242
    .end local v0    # "current":Ljava/net/URL;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 251
    .restart local v0    # "current":Ljava/net/URL;
    :cond_1
    :try_start_4
    aget-object v3, v4, v6

    .line 253
    .local v3, "url":Ljava/net/URL;
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Lorg/hermit/android/net/WebFetcher;->sleep(J)V

    .line 254
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 255
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/hermit/android/net/WebFetcher$FetchException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 268
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 269
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v4, "WebFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "R: IOException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lorg/hermit/android/net/WebFetcher;->dataClient:Lorg/hermit/android/net/WebFetcher$Listener;

    invoke-interface {v4, v2}, Lorg/hermit/android/net/WebFetcher$Listener;->onWebError(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 282
    sget-object v4, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 283
    :try_start_6
    sget-object v5, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 257
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_2
    move-object v0, v3

    .line 258
    :try_start_7
    const-string v7, "WebFetcher"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "R: start "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-wide v7, p0, Lorg/hermit/android/net/WebFetcher;->newerThanDate:J

    invoke-virtual {p0, v3, v7, v8}, Lorg/hermit/android/net/WebFetcher;->fetch(Ljava/net/URL;J)V

    .line 261
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/hermit/android/net/WebFetcher$FetchException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 272
    .end local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 273
    .local v1, "e":Lorg/hermit/android/net/WebFetcher$FetchException;
    :try_start_8
    const-string v4, "WebFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "R: FetchException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/hermit/android/net/WebFetcher$FetchException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v4, p0, Lorg/hermit/android/net/WebFetcher;->dataClient:Lorg/hermit/android/net/WebFetcher$Listener;

    invoke-interface {v4, v2}, Lorg/hermit/android/net/WebFetcher$Listener;->onWebError(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 282
    sget-object v4, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 283
    :try_start_9
    sget-object v5, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v5

    .line 251
    .end local v1    # "e":Lorg/hermit/android/net/WebFetcher$FetchException;
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 276
    .end local v3    # "url":Ljava/net/URL;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 277
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v4, "WebFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "R: InterruptedException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v2, "Interrupted"

    .line 279
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v4, p0, Lorg/hermit/android/net/WebFetcher;->dataClient:Lorg/hermit/android/net/WebFetcher$Listener;

    invoke-interface {v4, v2}, Lorg/hermit/android/net/WebFetcher$Listener;->onWebError(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 282
    sget-object v4, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 283
    :try_start_b
    sget-object v5, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v4

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v5

    .line 280
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "msg":Ljava/lang/String;
    :catchall_5
    move-exception v4

    .line 282
    sget-object v5, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 283
    :try_start_c
    sget-object v6, Lorg/hermit/android/net/WebFetcher;->allFetchers:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 285
    throw v4

    .line 282
    :catchall_6
    move-exception v4

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v4
.end method
