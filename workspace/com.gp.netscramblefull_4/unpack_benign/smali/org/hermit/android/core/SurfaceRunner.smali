.class public abstract Lorg/hermit/android/core/SurfaceRunner;
.super Landroid/view/SurfaceView;
.source "SurfaceRunner.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/core/SurfaceRunner$LoopTicker;,
        Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;,
        Lorg/hermit/android/core/SurfaceRunner$Ticker;
    }
.end annotation


# static fields
.field private static final ENABLE_ALL:I = 0x1f

.field private static final ENABLE_FOCUSED:I = 0x10

.field private static final ENABLE_RESUMED:I = 0x4

.field private static final ENABLE_SIZE:I = 0x2

.field private static final ENABLE_STARTED:I = 0x8

.field private static final ENABLE_SURFACE:I = 0x1

.field public static final LOOPED_TICKER:I = 0x2

.field private static final STATS_UPDATE:I = 0x1388

.field public static final SURFACE_DYNAMIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceRunner"


# instance fields
.field private animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

.field private animationDelay:J

.field private appContext:Landroid/content/Context;

.field private canvasConfig:Landroid/graphics/Bitmap$Config;

.field private canvasHeight:I

.field private canvasWidth:I

.field private enableFlags:I

.field private errorReporter:Lorg/hermit/android/core/Errors;

