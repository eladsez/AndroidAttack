.class public Lorg/hermit/android/utils/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/utils/Ticker$ClientData;,
        Lorg/hermit/android/utils/Ticker$Listener;
    }
.end annotation


# static fields
.field private static final DAY_SECS:I = 0x15180

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "Ticker"


# instance fields
.field private clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/hermit/android/utils/Ticker$ClientData;",
            ">;"
        }
    .end annotation
.end field

.field private dayStart:J

.field private enable:Z

.field private tickRunner:Ljava/lang/Runnable;

.field private tickSecs:I

.field private tickerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v1, Lorg/hermit/android/utils/Ticker$1;

    invoke-direct {v1, p0}, Lorg/hermit/android/utils/Ticker$1;-><init>(Lorg/hermit/android/utils/Ticker;)V

    iput-object v1, p0, Lorg/hermit/android/utils/Ticker;->tickRunner:Ljava/lang/Runnable;

    .line 429
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 84
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 85
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 86
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 87
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 88
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/hermit/android/utils/Ticker;->dayStart:J

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    .line 94
    const/16 v1, 0xe10

    iput v1, p0, Lorg/hermit/android/utils/Ticker;->tickSecs:I

    .line 95
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/utils/Ticker;)Z
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lorg/hermit/android/utils/Ticker;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lorg/hermit/android/utils/Ticker;)I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lorg/hermit/android/utils/Ticker;->tickSecs:I

    return v0
.end method

.method static synthetic access$2(Lorg/hermit/android/utils/Ticker;)J
    .locals 2

    .prologue
    .line 435
    iget-wide v0, p0, Lorg/hermit/android/utils/Ticker;->dayStart:J

    return-wide v0
.end method

