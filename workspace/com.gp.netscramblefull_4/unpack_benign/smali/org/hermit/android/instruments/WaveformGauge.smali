.class public Lorg/hermit/android/instruments/WaveformGauge;
.super Lorg/hermit/android/instruments/Gauge;
.source "WaveformGauge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "instrument"


# instance fields
.field private dispHeight:I

.field private dispWidth:I

.field private dispX:I

.field private dispY:I

.field private waveBitmap:Landroid/graphics/Bitmap;

.field private waveCanvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 2
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/Gauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 180
    iput v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispX:I

    .line 181
    iput v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispY:I

    .line 182
    iput v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispWidth:I

    .line 183
    iput v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispHeight:I

    .line 187
    iput-object v1, p0, Lorg/hermit/android/instruments/WaveformGauge;->waveBitmap:Landroid/graphics/Bitmap;

    .line 188
    iput-object v1, p0, Lorg/hermit/android/instruments/WaveformGauge;->waveCanvas:Landroid/graphics/Canvas;

    .line 54
    return-void
.end method


# virtual methods
.method protected final drawBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "now"    # J

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->waveBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    monitor-exit p0

    .line 163
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGeometry(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lorg/hermit/android/instruments/Gauge;->setGeometry(Landroid/graphics/Rect;)V

    .line 73
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispX:I

    .line 74
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispY:I

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispWidth:I

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispHeight:I

    .line 80
    invoke-virtual {p0}, Lorg/hermit/android/instruments/WaveformGauge;->getSurface()Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v0

    iget v1, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispWidth:I

    iget v2, p0, Lorg/hermit/android/instruments/WaveformGauge;->dispHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/hermit/android/core/SurfaceRunner;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->waveBitmap:Landroid/graphics/Bitmap;

    .line 81
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/hermit/android/instruments/WaveformGauge;->waveBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/hermit/android/instruments/WaveformGauge;->waveCanvas:Landroid/graphics/Canvas;

    .line 82
    return-void
.end method

.method final update([SIIFF)V
    .locals 18
    .param p1, "buffer"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "bias"    # F
    .param p5, "range"    # F

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/WaveformGauge;->waveCanvas:Landroid/graphics/Canvas;

    move-object v2, v0

    .line 103
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/android/instruments/WaveformGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 109
    .local v7, "paint":Landroid/graphics/Paint;
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x45cb2000    # 6500.0f

    div-float v5, p5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x46800000    # 16384.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/WaveformGauge;->dispHeight:I

    move v5, v0

    int-to-float v5, v5

    mul-float v16, v4, v5

    .line 110
    .local v16, "scale":F
    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v16, v4

    if-ltz v4, :cond_0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    :cond_0
    const v16, 0x3a83126f    # 0.001f

    .line 114
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/WaveformGauge;->dispWidth:I

    move v4, v0

    div-int/lit8 v4, v4, 0x18

    int-to-float v3, v4

    .line 115
    .local v3, "margin":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/WaveformGauge;->dispWidth:I

    move v4, v0

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    sub-float v14, v4, v5

    .line 116
    .local v14, "gwidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/WaveformGauge;->dispHeight:I

    move v4, v0

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v10, v4, v5

    .line 117
    .local v10, "baseY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move v4, v0

    div-float v17, v14, v4

    .line 120
    .local v17, "uw":F
    monitor-enter p0

    .line 121
    const/high16 v4, -0x1000000

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 124
    const/16 v4, -0x100

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/WaveformGauge;->dispHeight:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v6, v5

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    const/16 v4, -0x100

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move v0, v15

    move/from16 v1, p3

    if-lt v0, v1, :cond_3

    .line 120
    monitor-exit p0

    .line 139
    return-void

    .line 112
    .end local v3    # "margin":F
    .end local v10    # "baseY":F
    .end local v14    # "gwidth":F
    .end local v15    # "i":I
    .end local v17    # "uw":F
    :cond_2
    const/high16 v4, 0x447a0000    # 1000.0f

    cmpl-float v4, v16, v4

    if-lez v4, :cond_1

    .line 113
    const/high16 v16, 0x447a0000    # 1000.0f

    goto :goto_0

    .line 134
    .restart local v3    # "margin":F
    .restart local v10    # "baseY":F
    .restart local v14    # "gwidth":F
    .restart local v15    # "i":I
    .restart local v17    # "uw":F
    :cond_3
    int-to-float v4, v15

    mul-float v4, v4, v17

    add-float v9, v3, v4

    .line 135
    .local v9, "x":F
    add-int v4, p2, v15

    aget-short v4, p1, v4

    int-to-float v4, v4

    sub-float v4, v4, p4

    mul-float v4, v4, v16

    sub-float v12, v10, v4

    .local v12, "y":F
    move-object v8, v2

    move v11, v9

    move-object v13, v7

    .line 136
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 120
    .end local v9    # "x":F
    .end local v12    # "y":F
    .end local v15    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
