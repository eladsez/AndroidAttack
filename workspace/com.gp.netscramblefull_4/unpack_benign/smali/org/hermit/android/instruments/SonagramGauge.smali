.class public Lorg/hermit/android/instruments/SonagramGauge;
.super Lorg/hermit/android/instruments/Gauge;
.source "SonagramGauge.java"


# static fields
.field private static final RANGE_BELS:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "instrument"


# instance fields
.field private bgBitmap:Landroid/graphics/Bitmap;

.field private bgCanvas:Landroid/graphics/Canvas;

.field private blockSize:I

.field private dispHeight:I

.field private dispWidth:I

.field private dispX:I

.field private dispY:I

.field private finalBitmap:Landroid/graphics/Bitmap;

.field private finalCanvas:Landroid/graphics/Canvas;

.field private labelSize:F

.field private final maxColors:I

.field private nyquistFreq:I

.field private final paintColors:[I

.field private period:F

.field private sonaBitmap:Landroid/graphics/Bitmap;

.field private sonaCanvas:Landroid/graphics/Canvas;

.field private sonaGraphHeight:F

.field private sonaGraphWidth:F

.field private sonaGraphX:F

.field private sonaGraphY:F


# direct methods
.method constructor <init>(Lorg/hermit/android/core/SurfaceRunner;II)V
    .locals 7
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;
    .param p2, "rate"    # I
    .param p3, "inputBlockSize"    # I

    .prologue
    const/16 v6, 0x32

    const/16 v5, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/Gauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 327
    iput v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->nyquistFreq:I

    .line 328
    iput v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->blockSize:I

    .line 329
    iput v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->period:F

    .line 332
    iput v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispX:I

    .line 333
    iput v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispY:I

    .line 334
    iput v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispWidth:I

    .line 335
    iput v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispHeight:I

    .line 338
    iput v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    .line 343
    iput v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphX:F

    .line 344
    iput v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphY:F

    .line 345
    iput v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphWidth:F

    .line 346
    iput v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphHeight:F

    .line 350
    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->bgBitmap:Landroid/graphics/Bitmap;

    .line 351
    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->bgCanvas:Landroid/graphics/Canvas;

    .line 355
    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaBitmap:Landroid/graphics/Bitmap;

    .line 356
    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaCanvas:Landroid/graphics/Canvas;

    .line 360
    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->finalBitmap:Landroid/graphics/Bitmap;

    .line 361
    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->finalCanvas:Landroid/graphics/Canvas;

    .line 365
    const/16 v1, 0xfb

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->paintColors:[I

    .line 366
    const/16 v1, 0xfa

    iput v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->maxColors:I

    .line 56
    iput p3, p0, Lorg/hermit/android/instruments/SonagramGauge;->blockSize:I

    .line 57
    invoke-virtual {p0, p2}, Lorg/hermit/android/instruments/SonagramGauge;->setSampleRate(I)V

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 62
    const/16 v0, 0x32

    :goto_1
    if-lt v0, v5, :cond_1

    .line 64
    const/16 v0, 0x64

    :goto_2
    const/16 v1, 0x96

    if-lt v0, v1, :cond_2

    .line 66
    const/16 v0, 0x96

    :goto_3
    const/16 v1, 0xfa

    if-le v0, v1, :cond_3

    .line 68
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->paintColors:[I

    mul-int/lit8 v2, v0, 0x5

    invoke-static {v4, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->paintColors:[I

    sub-int v2, v5, v0

    mul-int/lit8 v2, v2, 0x5

    invoke-static {v4, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_2
    iget-object v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->paintColors:[I

    sub-int v2, v0, v5

    mul-int/lit8 v2, v2, 0x3

    sub-int v3, v0, v6

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 67
    :cond_3
    iget-object v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->paintColors:[I

    const/16 v2, 0x226

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private drawBg(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 183
    const/high16 v5, -0x1000000

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 185
    const/16 v5, -0x100

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphX:F

    move/from16 v18, v0

    .line 190
    .local v18, "sx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphY:F

    move/from16 v19, v0

    .line 191
    .local v19, "sy":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphWidth:F

    move v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v15, v5, v6

    .line 192
    .local v15, "bw":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphHeight:F

    move v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v14, v5, v6

    .line 195
    .local v14, "bh":F
    add-float v5, v18, v15

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v5

    .line 196
    .local v6, "lx":F
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    const/16 v5, 0xa

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_0

    .line 207
    add-float v5, v19, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    move v7, v0

    add-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v5

    .line 208
    .local v7, "ly":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SonagramGauge;->period:F

    move v5, v0

    mul-float/2addr v5, v15

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    move-wide v0, v8

    double-to-float v0, v0

    move/from16 v22, v0

    .line 209
    .local v22, "totaltime":F
    const/16 v17, 0x0

    :goto_1
    const/16 v5, 0x9

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_3

    .line 218
    return-void

    .line 197
    .end local v7    # "ly":F
    .end local v22    # "totaltime":F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SonagramGauge;->nyquistFreq:I

    move v5, v0

    mul-int v5, v5, v17

    div-int/lit8 v16, v5, 0xa

    .line 198
    .local v16, "f":I
    const/16 v5, 0x2710

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x3e8

    move v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "k"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    .line 201
    .local v20, "text":Ljava/lang/String;
    :goto_2
    add-float v5, v19, v14

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v7, v14

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v5

    .line 202
    .restart local v7    # "ly":F
    const/high16 v5, 0x40e00000    # 7.0f

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    move v8, v0

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move v2, v5

    move v3, v8

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    const/high16 v5, 0x40400000    # 3.0f

    add-float v8, v6, v5

    move-object/from16 v5, p1

    move v9, v7

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 196
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 199
    .end local v7    # "ly":F
    .end local v20    # "text":Ljava/lang/String;
    :cond_1
    const/16 v5, 0x3e8

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x3e8

    move v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v7, v16, 0x64

    rem-int/lit8 v7, v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "k"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_2

    .line 200
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_2

    .line 210
    .end local v16    # "f":I
    .restart local v7    # "ly":F
    .restart local v22    # "totaltime":F
    :cond_3
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v22

    const/high16 v6, 0x41200000    # 10.0f

    div-float v21, v5, v6

    .line 211
    .local v21, "time":F
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v6    # "lx":F
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 212
    .restart local v20    # "text":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 213
    .local v23, "tw":F
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    mul-float/2addr v5, v15

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    add-float v5, v5, v18

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v5

    .line 214
    .restart local v6    # "lx":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v23, v5

    sub-float v5, v6, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move v2, v5

    move v3, v7

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    add-float v5, v19, v14

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v10, v5, v8

    add-float v5, v19, v14

    const/high16 v8, 0x40000000    # 2.0f

    add-float v12, v5, v8

    move-object/from16 v8, p1

    move v9, v6

    move v11, v6

    move-object/from16 v13, p2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1
.end method

.method private linearGraph([FLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "data"    # [F
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 259
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 260
    array-length v9, p1

    .line 261
    .local v9, "len":I
    iget v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphHeight:F

    int-to-float v1, v9

    div-float v6, v0, v1

    .line 264
    .local v6, "bh":F
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    if-lt v8, v9, :cond_0

    .line 282
    return-void

    .line 266
    :cond_0
    iget v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphHeight:F

    int-to-float v1, v8

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v2, v0, v1

    .line 269
    .local v2, "y":F
    aget v0, p1, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v3

    double-to-float v10, v0

    .line 270
    .local v10, "v":F
    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr v0, v10

    float-to-int v7, v0

    .line 271
    .local v7, "colorIndex":I
    if-gez v7, :cond_1

    .line 272
    const/4 v7, 0x0

    .line 273
    :cond_1
    const/16 v0, 0xfa

    if-le v7, v0, :cond_2

    .line 274
    const/16 v7, 0xfa

    .line 275
    :cond_2
    iget-object v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->paintColors:[I

    aget v0, v0, v7

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_3

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 264
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 280
    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    sub-float v4, v2, v6

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method


# virtual methods
.method protected final drawBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "now"    # J

    .prologue
    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->finalBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    monitor-exit p0

    .line 306
    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLabelSize()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    return v0
.end method

.method public setGeometry(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-super {p0, p1}, Lorg/hermit/android/instruments/Gauge;->setGeometry(Landroid/graphics/Rect;)V

    .line 127
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispX:I

    .line 128
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispY:I

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispWidth:I

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispHeight:I

    .line 133
    iget v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispWidth:I

    .line 134
    .local v1, "mw":I
    iget v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispHeight:I

    .line 135
    .local v0, "mh":I
    iget v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 136
    int-to-float v2, v1

    const/high16 v3, 0x41c00000    # 24.0f

    div-float/2addr v2, v3

    iput v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    .line 138
    :cond_0
    iput v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphX:F

    .line 139
    const/high16 v2, 0x40400000    # 3.0f

    iput v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphY:F

    .line 140
    int-to-float v2, v1

    iget v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphWidth:F

    .line 141
    int-to-float v2, v0

    iget v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphHeight:F

    .line 145
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SonagramGauge;->getSurface()Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v2

    iget v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispWidth:I

    iget v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispHeight:I

    invoke-virtual {v2, v3, v4}, Lorg/hermit/android/core/SurfaceRunner;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->finalBitmap:Landroid/graphics/Bitmap;

    .line 146
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->finalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->finalCanvas:Landroid/graphics/Canvas;

    .line 150
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SonagramGauge;->getSurface()Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v2

    iget v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphWidth:F

    float-to-int v3, v3

    iget v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphHeight:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/hermit/android/core/SurfaceRunner;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaBitmap:Landroid/graphics/Bitmap;

    .line 151
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaCanvas:Landroid/graphics/Canvas;

    .line 155
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SonagramGauge;->getSurface()Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v2

    iget v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispWidth:I

    iget v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->dispHeight:I

    invoke-virtual {v2, v3, v4}, Lorg/hermit/android/core/SurfaceRunner;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->bgBitmap:Landroid/graphics/Bitmap;

    .line 156
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->bgCanvas:Landroid/graphics/Canvas;

    .line 158
    iget-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->bgCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/hermit/android/instruments/SonagramGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/hermit/android/instruments/SonagramGauge;->drawBg(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method public setLabelSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 97
    iput p1, p0, Lorg/hermit/android/instruments/SonagramGauge;->labelSize:F

    .line 98
    return-void
.end method

.method public setSampleRate(I)V
    .locals 2
    .param p1, "rate"    # I

    .prologue
    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/hermit/android/instruments/SonagramGauge;->blockSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->period:F

    .line 82
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->nyquistFreq:I

    .line 86
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SonagramGauge;->haveBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->bgCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/hermit/android/instruments/SonagramGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/hermit/android/instruments/SonagramGauge;->drawBg(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 88
    :cond_0
    return-void
.end method

.method final update([F)V
    .locals 6
    .param p1, "data"    # [F

    .prologue
    .line 233
    iget-object v0, p0, Lorg/hermit/android/instruments/SonagramGauge;->finalCanvas:Landroid/graphics/Canvas;

    .line 234
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SonagramGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 237
    .local v1, "paint":Landroid/graphics/Paint;
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->bgBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    iget-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaBitmap:Landroid/graphics/Bitmap;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    iget-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v2, v1}, Lorg/hermit/android/instruments/SonagramGauge;->linearGraph([FLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 246
    iget-object v2, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphX:F

    iget v4, p0, Lorg/hermit/android/instruments/SonagramGauge;->sonaGraphY:F

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    monitor-exit p0

    .line 248
    return-void

    .line 237
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