.field private perfAppLabels:[Ljava/lang/String;

.field private perfBitmap:Landroid/graphics/Bitmap;

.field private perfBuffers:[[C

.field private perfCanvas:Landroid/graphics/Canvas;

.field private perfCounts:[I

.field private perfLastTime:J

.field private perfPaint:Landroid/graphics/Paint;

.field private perfPosX:I

.field private perfPosY:I

.field private perfStats:[I

.field private showPerf:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceOptions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "app"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1164
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1168
    iput-wide v2, p0, Lorg/hermit/android/core/SurfaceRunner;->animationDelay:J

    .line 1171
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceOptions:I

    .line 1174
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    .line 1177
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasWidth:I

    .line 1178
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasHeight:I

    .line 1179
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    .line 1182
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    .line 1185
    iput-boolean v1, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    .line 1188
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfAppLabels:[Ljava/lang/String;

    .line 1191
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    .line 1192
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCounts:[I

    .line 1198
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBitmap:Landroid/graphics/Bitmap;

    .line 1199
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCanvas:Landroid/graphics/Canvas;

    .line 1202
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPaint:Landroid/graphics/Paint;

    .line 1205
    iput-wide v2, p0, Lorg/hermit/android/core/SurfaceRunner;->perfLastTime:J

    .line 1208
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosX:I

    .line 1209
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosY:I

    .line 95
    invoke-direct {p0, p1, v1}, Lorg/hermit/android/core/SurfaceRunner;->init(Landroid/content/Context;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "app"    # Landroid/content/Context;
    .param p2, "options"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1164
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1168
    iput-wide v2, p0, Lorg/hermit/android/core/SurfaceRunner;->animationDelay:J

    .line 1171
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceOptions:I

    .line 1174
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    .line 1177
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasWidth:I

    .line 1178
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasHeight:I

    .line 1179
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    .line 1182
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    .line 1185
    iput-boolean v1, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    .line 1188
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfAppLabels:[Ljava/lang/String;

    .line 1191
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    .line 1192
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCounts:[I

    .line 1198
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBitmap:Landroid/graphics/Bitmap;

    .line 1199
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCanvas:Landroid/graphics/Canvas;

    .line 1202
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPaint:Landroid/graphics/Paint;

    .line 1205
    iput-wide v2, p0, Lorg/hermit/android/core/SurfaceRunner;->perfLastTime:J

    .line 1208
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosX:I

    .line 1209
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosY:I

    .line 108
    invoke-direct {p0, p1, p2}, Lorg/hermit/android/core/SurfaceRunner;->init(Landroid/content/Context;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "app"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1164
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1168
    iput-wide v2, p0, Lorg/hermit/android/core/SurfaceRunner;->animationDelay:J

    .line 1171
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceOptions:I

    .line 1174
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    .line 1177
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasWidth:I

    .line 1178
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasHeight:I

    .line 1179
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    .line 1182
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    .line 1185
    iput-boolean v1, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    .line 1188
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfAppLabels:[Ljava/lang/String;

    .line 1191
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    .line 1192
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCounts:[I

    .line 1198
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBitmap:Landroid/graphics/Bitmap;

    .line 1199
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCanvas:Landroid/graphics/Canvas;

    .line 1202
    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPaint:Landroid/graphics/Paint;

    .line 1205
    iput-wide v2, p0, Lorg/hermit/android/core/SurfaceRunner;->perfLastTime:J

    .line 1208
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosX:I

    .line 1209
    iput v1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosY:I

    .line 120
    invoke-direct {p0, p1, v1}, Lorg/hermit/android/core/SurfaceRunner;->init(Landroid/content/Context;I)V

    .line 121
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lorg/hermit/android/core/SurfaceRunner;->tick()V

    return-void
.end method

.method static synthetic access$1(Lorg/hermit/android/core/SurfaceRunner;)J
    .locals 2

    .prologue
    .line 1168
    iget-wide v0, p0, Lorg/hermit/android/core/SurfaceRunner;->animationDelay:J

    return-wide v0
.end method

.method private clearEnable(ILjava/lang/String;)V
    .locals 8
    .param p1, "flag"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x1f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "enabled1":Z
    const/4 v1, 0x0

    .line 382
    .local v1, "enabled2":Z
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    .line 383
    :try_start_0
    iget v3, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v7, :cond_1

    move v0, v6

    .line 384
    :goto_0
    iget v3, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    .line 385
    iget v3, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v7, :cond_2

    move v1, v6

    .line 387
    :goto_1
    const-string v3, "SurfaceRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EN - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lorg/hermit/android/core/SurfaceRunner;->enableString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 392
    invoke-direct {p0}, Lorg/hermit/android/core/SurfaceRunner;->stopRun()V

    .line 393
    :cond_0
    return-void

    :cond_1
    move v0, v5

    .line 383
    goto :goto_0

    :cond_2
    move v1, v5

    .line 385
    goto :goto_1

    .line 382
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private enableString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 402
    const/4 v1, 0x5

    new-array v0, v1, [C

    .line 403
    .local v0, "buf":[C
    const/4 v1, 0x0

    iget v2, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/16 v2, 0x53

    :goto_0
    aput-char v2, v0, v1

    .line 404
    const/4 v1, 0x1

    iget v2, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v2, 0x5a

    :goto_1
    aput-char v2, v0, v1

    .line 405
    const/4 v1, 0x2

    iget v2, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    const/16 v2, 0x52

    :goto_2
    aput-char v2, v0, v1

    .line 406
    const/4 v1, 0x3

    iget v2, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    const/16 v2, 0x41

    :goto_3
    aput-char v2, v0, v1

    .line 407
    const/4 v1, 0x4

    iget v2, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    const/16 v2, 0x46

    :goto_4
    aput-char v2, v0, v1

    .line 409
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move v2, v3

    .line 403
    goto :goto_0

    :cond_1
    move v2, v3

    .line 404
    goto :goto_1

    :cond_2
    move v2, v3

    .line 405
    goto :goto_2

    :cond_3
    move v2, v3

    .line 406
    goto :goto_3

    :cond_4
    move v2, v3

    .line 407
    goto :goto_4
.end method

.method private init(Landroid/content/Context;I)V
    .locals 4
    .param p1, "app"    # Landroid/content/Context;
    .param p2, "options"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    iput-object p1, p0, Lorg/hermit/android/core/SurfaceRunner;->appContext:Landroid/content/Context;

    .line 133
    invoke-static {p1}, Lorg/hermit/android/core/Errors;->getInstance(Landroid/content/Context;)Lorg/hermit/android/core/Errors;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->errorReporter:Lorg/hermit/android/core/Errors;

    .line 134
    iput p2, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceOptions:I

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/android/core/SurfaceRunner;->animationDelay:J

    .line 138
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 139
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 140
    invoke-virtual {p0, v3}, Lorg/hermit/android/core/SurfaceRunner;->setFocusable(Z)V

    .line 141
    invoke-virtual {p0, v3}, Lorg/hermit/android/core/SurfaceRunner;->setFocusableInTouchMode(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lorg/hermit/android/core/SurfaceRunner;->setHorizontalFadingEdgeEnabled(Z)V

    .line 146
    invoke-virtual {p0, v2}, Lorg/hermit/android/core/SurfaceRunner;->setVerticalFadingEdgeEnabled(Z)V

    .line 147
    return-void
.end method

.method private isEnable(I)Z
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "val":Z
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 344
    :try_start_0
    iget v2, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 343
    :goto_0
    monitor-exit v1

    .line 346
    return v0

    .line 344
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private refreshScreen(J)V
    .locals 11
    .param p1, "now"    # J

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, "canvas":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 555
    iget-object v5, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 556
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 557
    .local v3, "drawStart":J
    invoke-virtual {p0, v0, p1, p2}, Lorg/hermit/android/core/SurfaceRunner;->doDraw(Landroid/graphics/Canvas;J)V

    .line 558
    iget-boolean v6, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    if-eqz v6, :cond_0

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 560
    .local v1, "drawEnd":J
    const/4 v6, 0x2

    sub-long v7, v1, v3

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-direct {p0, v6, v7, v8}, Lorg/hermit/android/core/SurfaceRunner;->statsTimeInt(IJ)V

    .line 564
    .end local v1    # "drawEnd":J
    :cond_0
    iget-boolean v6, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    if-eqz v6, :cond_2

    .line 566
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lorg/hermit/android/core/SurfaceRunner;->statsCountInt(II)V

    .line 570
    iget-wide v6, p0, Lorg/hermit/android/core/SurfaceRunner;->perfLastTime:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 571
    invoke-direct {p0}, Lorg/hermit/android/core/SurfaceRunner;->statsDraw()V

    .line 572
    iput-wide p1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfLastTime:J

    .line 576
    :cond_1
    iget-object v6, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBitmap:Landroid/graphics/Bitmap;

    iget v7, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosX:I

    int-to-float v7, v7

    iget v8, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosY:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 555
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    if-eqz v0, :cond_3

    .line 584
    iget-object v5, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 586
    :cond_3
    return-void

    .line 555
    .end local v3    # "drawStart":J
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 579
    :catchall_1
    move-exception v5

    .line 583
    if-eqz v0, :cond_4

    .line 584
    iget-object v6, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 585
    :cond_4
    throw v5
.end method

.method private setEnable(ILjava/lang/String;)V
    .locals 7
    .param p1, "flag"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x1f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "enabled1":Z
    const/4 v1, 0x0

    .line 359
    .local v1, "enabled2":Z
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    .line 360
    :try_start_0
    iget v3, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v6, :cond_1

    move v0, v5

    .line 361
    :goto_0
    iget v3, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    or-int/2addr v3, p1

    iput v3, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    .line 362
    iget v3, p0, Lorg/hermit/android/core/SurfaceRunner;->enableFlags:I

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v6, :cond_2

    move v1, v5

    .line 364
    :goto_1
    const-string v3, "SurfaceRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EN + "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lorg/hermit/android/core/SurfaceRunner;->enableString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 369
    invoke-direct {p0}, Lorg/hermit/android/core/SurfaceRunner;->startRun()V

    .line 370
    :cond_0
    return-void

    :cond_1
    move v0, v4

    .line 360
    goto :goto_0

    :cond_2
    move v1, v4

    .line 362
    goto :goto_1

    .line 359
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private setSize(III)V
    .locals 5
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 476
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 477
    :try_start_0
    iput p2, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasWidth:I

    .line 478
    iput p3, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasHeight:I

    .line 481
    packed-switch p1, :pswitch_data_0

    .line 495
    :pswitch_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :goto_0
    :try_start_1
    iget v2, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasWidth:I

    iget v3, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasHeight:I

    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v2, v3, v4}, Lorg/hermit/android/core/SurfaceRunner;->appSize(IILandroid/graphics/Bitmap$Config;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    invoke-direct {p0}, Lorg/hermit/android/core/SurfaceRunner;->statsInit()V

    .line 508
    return-void

    .line 483
    :pswitch_1
    :try_start_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 486
    :pswitch_2
    :try_start_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 489
    :pswitch_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 492
    :pswitch_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 501
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->errorReporter:Lorg/hermit/android/core/Errors;

    invoke-virtual {v2, v0}, Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startRun()V
    .locals 4

    .prologue
    .line 418
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner;->animStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    invoke-interface {v2}, Lorg/hermit/android/core/SurfaceRunner$Ticker;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    invoke-interface {v2}, Lorg/hermit/android/core/SurfaceRunner$Ticker;->kill()V

    .line 428
    :cond_0
    const-string v2, "SurfaceRunner"

    const-string v3, "set running: start ticker"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/hermit/android/core/SurfaceRunner;->optionSet(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    new-instance v2, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;-><init>(Lorg/hermit/android/core/SurfaceRunner;Lorg/hermit/android/core/SurfaceRunner$ThreadTicker;)V

    .line 429
    :goto_1
    iput-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    .line 418
    monitor-exit v1

    .line 432
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->errorReporter:Lorg/hermit/android/core/Errors;

    invoke-virtual {v2, v0}, Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 430
    :cond_1
    :try_start_2
    new-instance v2, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;-><init>(Lorg/hermit/android/core/SurfaceRunner;Lorg/hermit/android/core/SurfaceRunner$LoopTicker;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private statsCountInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "val"    # I

    .prologue
    .line 834
    if-gez p2, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-boolean v0, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 837
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

    goto :goto_0
.end method

.method private statsDraw()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 880
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    array-length v0, v0

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    array-length v0, v0

    if-lt v8, v0, :cond_2

    .line 891
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCanvas:Landroid/graphics/Canvas;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 892
    const/4 v8, 0x0

    :goto_1
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    array-length v0, v0

    if-lt v8, v0, :cond_4

    .line 897
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    array-length v0, v0

    if-ge v8, v0, :cond_1

    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    array-length v0, v0

    if-lt v8, v0, :cond_5

    .line 901
    :cond_1
    return-void

    .line 881
    :cond_2
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    aget v9, v0, v8

    .line 882
    .local v9, "v":I
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCounts:[I

    aget v7, v0, v8

    .line 883
    .local v7, "c":I
    if-eqz v7, :cond_3

    .line 884
    div-int/2addr v9, v7

    .line 887
    :goto_3
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    aget-object v0, v0, v8

    const/4 v1, 0x6

    invoke-static {v0, v2, v9, v1, v2}, Lorg/hermit/utils/CharFormatter;->formatInt([CIIIZ)V

    .line 880
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 886
    :cond_3
    mul-int/lit16 v0, v9, 0x3e8

    div-int/lit16 v9, v0, 0x1388

    goto :goto_3

    .line 893
    .end local v7    # "c":I
    .end local v9    # "v":I
    :cond_4
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    aget-object v1, v1, v8

    iget-object v3, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    aget-object v3, v3, v8

    array-length v3, v3

    .line 894
    const/4 v4, 0x0

    mul-int/lit8 v5, v8, 0xc

    add-int/lit8 v5, v5, 0xc

    int-to-float v5, v5

    iget-object v6, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPaint:Landroid/graphics/Paint;

    .line 893
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 892
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 898
    :cond_5
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    aput v2, v0, v8

    .line 899
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCounts:[I

    aput v2, v0, v8

    .line 897
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private statsInit()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x6

    .line 777
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPaint:Landroid/graphics/Paint;

    .line 778
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 783
    const/4 v3, 0x3

    .line 784
    .local v3, "nstats":I
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfAppLabels:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 785
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfAppLabels:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    .line 787
    :cond_0
    new-array v4, v3, [[C

    iput-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    .line 789
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 791
    const/4 v1, 0x0

    .line 792
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v4, v4, v1

    const-string v5, " fps"

    invoke-static {v4, v10, v5, v11}, Lorg/hermit/utils/CharFormatter;->formatString([CILjava/lang/String;I)V

    .line 793
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v4, v4, v2

    const-string v5, " \u00b5s phys"

    invoke-static {v4, v10, v5, v11}, Lorg/hermit/utils/CharFormatter;->formatString([CILjava/lang/String;I)V

    .line 794
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-object v4, v4, v1

    const-string v5, " \u00b5s draw"

    invoke-static {v4, v10, v5, v11}, Lorg/hermit/utils/CharFormatter;->formatString([CILjava/lang/String;I)V

    .line 795
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfAppLabels:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 796
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfAppLabels:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_3

    :cond_1
    move v1, v2

    .line 800
    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v4, 0x64

    mul-int/lit8 v5, v3, 0xc

    add-int/lit8 v5, v5, 0x4

    iget-object v6, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBitmap:Landroid/graphics/Bitmap;

    .line 801
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCanvas:Landroid/graphics/Canvas;

    .line 804
    new-array v4, v3, [I

    iput-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    .line 805
    new-array v4, v3, [I

    iput-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCounts:[I

    .line 806
    return-void

    .line 790
    :cond_2
    iget-object v4, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    const/16 v5, 0xe

    new-array v5, v5, [C

    aput-object v5, v4, v1

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    aget-object v0, v4, v6

    .line 797
    .local v0, "alab":Ljava/lang/String;
    iget-object v7, p0, Lorg/hermit/android/core/SurfaceRunner;->perfBuffers:[[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v7, v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v10, v8, v11}, Lorg/hermit/utils/CharFormatter;->formatString([CILjava/lang/String;I)V

    .line 796
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method private statsTimeInt(IJ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "val"    # J

    .prologue
    .line 866
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-boolean v0, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 869
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfStats:[I

    aget v1, v0, p1

    long-to-int v2, p2

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 870
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->perfCounts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    goto :goto_0
.end method

.method private stopRun()V
    .locals 4

    .prologue
    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, "ticker":Lorg/hermit/android/core/SurfaceRunner$Ticker;
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    .line 447
    :try_start_0
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    .line 446
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/hermit/android/core/SurfaceRunner$Ticker;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner;->onSurfaceThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    invoke-interface {v1}, Lorg/hermit/android/core/SurfaceRunner$Ticker;->kill()V

    .line 455
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    .line 456
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    .line 455
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 461
    :try_start_2
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner;->animStop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 465
    :goto_1
    return-void

    .line 446
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 453
    :cond_1
    invoke-interface {v1}, Lorg/hermit/android/core/SurfaceRunner$Ticker;->killAndWait()V

    goto :goto_0

    .line 455
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->errorReporter:Lorg/hermit/android/core/Errors;

    invoke-virtual {v2, v0}, Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private tick()V
    .locals 8

    .prologue
    .line 534
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 535
    .local v1, "now":J
    invoke-virtual {p0, v1, v2}, Lorg/hermit/android/core/SurfaceRunner;->doUpdate(J)V

    .line 536
    iget-boolean v3, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    if-eqz v3, :cond_0

    .line 537
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lorg/hermit/android/core/SurfaceRunner;->statsTimeInt(IJ)V

    .line 540
    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/hermit/android/core/SurfaceRunner;->refreshScreen(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v1    # "now":J
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/hermit/android/core/SurfaceRunner;->errorReporter:Lorg/hermit/android/core/Errors;

    invoke-virtual {v3, v0}, Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract animStart()V
.end method

.method protected abstract animStop()V
.end method

.method protected abstract appSize(IILandroid/graphics/Bitmap$Config;)V
.end method

.method protected abstract appStart()V
.end method

.method protected abstract appStop()V
.end method

.method protected abstract doDraw(Landroid/graphics/Canvas;J)V
.end method

.method protected abstract doUpdate(J)V
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 692
    iget v0, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasWidth:I

    iget v1, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasHeight:I

    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->canvasConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRes(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 679
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->appContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x4

    const-string v1, "onPause"

    invoke-direct {p0, v0, v1}, Lorg/hermit/android/core/SurfaceRunner;->clearEnable(ILjava/lang/String;)V

    .line 298
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x4

    const-string v1, "onResume"

    invoke-direct {p0, v0, v1}, Lorg/hermit/android/core/SurfaceRunner;->setEnable(ILjava/lang/String;)V

    .line 269
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 252
    const-string v1, "SurfaceRunner"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner;->appStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->errorReporter:Lorg/hermit/android/core/Errors;

    invoke-virtual {v1, v0}, Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 306
    const-string v1, "SurfaceRunner"

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner;->onPause()V

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lorg/hermit/android/core/SurfaceRunner;->appStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->errorReporter:Lorg/hermit/android/core/Errors;

    invoke-virtual {v1, v0}, Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSurfaceThread()Z
    .locals 2

    .prologue
    .line 717
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/16 v1, 0x10

    const-string v2, "onWindowFocusChanged"

    .line 328
    if-nez p1, :cond_0

    .line 329
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v1, v2}, Lorg/hermit/android/core/SurfaceRunner;->clearEnable(ILjava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v1, v2}, Lorg/hermit/android/core/SurfaceRunner;->setEnable(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public optionSet(I)Z
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 161
    iget v0, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceOptions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postUpdate()V
    .locals 4

    .prologue
    .line 521
    iget-object v1, p0, Lorg/hermit/android/core/SurfaceRunner;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v2, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    instance-of v2, v2, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;

    if-nez v2, :cond_0

    .line 523
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t post updates without LOOPED_TICKER set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 525
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/hermit/android/core/SurfaceRunner;->animTicker:Lorg/hermit/android/core/SurfaceRunner$Ticker;

    check-cast v0, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;

    .line 526
    .local v0, "ticker":Lorg/hermit/android/core/SurfaceRunner$LoopTicker;
    invoke-virtual {v0}, Lorg/hermit/android/core/SurfaceRunner$LoopTicker;->post()V

    .line 521
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    return-void
.end method

.method public setDebugPerf(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 731
    iput-boolean p1, p0, Lorg/hermit/android/core/SurfaceRunner;->showPerf:Z

    .line 732
    return-void
.end method

.method public setDebugPos(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 742
    iput p1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosX:I

    .line 743
    iput p2, p0, Lorg/hermit/android/core/SurfaceRunner;->perfPosY:I

    .line 744
    return-void
.end method

.method public setDelay(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 183
    const-string v0, "SurfaceRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDelay "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-wide p1, p0, Lorg/hermit/android/core/SurfaceRunner;->animationDelay:J

    .line 185
    return-void
.end method

.method public statsCount(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "val"    # I

    .prologue
    .line 820
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2}, Lorg/hermit/android/core/SurfaceRunner;->statsCountInt(II)V

    .line 821
    return-void
.end method

.method protected statsCreate([Ljava/lang/String;)V
    .locals 0
    .param p1, "labels"    # [Ljava/lang/String;

    .prologue
    .line 767
    iput-object p1, p0, Lorg/hermit/android/core/SurfaceRunner;->perfAppLabels:[Ljava/lang/String;

    .line 768
    return-void
.end method

.method public statsTime(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "val"    # J

    .prologue
    .line 852
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2, p3}, Lorg/hermit/android/core/SurfaceRunner;->statsTimeInt(IJ)V

    .line 853
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x2

    const-string v3, "x"

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/hermit/android/core/SurfaceRunner;->optionSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lorg/hermit/android/core/SurfaceRunner;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "SurfaceRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignored surfaceChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lorg/hermit/android/core/SurfaceRunner;->setSize(III)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/hermit/android/core/SurfaceRunner;->setEnable(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 201
    const/4 v0, 0x1

    const-string v1, "surfaceCreated"

    invoke-direct {p0, v0, v1}, Lorg/hermit/android/core/SurfaceRunner;->setEnable(ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 243
    const/4 v0, 0x1

    const-string v1, "surfaceDestroyed"

    invoke-direct {p0, v0, v1}, Lorg/hermit/android/core/SurfaceRunner;->clearEnable(ILjava/lang/String;)V

    .line 244
    return-void
.end method

.method public surfaceStart()V
    .locals 2

    .prologue
    .line 278
    const/16 v0, 0x8

    const-string v1, "surfaceStart"

    invoke-direct {p0, v0, v1}, Lorg/hermit/android/core/SurfaceRunner;->setEnable(ILjava/lang/String;)V

    .line 279
    return-void
.end method

.method public surfaceStop()V
    .locals 2

    .prologue
    .line 288
    const/16 v0, 0x8

    const-string v1, "surfaceStop"

    invoke-direct {p0, v0, v1}, Lorg/hermit/android/core/SurfaceRunner;->clearEnable(ILjava/lang/String;)V

    .line 289
    return-void
.end method
