.class public Lorg/hermit/android/instruments/SpectrumGauge;
.super Lorg/hermit/android/instruments/Gauge;
.source "SpectrumGauge.java"


# static fields
.field private static final LOG2:D

.field private static final RANGE_BELS:F = 6.0f

.field private static final TAG:Ljava/lang/String; = "instrument"

.field private static final logFreqScale:Z


# instance fields
.field private bgBitmap:Landroid/graphics/Bitmap;

.field private bgCanvas:Landroid/graphics/Canvas;

.field private dispHeight:I

.field private dispWidth:I

.field private dispX:I

.field private dispY:I

.field private labelSize:F

.field private nyquistFreq:I

.field private paintColor:[F

.field private specBitmap:Landroid/graphics/Bitmap;

.field private specCanvas:Landroid/graphics/Canvas;

.field private spectGraphHeight:F

.field private spectGraphMargin:F

.field private spectGraphWidth:F

.field private spectGraphX:F

.field private spectGraphY:F

.field private spectLabY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 360
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/hermit/android/instruments/SpectrumGauge;->LOG2:D

    .line 39
    return-void
.end method

.method constructor <init>(Lorg/hermit/android/core/SurfaceRunner;I)V
    .locals 3
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;
    .param p2, "rate"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/Gauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 372
    iput v1, p0, Lorg/hermit/android/instruments/SpectrumGauge;->nyquistFreq:I

    .line 378
    iput v1, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispX:I

    .line 379
    iput v1, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispY:I

    .line 380
    iput v1, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispWidth:I

    .line 381
    iput v1, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispHeight:I

    .line 384
    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->labelSize:F

    .line 389
    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphX:F

    .line 390
    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    .line 391
    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphWidth:F

    .line 392
    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphHeight:F

    .line 393
    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectLabY:F

    .line 394
    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphMargin:F

    .line 398
    iput-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->bgBitmap:Landroid/graphics/Bitmap;

    .line 399
    iput-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->bgCanvas:Landroid/graphics/Canvas;

    .line 403
    iput-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->specBitmap:Landroid/graphics/Bitmap;

    .line 404
    iput-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->specCanvas:Landroid/graphics/Canvas;

    .line 407
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    .line 56
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->nyquistFreq:I

    .line 57
    return-void

    .line 407
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawBg(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 166
    const/high16 v5, -0x1000000

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 168
    const/16 v5, -0x100

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphX:F

    move v6, v0

    add-float/2addr v6, v5

    .line 173
    .local v6, "sx":F
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    move v7, v0

    add-float/2addr v7, v5

    .line 174
    .local v7, "sy":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphWidth:F

    move v5, v0

    add-float/2addr v5, v6

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v5, v8

    .line 175
    .local v8, "ex":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphHeight:F

    move v5, v0

    add-float/2addr v5, v7

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v5, v9

    .line 176
    .local v9, "ey":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphWidth:F

    move v5, v0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v17, v5, v10

    .line 177
    .local v17, "bw":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphHeight:F

    move v5, v0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v16, v5, v10

    .local v16, "bh":F
    move-object/from16 v5, p1

    move-object/from16 v10, p2

    .line 178
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 179
    const/16 v19, 0x1

    .end local v8    # "ex":F
    .local v19, "i":I
    :goto_0
    const/16 v5, 0xa

    move/from16 v0, v19

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 183
    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    const/high16 v8, 0x40c00000    # 6.0f

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_1

    .line 189
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectLabY:F

    move v7, v0

    .end local v7    # "sy":F
    add-float v21, v5, v7

    .line 190
    .local v21, "ly":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->labelSize:F

    move v5, v0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    const-string v5, "8.8k"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v7, 0x41200000    # 10.0f

    div-float v7, v17, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    const/4 v5, 0x2

    move/from16 v22, v5

    .line 192
    .local v22, "step":I
    :goto_2
    const/16 v19, 0x0

    :goto_3
    const/16 v5, 0xa

    move/from16 v0, v19

    move v1, v5

    if-le v0, v1, :cond_3

    .line 201
    return-void

    .line 180
    .end local v21    # "ly":F
    .end local v22    # "step":I
    .restart local v7    # "sy":F
    :cond_0
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v17

    const/high16 v8, 0x41200000    # 10.0f

    div-float v25, v5, v8

    .line 181
    .local v25, "x":F
    add-float v11, v6, v25

    add-float v13, v6, v25

    add-float v14, v7, v16

    move-object/from16 v10, p1

    move v12, v7

    move-object/from16 v15, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 179
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 184
    .end local v25    # "x":F
    :cond_1
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v16

    const/high16 v8, 0x40c00000    # 6.0f

    div-float v26, v5, v8

    .line 185
    .local v26, "y":F
    add-float v12, v7, v26

    add-float v13, v6, v17

    add-float v14, v7, v26

    move-object/from16 v10, p1

    move v11, v6

    move-object/from16 v15, p2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 191
    .end local v7    # "sy":F
    .end local v26    # "y":F
    .restart local v21    # "ly":F
    :cond_2
    const/4 v5, 0x1

    move/from16 v22, v5

    goto :goto_2

    .line 193
    .restart local v22    # "step":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->nyquistFreq:I

    move v5, v0

    mul-int v5, v5, v19

    div-int/lit8 v18, v5, 0xa

    .line 194
    .local v18, "f":I
    const/16 v5, 0x2710

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "k"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v5

    .line 197
    .local v23, "text":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    .line 198
    .local v24, "tw":F
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v17

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v5, v7

    add-float/2addr v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v24, v7

    sub-float v20, v5, v7

    .line 199
    .local v20, "lx":F
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    add-int v19, v19, v22

    goto/16 :goto_3

    .line 195
    .end local v20    # "lx":F
    .end local v23    # "text":Ljava/lang/String;
    .end local v24    # "tw":F
    :cond_4
    const/16 v5, 0x3e8

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v7, v18, 0x64

    rem-int/lit8 v7, v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "k"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v5

    goto :goto_4

    .line 196
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v5

    goto :goto_4
.end method

.method private linearGraph([FLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "data"    # [F
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 298
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    move-object v2, v0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    move-object v2, v0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 301
    move-object/from16 v0, p1

    array-length v0, v0

    move v11, v0

    .line 302
    .local v11, "len":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphWidth:F

    move v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    int-to-float v3, v11

    div-float v9, v2, v3

    .line 303
    .local v9, "bw":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphHeight:F

    move v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v8, v2, v3

    .line 304
    .local v8, "bh":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphHeight:F

    move v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v6, v2, v3

    .line 307
    .local v6, "be":F
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    if-lt v10, v11, :cond_0

    .line 324
    return-void

    .line 309
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    move-object v2, v0

    const/4 v3, 0x0

    int-to-float v4, v10

    int-to-float v5, v11

    div-float/2addr v4, v5

    const/high16 v5, 0x43960000    # 300.0f

    mul-float/2addr v4, v5

    aput v4, v2, v3

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    move-object v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphX:F

    move v2, v0

    int-to-float v3, v10

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    .line 314
    .local v3, "x":F
    aget v2, p1, v10

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-float v2, v12

    mul-float/2addr v2, v8

    sub-float v4, v6, v2

    .line 315
    .local v4, "y":F
    cmpl-float v2, v4, v6

    if-lez v2, :cond_2

    .line 316
    move v4, v6

    .line 319
    :cond_1
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v9, v2

    if-gtz v2, :cond_3

    move-object/from16 v2, p2

    move v5, v3

    move-object/from16 v7, p3

    .line 320
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 307
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 317
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    move v2, v0

    cmpg-float v2, v4, v2

    if-gez v2, :cond_1

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    move v4, v0

    goto :goto_1

    .line 322
    :cond_3
    add-float v5, v3, v9

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private final log2(D)D
    .locals 4
    .param p1, "x"    # D

    .prologue
    .line 285
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/hermit/android/instruments/SpectrumGauge;->LOG2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private logGraph([FLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 23
    .param p1, "data"    # [F
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 239
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    move-object v3, v0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    move-object v3, v0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 242
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    .line 243
    .local v14, "len":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphWidth:F

    move v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    int-to-float v4, v14

    div-float v11, v3, v4

    .line 244
    .local v11, "bw":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphHeight:F

    move v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    sub-float v10, v3, v4

    .line 245
    .local v10, "bh":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphHeight:F

    move v4, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v7, v3, v4

    .line 248
    .local v7, "be":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->nyquistFreq:I

    move v3, v0

    div-int/2addr v3, v14

    int-to-float v15, v3

    .line 249
    .local v15, "lf":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->nyquistFreq:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v18, v0

    .line 252
    .local v18, "rf":F
    div-float v3, v18, v15

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/instruments/SpectrumGauge;->log2(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move v3, v0

    const/4 v4, 0x2

    sub-int v17, v3, v4

    .line 253
    .local v17, "octaves":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphWidth:F

    move v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move v4, v0

    div-float v16, v3, v4

    .line 256
    .local v16, "octWidth":F
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move v3, v0

    div-float v9, v18, v3

    .line 259
    .local v9, "bf":F
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    if-lt v13, v14, :cond_0

    .line 281
    return-void

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    move-object v3, v0

    const/4 v4, 0x0

    int-to-float v5, v13

    int-to-float v6, v14

    div-float/2addr v5, v6

    const/high16 v6, 0x43960000    # 300.0f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->paintColor:[F

    move-object v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    int-to-float v3, v13

    mul-float v12, v15, v3

    .line 268
    .local v12, "f":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphX:F

    move v3, v0

    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/instruments/SpectrumGauge;->log2(D)D

    move-result-wide v19

    move v0, v9

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/instruments/SpectrumGauge;->log2(D)D

    move-result-wide v21

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move v4, v0

    mul-float v4, v4, v16

    add-float/2addr v4, v3

    .line 271
    .local v4, "x":F
    aget v3, p1, v13

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log10(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4018000000000000L    # 6.0

    div-double v19, v19, v21

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v10

    sub-float v5, v7, v3

    .line 272
    .local v5, "y":F
    cmpl-float v3, v5, v7

    if-lez v3, :cond_2

    .line 273
    move v5, v7

    .line 276
    :cond_1
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v11, v3

    if-gtz v3, :cond_3

    move-object/from16 v3, p2

    move v6, v4

    move-object/from16 v8, p3

    .line 277
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 259
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 274
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    move v3, v0

    cmpg-float v3, v5, v3

    if-gez v3, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    move v5, v0

    goto :goto_1

    .line 279
    :cond_3
    add-float v6, v4, v11

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method


# virtual methods
.method protected final drawBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "now"    # J

    .prologue
    .line 345
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->specBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 345
    monitor-exit p0

    .line 348
    return-void

    .line 345
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
    .line 95
    iget v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->labelSize:F

    return v0
.end method

.method public setGeometry(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-super {p0, p1}, Lorg/hermit/android/instruments/Gauge;->setGeometry(Landroid/graphics/Rect;)V

    .line 115
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispX:I

    .line 116
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispY:I

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispWidth:I

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispHeight:I

    .line 121
    iget v1, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispWidth:I

    .line 122
    .local v1, "mw":I
    iget v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispHeight:I

    .line 123
    .local v0, "mh":I
    iget v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->labelSize:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 124
    int-to-float v2, v1

    const/high16 v3, 0x41c00000    # 24.0f

    div-float/2addr v2, v3

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->labelSize:F

    .line 126
    :cond_0
    const/4 v2, 0x4

    sub-int v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectLabY:F

    .line 127
    iget v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->labelSize:F

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphMargin:F

    .line 128
    iget v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphMargin:F

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphX:F

    .line 129
    iput v4, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphY:F

    .line 130
    int-to-float v2, v1

    iget v3, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphMargin:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphWidth:F

    .line 131
    int-to-float v2, v0

    iget v3, p0, Lorg/hermit/android/instruments/SpectrumGauge;->labelSize:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->spectGraphHeight:F

    .line 135
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SpectrumGauge;->getSurface()Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v2

    iget v3, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispWidth:I

    iget v4, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispHeight:I

    invoke-virtual {v2, v3, v4}, Lorg/hermit/android/core/SurfaceRunner;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->specBitmap:Landroid/graphics/Bitmap;

    .line 136
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/hermit/android/instruments/SpectrumGauge;->specBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->specCanvas:Landroid/graphics/Canvas;

    .line 140
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SpectrumGauge;->getSurface()Lorg/hermit/android/core/SurfaceRunner;

    move-result-object v2

    iget v3, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispWidth:I

    iget v4, p0, Lorg/hermit/android/instruments/SpectrumGauge;->dispHeight:I

    invoke-virtual {v2, v3, v4}, Lorg/hermit/android/core/SurfaceRunner;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->bgBitmap:Landroid/graphics/Bitmap;

    .line 141
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/hermit/android/instruments/SpectrumGauge;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->bgCanvas:Landroid/graphics/Canvas;

    .line 143
    iget-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->bgCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/hermit/android/instruments/SpectrumGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/hermit/android/instruments/SpectrumGauge;->drawBg(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 144
    return-void
.end method

.method public setLabelSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 85
    iput p1, p0, Lorg/hermit/android/instruments/SpectrumGauge;->labelSize:F

    .line 86
    return-void
.end method

.method public setSampleRate(I)V
    .locals 2
    .param p1, "rate"    # I

    .prologue
    .line 70
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->nyquistFreq:I

    .line 74
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SpectrumGauge;->haveBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->bgCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/hermit/android/instruments/SpectrumGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/hermit/android/instruments/SpectrumGauge;->drawBg(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 76
    :cond_0
    return-void
.end method

.method final update([F)V
    .locals 5
    .param p1, "data"    # [F

    .prologue
    .line 216
    iget-object v0, p0, Lorg/hermit/android/instruments/SpectrumGauge;->specCanvas:Landroid/graphics/Canvas;

    .line 217
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lorg/hermit/android/instruments/SpectrumGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 220
    .local v1, "paint":Landroid/graphics/Paint;
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v2, p0, Lorg/hermit/android/instruments/SpectrumGauge;->bgBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    invoke-direct {p0, p1, v0, v1}, Lorg/hermit/android/instruments/SpectrumGauge;->linearGraph([FLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 220
    monitor-exit p0

    .line 227
    return-void

    .line 220
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
