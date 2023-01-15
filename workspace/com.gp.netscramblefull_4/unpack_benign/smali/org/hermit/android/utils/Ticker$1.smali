.class Lorg/hermit/android/utils/Ticker$1;
.super Ljava/lang/Object;
.source "Ticker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/utils/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/utils/Ticker;


# direct methods
.method constructor <init>(Lorg/hermit/android/utils/Ticker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/utils/Ticker$1;->this$0:Lorg/hermit/android/utils/Ticker;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 322
    :goto_0
    iget-object v7, p0, Lorg/hermit/android/utils/Ticker$1;->this$0:Lorg/hermit/android/utils/Ticker;

    invoke-static {v7}, Lorg/hermit/android/utils/Ticker;->access$0(Lorg/hermit/android/utils/Ticker;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 350
    :cond_0
    return-void

    .line 326
    :cond_1
    :try_start_0
    iget-object v7, p0, Lorg/hermit/android/utils/Ticker$1;->this$0:Lorg/hermit/android/utils/Ticker;

    invoke-static {v7}, Lorg/hermit/android/utils/Ticker;->access$1(Lorg/hermit/android/utils/Ticker;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v4, v7

    .line 327
    .local v4, "tickMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lorg/hermit/android/utils/Ticker$1;->this$0:Lorg/hermit/android/utils/Ticker;

    invoke-static {v9}, Lorg/hermit/android/utils/Ticker;->access$2(Lorg/hermit/android/utils/Ticker;)J

    move-result-wide v9

    sub-long v2, v7, v9

    .line 328
    .local v2, "dayTime":J
    rem-long v7, v2, v4

    sub-long v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 329
    iget-object v7, p0, Lorg/hermit/android/utils/Ticker$1;->this$0:Lorg/hermit/android/utils/Ticker;

    invoke-static {v7}, Lorg/hermit/android/utils/Ticker;->access$0(Lorg/hermit/android/utils/Ticker;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 335
    .local v6, "time":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Lorg/hermit/android/utils/Ticker$1;->this$0:Lorg/hermit/android/utils/Ticker;

    invoke-static {v9}, Lorg/hermit/android/utils/Ticker;->access$2(Lorg/hermit/android/utils/Ticker;)J

    move-result-wide v9

    sub-long v2, v7, v9

    .line 336
    const-wide/16 v7, 0xfa

    add-long/2addr v7, v2

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    const v8, 0x15180

    rem-int v1, v7, v8

    .line 339
    .local v1, "daySec":I
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :try_start_1
    iget-object v7, p0, Lorg/hermit/android/utils/Ticker$1;->this$0:Lorg/hermit/android/utils/Ticker;

    invoke-static {v7}, Lorg/hermit/android/utils/Ticker;->access$3(Lorg/hermit/android/utils/Ticker;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 339
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    .end local v1    # "daySec":I
    .end local v2    # "dayTime":J
    .end local v4    # "tickMillis":J
    .end local v6    # "time":Ljava/lang/Long;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 340
    .restart local v1    # "daySec":I
    .restart local v2    # "dayTime":J
    .restart local v4    # "tickMillis":J
    .restart local v6    # "time":Ljava/lang/Long;
    :cond_3
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/utils/Ticker$ClientData;

    .line 341
    .local v0, "c":Lorg/hermit/android/utils/Ticker$ClientData;
    iget v8, v0, Lorg/hermit/android/utils/Ticker$ClientData;->interval:I

    rem-int v8, v1, v8

    if-nez v8, :cond_2

    .line 342
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v1}, Lorg/hermit/android/utils/Ticker$ClientData;->tick(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