.method static synthetic access$3(Lorg/hermit/android/utils/Ticker;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    return-object v0
.end method

.method private calculateInterval()I
    .locals 5

    .prologue
    .line 303
    iget-object v3, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 304
    .local v2, "size":I
    if-nez v2, :cond_0

    .line 305
    const/16 v3, 0xe10

    .line 310
    :goto_0
    return v3

    .line 307
    :cond_0
    iget-object v3, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/hermit/android/utils/Ticker$ClientData;

    iget v1, v3, Lorg/hermit/android/utils/Ticker$ClientData;->interval:I

    .line 308
    .local v1, "iv":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_1

    move v3, v1

    .line 310
    goto :goto_0

    .line 309
    :cond_1
    iget-object v3, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/hermit/android/utils/Ticker$ClientData;

    iget v3, v3, Lorg/hermit/android/utils/Ticker$ClientData;->interval:I

    invoke-static {v1, v3}, Lorg/hermit/android/utils/Ticker;->gcd(II)I

    move-result v1

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static final gcd(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 362
    if-nez p1, :cond_0

    move v0, p0

    .line 365
    :goto_0
    return v0

    :cond_0
    rem-int v0, p0, p1

    invoke-static {p1, v0}, Lorg/hermit/android/utils/Ticker;->gcd(II)I

    move-result v0

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lorg/hermit/android/utils/Ticker;->enable:Z

    .line 289
    .local v0, "res":Z
    monitor-exit p0

    .line 292
    return v0

    .line 289
    .end local v0    # "res":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private listen(ILorg/hermit/android/utils/Ticker$ClientData;)V
    .locals 2
    .param p1, "secs"    # I
    .param p2, "l"    # Lorg/hermit/android/utils/Ticker$ClientData;

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 210
    iput p1, p0, Lorg/hermit/android/utils/Ticker;->tickSecs:I

    .line 205
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 219
    :cond_0
    return-void

    .line 212
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/hermit/android/utils/Ticker;->tickSecs:I

    invoke-static {v0, p1}, Lorg/hermit/android/utils/Ticker;->gcd(II)I

    move-result v0

    iput v0, p0, Lorg/hermit/android/utils/Ticker;->tickSecs:I

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public listen(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "secs"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 193
    new-instance v0, Lorg/hermit/android/utils/Ticker$ClientData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/hermit/android/utils/Ticker$ClientData;-><init>(ILandroid/os/Handler;Lorg/hermit/android/utils/Ticker$Listener;)V

    invoke-direct {p0, p1, v0}, Lorg/hermit/android/utils/Ticker;->listen(ILorg/hermit/android/utils/Ticker$ClientData;)V

    .line 194
    return-void
.end method

.method public listen(ILorg/hermit/android/utils/Ticker$Listener;)V
    .locals 2
    .param p1, "secs"    # I
    .param p2, "l"    # Lorg/hermit/android/utils/Ticker$Listener;

    .prologue
    .line 166
    new-instance v0, Lorg/hermit/android/utils/Ticker$ClientData;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, v1, p2}, Lorg/hermit/android/utils/Ticker$ClientData;-><init>(ILandroid/os/Handler;Lorg/hermit/android/utils/Ticker$Listener;)V

    invoke-direct {p0, p1, v0}, Lorg/hermit/android/utils/Ticker;->listen(ILorg/hermit/android/utils/Ticker$ClientData;)V

    .line 167
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/hermit/android/utils/Ticker;->stop()V

    .line 110
    monitor-enter p0

    .line 112
    :try_start_0
    invoke-direct {p0}, Lorg/hermit/android/utils/Ticker;->calculateInterval()I

    move-result v0

    iput v0, p0, Lorg/hermit/android/utils/Ticker;->tickSecs:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/hermit/android/utils/Ticker;->enable:Z

    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/hermit/android/utils/Ticker;->tickRunner:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    .line 117
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    monitor-exit p0

    .line 119
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/hermit/android/utils/Ticker;->enable:Z

    .line 130
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    .line 128
    :cond_0
    monitor-exit p0

    .line 136
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlisten(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 257
    monitor-enter p0

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 268
    invoke-direct {p0}, Lorg/hermit/android/utils/Ticker;->calculateInterval()I

    move-result v2

    iput v2, p0, Lorg/hermit/android/utils/Ticker;->tickSecs:I

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 275
    :cond_0
    return-void

    .line 260
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/utils/Ticker$ClientData;

    .line 261
    .local v0, "c":Lorg/hermit/android/utils/Ticker$ClientData;
    iget-object v2, v0, Lorg/hermit/android/utils/Ticker$ClientData;->handler:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    .line 262
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 257
    .end local v0    # "c":Lorg/hermit/android/utils/Ticker$ClientData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 264
    .restart local v0    # "c":Lorg/hermit/android/utils/Ticker$ClientData;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unlisten(Lorg/hermit/android/utils/Ticker$Listener;)V
    .locals 3
    .param p1, "l"    # Lorg/hermit/android/utils/Ticker$Listener;

    .prologue
    .line 229
    monitor-enter p0

    .line 231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 240
    invoke-direct {p0}, Lorg/hermit/android/utils/Ticker;->calculateInterval()I

    move-result v2

    iput v2, p0, Lorg/hermit/android/utils/Ticker;->tickSecs:I

    .line 229
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->tickerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 247
    :cond_0
    return-void

    .line 232
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/utils/Ticker$ClientData;

    .line 233
    .local v0, "c":Lorg/hermit/android/utils/Ticker$ClientData;
    iget-object v2, v0, Lorg/hermit/android/utils/Ticker$ClientData;->listener:Lorg/hermit/android/utils/Ticker$Listener;

    if-ne v2, p1, :cond_2

    .line 234
    iget-object v2, p0, Lorg/hermit/android/utils/Ticker;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 229
    .end local v0    # "c":Lorg/hermit/android/utils/Ticker$ClientData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 236
    .restart local v0    # "c":Lorg/hermit/android/utils/Ticker$ClientData;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
