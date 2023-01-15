.class final Lorg/hermit/android/net/WebFetcher$Runner;
.super Ljava/lang/Thread;
.source "WebFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/net/WebFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Runner"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 405
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher$Runner;->start()V

    .line 406
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 413
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher$Runner;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    :cond_1
    :goto_1
    return-void

    .line 420
    :cond_2
    invoke-static {}, Lorg/hermit/android/net/WebFetcher;->access$0()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 421
    :try_start_0
    invoke-static {}, Lorg/hermit/android/net/WebFetcher;->access$0()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/net/WebFetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .local v0, "job":Lorg/hermit/android/net/WebFetcher;
    if-nez v0, :cond_4

    .line 424
    :try_start_1
    invoke-static {}, Lorg/hermit/android/net/WebFetcher;->access$0()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher$Runner;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 427
    monitor-exit v1

    goto :goto_1

    .line 420
    .end local v0    # "job":Lorg/hermit/android/net/WebFetcher;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 428
    .restart local v0    # "job":Lorg/hermit/android/net/WebFetcher;
    :cond_3
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 420
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher$Runner;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    invoke-virtual {v0}, Lorg/hermit/android/net/WebFetcher;->start()V

    .line 439
    :try_start_4
    iget-wide v1, v0, Lorg/hermit/android/net/WebFetcher;->timeout:J

    invoke-virtual {v0, v1, v2}, Lorg/hermit/android/net/WebFetcher;->join(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 441
    :goto_3
    invoke-virtual {p0}, Lorg/hermit/android/net/WebFetcher$Runner;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    invoke-virtual {v0}, Lorg/hermit/android/net/WebFetcher;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v0}, Lorg/hermit/android/net/WebFetcher;->interrupt()V

    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    goto :goto_3

    .line 425
    :catch_1
    move-exception v2

    goto :goto_2
.end method
