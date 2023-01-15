.class public Lorg/hermit/android/sound/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/sound/Player$PoolPlayer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "sound"


# instance fields
.field private appContext:Landroid/content/Context;

.field private final numStreams:I

.field private playerPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/hermit/android/sound/Player$PoolPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private soundEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/hermit/android/sound/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private soundGain:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/hermit/android/sound/Player;-><init>(Landroid/content/Context;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streams"    # I

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/hermit/android/sound/Player;->soundGain:F

    .line 182
    iput-object p1, p0, Lorg/hermit/android/sound/Player;->appContext:Landroid/content/Context;

    .line 183
    iput p2, p0, Lorg/hermit/android/sound/Player;->numStreams:I

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hermit/android/sound/Player;->soundEffects:Ljava/util/ArrayList;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    .line 188
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/sound/Player;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/hermit/android/sound/Player;->appContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addEffect(I)Lorg/hermit/android/sound/Effect;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 203
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lorg/hermit/android/sound/Player;->addEffect(IF)Lorg/hermit/android/sound/Effect;

    move-result-object v0

    return-object v0
.end method

.method public addEffect(IF)Lorg/hermit/android/sound/Effect;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "vol"    # F

    .prologue
    .line 216
    new-instance v0, Lorg/hermit/android/sound/Effect;

    invoke-direct {v0, p0, p1, p2}, Lorg/hermit/android/sound/Effect;-><init>(Lorg/hermit/android/sound/Player;IF)V

    .line 218
    .local v0, "effect":Lorg/hermit/android/sound/Effect;
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/sound/Player;->soundEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    monitor-exit p0

    .line 222
    return-object v0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGain()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/hermit/android/sound/Player;->soundGain:F

    return v0
.end method

.method public play(Lorg/hermit/android/sound/Effect;)V
    .locals 2
    .param p1, "effect"    # Lorg/hermit/android/sound/Effect;

    .prologue
    .line 317
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/hermit/android/sound/Player;->play(Lorg/hermit/android/sound/Effect;FZ)V

    .line 318
    return-void
.end method

.method public play(Lorg/hermit/android/sound/Effect;FZ)V
    .locals 6
    .param p1, "effect"    # Lorg/hermit/android/sound/Effect;
    .param p2, "rvol"    # F
    .param p3, "loop"    # Z

    .prologue
    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v3, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 334
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t play while suspended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 337
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/hermit/android/sound/Player;->soundGain:F

    mul-float v2, v3, p2

    .line 338
    .local v2, "vol":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 339
    const-string v3, "sound"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Computed volume="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    monitor-exit p0

    .line 365
    :goto_0
    return-void

    .line 342
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 343
    const/high16 v2, 0x3f800000    # 1.0f

    .line 347
    :cond_2
    const/4 v1, 0x0

    .line 348
    .local v1, "player":Lorg/hermit/android/sound/Player$PoolPlayer;
    iget-object v3, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 354
    :goto_1
    if-nez v1, :cond_4

    .line 355
    iget-object v3, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "player":Lorg/hermit/android/sound/Player$PoolPlayer;
    check-cast v1, Lorg/hermit/android/sound/Player$PoolPlayer;

    .line 356
    .restart local v1    # "player":Lorg/hermit/android/sound/Player$PoolPlayer;
    :cond_4
    iget-object v3, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 359
    invoke-static {v1, p1, v2, p3}, Lorg/hermit/android/sound/Player$PoolPlayer;->access$2(Lorg/hermit/android/sound/Player$PoolPlayer;Lorg/hermit/android/sound/Effect;FZ)Z

    .line 362
    invoke-virtual {p1, v1}, Lorg/hermit/android/sound/Effect;->setPlayer(Lorg/hermit/android/sound/Player$PoolPlayer;)V

    .line 363
    invoke-static {v1}, Lorg/hermit/android/sound/Player$PoolPlayer;->access$3(Lorg/hermit/android/sound/Player$PoolPlayer;)V

    .line 332
    monitor-exit p0

    goto :goto_0

    .line 348
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/sound/Player$PoolPlayer;

    .line 349
    .local v0, "p":Lorg/hermit/android/sound/Player$PoolPlayer;
    invoke-virtual {v0}, Lorg/hermit/android/sound/Player$PoolPlayer;->isPlaying()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 350
    move-object v1, v0

    .line 351
    goto :goto_1
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 239
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/hermit/android/sound/Player;->numStreams:I

    if-lt v0, v1, :cond_1

    .line 239
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    .line 247
    return-void

    .line 244
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    new-instance v2, Lorg/hermit/android/sound/Player$PoolPlayer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/hermit/android/sound/Player$PoolPlayer;-><init>(Lorg/hermit/android/sound/Player;Lorg/hermit/android/sound/Player$PoolPlayer;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGain(F)V
    .locals 0
    .param p1, "gain"    # F

    .prologue
    .line 307
    iput p1, p0, Lorg/hermit/android/sound/Player;->soundGain:F

    .line 308
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lorg/hermit/android/sound/Player;->suspend()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/sound/Player;->soundEffects:Ljava/util/ArrayList;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/sound/Player;->appContext:Landroid/content/Context;

    .line 277
    monitor-exit p0

    .line 282
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop(Lorg/hermit/android/sound/Effect;)V
    .locals 3
    .param p1, "effect"    # Lorg/hermit/android/sound/Effect;

    .prologue
    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 378
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t stop while suspended"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 380
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/hermit/android/sound/Effect;->getPlayer()Lorg/hermit/android/sound/Player$PoolPlayer;

    move-result-object v0

    .line 381
    .local v0, "player":Lorg/hermit/android/sound/Player$PoolPlayer;
    if-eqz v0, :cond_1

    .line 382
    invoke-static {v0}, Lorg/hermit/android/sound/Player$PoolPlayer;->access$4(Lorg/hermit/android/sound/Player$PoolPlayer;)V

    .line 383
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/hermit/android/sound/Effect;->setPlayer(Lorg/hermit/android/sound/Player$PoolPlayer;)V

    .line 376
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    return-void
.end method

.method public stopAll()V
    .locals 3

    .prologue
    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/sound/Player;->soundEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    monitor-exit p0

    .line 397
    return-void

    .line 394
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/sound/Effect;

    .line 395
    .local v0, "e":Lorg/hermit/android/sound/Effect;
    invoke-virtual {p0, v0}, Lorg/hermit/android/sound/Player;->stop(Lorg/hermit/android/sound/Effect;)V

    goto :goto_0

    .line 393
    .end local v0    # "e":Lorg/hermit/android/sound/Effect;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 262
    :goto_0
    iget-object v1, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/sound/Player$PoolPlayer;

    .local v0, "pp":Lorg/hermit/android/sound/Player$PoolPlayer;
    if-nez v0, :cond_1

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/hermit/android/sound/Player;->playerPool:Ljava/util/LinkedList;

    .line 259
    .end local v0    # "pp":Lorg/hermit/android/sound/Player$PoolPlayer;
    :cond_0
    monitor-exit p0

    .line 267
    return-void

    .line 263
    .restart local v0    # "pp":Lorg/hermit/android/sound/Player$PoolPlayer;
    :cond_1
    invoke-static {v0}, Lorg/hermit/android/sound/Player$PoolPlayer;->access$1(Lorg/hermit/android/sound/Player$PoolPlayer;)V

    goto :goto_0

    .line 259
    .end local v0    # "pp":Lorg/hermit/android/sound/Player$PoolPlayer;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
