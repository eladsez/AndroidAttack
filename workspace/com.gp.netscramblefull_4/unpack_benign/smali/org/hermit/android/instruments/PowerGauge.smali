.class public Lorg/hermit/android/instruments/PowerGauge;
.super Lorg/hermit/android/instruments/Gauge;
.source "PowerGauge.java"


# static fields
.field private static final METER_AVERAGE_COL:I = -0x5f007000

.field private static final METER_AVERAGE_COUNT:I = 0x20

.field private static final METER_PEAKS:I = 0x4

.field private static final METER_PEAK_COL:I = 0xff0000

.field private static final METER_PEAK_TIME:I = 0xfa0

.field private static final METER_POWER_COL:I = -0xffff01

.field private static final TAG:Ljava/lang/String; = "instrument"


# instance fields
.field private averagePower:F

.field private barWidth:I

.field private currentPower:F

.field private dbBuffer:[C

.field private dispHeight:I

.field private dispWidth:I

.field private dispX:I

.field private dispY:I

.field private historyIndex:I

.field private labelSize:F

.field private meterBarGap:F

.field private meterBarMargin:F

.field private meterBarTop:F

.field private meterLabY:F

.field private meterPeakMax:F

.field private meterPeakTimes:[J

.field private meterPeaks:[F

.field private meterSubTextSize:F

.field private meterSubTextX:F

.field private meterSubTextY:F

.field private meterTextSize:F

.field private meterTextX:F

.field private meterTextY:F

.field private pkBuffer:[C

.field private powerHistory:[F

.field private prevPower:F


# direct methods
.method constructor <init>(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 6
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    const/16 v5, 0x20

    const/high16 v4, -0x3d380000    # -100.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/Gauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 430
    iput v5, p0, Lorg/hermit/android/instruments/PowerGauge;->barWidth:I

    .line 433
    iput v2, p0, Lorg/hermit/android/instruments/PowerGauge;->dispX:I

    .line 434
    iput v2, p0, Lorg/hermit/android/instruments/PowerGauge;->dispY:I

    .line 435
    iput v2, p0, Lorg/hermit/android/instruments/PowerGauge;->dispWidth:I

    .line 436
    iput v2, p0, Lorg/hermit/android/instruments/PowerGauge;->dispHeight:I

    .line 439
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->labelSize:F

    .line 444
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarTop:F

    .line 445
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarGap:F

    .line 446
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterLabY:F

    .line 447
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextX:F

    .line 448
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextY:F

    .line 449
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextSize:F

    .line 450
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextX:F

    .line 451
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextY:F

    .line 452
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextSize:F

    .line 453
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarMargin:F

    .line 456
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->currentPower:F

    .line 457
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->prevPower:F

    .line 461
    iput-object v3, p0, Lorg/hermit/android/instruments/PowerGauge;->powerHistory:[F

    .line 462
    iput v2, p0, Lorg/hermit/android/instruments/PowerGauge;->historyIndex:I

    .line 465
    iput v4, p0, Lorg/hermit/android/instruments/PowerGauge;->averagePower:F

    .line 469
    iput-object v3, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeaks:[F

    .line 470
    iput-object v3, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    .line 471
    iput v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakMax:F

    .line 474
    iput-object v3, p0, Lorg/hermit/android/instruments/PowerGauge;->dbBuffer:[C

    .line 475
    iput-object v3, p0, Lorg/hermit/android/instruments/PowerGauge;->pkBuffer:[C

    .line 55
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeaks:[F

    .line 56
    const/4 v1, 0x4

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    .line 59
    new-array v1, v5, [F

    iput-object v1, p0, Lorg/hermit/android/instruments/PowerGauge;->powerHistory:[F

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 62
    iput v4, p0, Lorg/hermit/android/instruments/PowerGauge;->averagePower:F

    .line 65
    const-string v1, "-100.0dB"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/hermit/android/instruments/PowerGauge;->dbBuffer:[C

    .line 66
    const-string v1, "-100.0dB peak"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/hermit/android/instruments/PowerGauge;->pkBuffer:[C

    .line 67
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lorg/hermit/android/instruments/PowerGauge;->powerHistory:[F

    aput v4, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final calculatePeaks(JFF)V
    .locals 9
    .param p1, "now"    # J
    .param p3, "power"    # F
    .param p4, "prev"    # F

    .prologue
    const/4 v8, 0x4

    const-wide/16 v6, 0x0

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v8, :cond_1

    .line 367
    cmpl-float v2, p3, p4

    if-lez v2, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 372
    .local v0, "done":Z
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v8, :cond_4

    .line 380
    :goto_2
    if-nez v0, :cond_0

    .line 382
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v8, :cond_6

    .line 393
    .end local v0    # "done":Z
    :cond_0
    :goto_4
    const/high16 v2, -0x3d380000    # -100.0f

    iput v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakMax:F

    .line 394
    const/4 v1, 0x0

    :goto_5
    if-lt v1, v8, :cond_8

    .line 397
    return-void

    .line 358
    :cond_1
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 359
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeaks:[F

    aget v2, v2, v1

    cmpg-float v2, v2, p3

    if-ltz v2, :cond_2

    .line 360
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    aget-wide v2, v2, v1

    sub-long v2, p1, v2

    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 361
    :cond_2
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    aput-wide v6, v2, v1

    .line 357
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .restart local v0    # "done":Z
    :cond_4
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeaks:[F

    aget v2, v2, v1

    sub-float/2addr v2, p3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    .line 374
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    aput-wide p1, v2, v1

    .line 375
    const/4 v0, 0x1

    .line 376
    goto :goto_2

    .line 372
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 383
    :cond_6
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 384
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeaks:[F

    aput p3, v2, v1

    .line 385
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    aput-wide p1, v2, v1

    goto :goto_4

    .line 382
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 395
    .end local v0    # "done":Z
    :cond_8
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeaks:[F

    aget v2, v2, v1

    iget v3, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 396
    iget-object v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeaks:[F

    aget v2, v2, v1

    iput v2, p0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakMax:F

    .line 394
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private findTextSize(FFLjava/lang/String;Landroid/graphics/Paint;)F
    .locals 3
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "template"    # Ljava/lang/String;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 177
    move v0, p2

    .line 179
    .local v0, "size":F
    :cond_0
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 181
    .local v1, "sw":I
    int-to-float v2, v1

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_1

    .line 186
    :goto_0
    return v0

    .line 183
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 184
    const/high16 v2, 0x41400000    # 12.0f

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method protected drawBackgroundBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 210
    const/high16 v5, -0x1000000

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 212
    const/16 v5, -0x100

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterBarMargin:F

    move v6, v0

    add-float/2addr v6, v5

    .line 217
    .local v6, "mx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispWidth:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterBarMargin:F

    move v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    sub-float v21, v5, v7

    .line 218
    .local v21, "mw":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispY:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterBarTop:F

    move v7, v0

    add-float/2addr v7, v5

    .line 219
    .local v7, "by":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v15, v21, v5

    .line 220
    .local v15, "bw":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->barWidth:I

    move v5, v0

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v14, v5

    .line 221
    .local v14, "bh":F
    const/high16 v5, 0x41200000    # 10.0f

    div-float v16, v15, v5

    .line 222
    .local v16, "gw":F
    add-float v8, v6, v15

    add-float v9, v7, v14

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 223
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_0
    const/16 v5, 0xa

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispY:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterLabY:F

    move v7, v0

    .end local v7    # "by":F
    add-float v20, v5, v7

    .line 230
    .local v20, "ly":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->labelSize:F

    move/from16 v18, v0

    .line 231
    .local v18, "ls":F
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    const-string v5, "-99"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v7, 0x41200000    # 10.0f

    div-float v7, v15, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    const/4 v5, 0x2

    move/from16 v22, v5

    .line 233
    .local v22, "step":I
    :goto_1
    const/16 v17, 0x0

    :goto_2
    const/16 v5, 0xa

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_2

    .line 239
    return-void

    .line 224
    .end local v18    # "ls":F
    .end local v20    # "ly":F
    .end local v22    # "step":I
    .restart local v7    # "by":F
    :cond_0
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    mul-float/2addr v5, v15

    const/high16 v8, 0x41200000    # 10.0f

    div-float v25, v5, v8

    .line 225
    .local v25, "x":F
    add-float v9, v6, v25

    add-float v11, v6, v25

    add-float v12, v7, v14

    move-object/from16 v8, p1

    move v10, v7

    move-object/from16 v13, p2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 223
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 232
    .end local v7    # "by":F
    .end local v25    # "x":F
    .restart local v18    # "ls":F
    .restart local v20    # "ly":F
    :cond_1
    const/4 v5, 0x1

    move/from16 v22, v5

    goto :goto_1

    .line 234
    .restart local v22    # "step":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v7, v17, 0xa

    const/16 v8, 0x64

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 235
    .local v23, "text":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    .line 236
    .local v24, "tw":F
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v16

    add-float/2addr v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v24, v7

    sub-float v19, v5, v7

    .line 237
    .local v19, "lx":F
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    add-int v17, v17, v22

    goto :goto_2
.end method

.method protected final drawBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "now"    # J

    .prologue
    .line 291
    monitor-enter p0

    .line 293
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->currentPower:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->prevPower:F

    move v6, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/android/instruments/PowerGauge;->calculatePeaks(JFF)V

    .line 295
    const/16 v5, -0x100

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterBarMargin:F

    move v6, v0

    add-float v22, v5, v6

    .line 300
    .local v22, "mx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispWidth:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterBarMargin:F

    move v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float v21, v5, v6

    .line 301
    .local v21, "mw":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispY:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterBarTop:F

    move v6, v0

    add-float v17, v5, v6

    .line 302
    .local v17, "by":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->barWidth:I

    move v5, v0

    int-to-float v15, v5

    .line 303
    .local v15, "bh":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterBarGap:F

    move/from16 v19, v0

    .line 304
    .local v19, "gap":F
    const/high16 v5, 0x40000000    # 2.0f

    sub-float v16, v21, v5

    .line 307
    .local v16, "bw":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->averagePower:F

    move v5, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float v24, v5, v16

    .line 308
    .local v24, "pa":F
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    const v5, -0x5f007000

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    const/high16 v5, 0x3f800000    # 1.0f

    add-float v6, v22, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v7, v17, v5

    add-float v5, v22, v24

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v8, v5

    add-float v5, v17, v15

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v5, v9

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->currentPower:F

    move v5, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float v23, v5, v16

    .line 314
    .local v23, "p":F
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    const v5, -0xffff01

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    const/high16 v5, 0x3f800000    # 1.0f

    add-float v6, v22, v5

    add-float v7, v17, v19

    add-float v5, v22, v23

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v8, v5

    add-float v5, v17, v15

    sub-float v9, v5, v19

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 319
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 320
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    const/4 v5, 0x4

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterTextX:F

    move v6, v0

    add-float v28, v5, v6

    .line 336
    .local v28, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispY:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterTextY:F

    move v6, v0

    add-float v29, v5, v6

    .line 337
    .local v29, "ty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dbBuffer:[C

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->averagePower:F

    move v7, v0

    float-to-double v7, v7

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lorg/hermit/utils/CharFormatter;->formatFloat([CIDII)V

    .line 338
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 339
    const v5, -0xff0001

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterTextSize:F

    move v5, v0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dbBuffer:[C

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dbBuffer:[C

    move-object v5, v0

    array-length v8, v5

    move-object/from16 v5, p1

    move/from16 v9, v28

    move/from16 v10, v29

    move-object/from16 v11, p2

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextX:F

    move v6, v0

    add-float v26, v5, v6

    .line 344
    .local v26, "px":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->dispY:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextY:F

    move v6, v0

    add-float v27, v5, v6

    .line 345
    .local v27, "py":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->pkBuffer:[C

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakMax:F

    move v7, v0

    float-to-double v7, v7

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lorg/hermit/utils/CharFormatter;->formatFloat([CIDII)V

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextSize:F

    move v5, v0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->pkBuffer:[C

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->pkBuffer:[C

    move-object v5, v0

    array-length v8, v5

    move-object/from16 v5, p1

    move/from16 v9, v26

    move/from16 v10, v27

    move-object/from16 v11, p2

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 291
    monitor-exit p0

    .line 349
    return-void

    .line 321
    .end local v26    # "px":F
    .end local v27    # "py":F
    .end local v28    # "tx":F
    .end local v29    # "ty":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    move-object v5, v0

    aget-wide v5, v5, v20

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterPeakTimes:[J

    move-object v5, v0

    aget-wide v5, v5, v20

    sub-long v12, p3, v5

    .line 324
    .local v12, "age":J
    const/high16 v5, 0x3f800000    # 1.0f

    long-to-float v6, v12

    const/high16 v7, 0x457a0000    # 4000.0f

    div-float/2addr v6, v7

    sub-float v18, v5, v6

    .line 325
    .local v18, "fac":F
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, v18

    float-to-int v14, v5

    .line 326
    .local v14, "alpha":I
    const/high16 v5, 0xff0000

    shl-int/lit8 v6, v14, 0x18

    or-int/2addr v5, v6

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/PowerGauge;->meterPeaks:[F

    move-object v5, v0

    aget v5, v5, v20

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float v25, v5, v16

    .line 329
    .local v25, "pp":F
    add-float v5, v22, v25

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v5, v6

    add-float v7, v17, v19

    .line 330
    add-float v5, v22, v25

    const/high16 v8, 0x40400000    # 3.0f

    add-float/2addr v8, v5

    add-float v5, v17, v15

    sub-float v9, v5, v19

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    .line 329
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 320
    .end local v12    # "age":J
    .end local v14    # "alpha":I
    .end local v18    # "fac":F
    .end local v25    # "pp":F
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 291
    .end local v15    # "bh":F
    .end local v16    # "bw":F
    .end local v17    # "by":F
    .end local v19    # "gap":F
    .end local v20    # "i":I
    .end local v21    # "mw":F
    .end local v22    # "mx":F
    .end local v23    # "p":F
    .end local v24    # "pa":F
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getLabelSize()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/hermit/android/instruments/PowerGauge;->labelSize:F

    return v0
.end method

.method public setBarWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 80
    iput p1, p0, Lorg/hermit/android/instruments/PowerGauge;->barWidth:I

    .line 81
    return-void
.end method

.method public setGeometry(Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lorg/hermit/android/instruments/Gauge;->setGeometry(Landroid/graphics/Rect;)V

    .line 120
    invoke-virtual {p0}, Lorg/hermit/android/instruments/PowerGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 122
    .local v2, "paint":Landroid/graphics/Paint;
    iget v8, p1, Landroid/graphics/Rect;->left:I

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->dispX:I

    .line 123
    iget v8, p1, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->dispY:I

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->dispWidth:I

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->dispHeight:I

    .line 128
    iget v1, p0, Lorg/hermit/android/instruments/PowerGauge;->dispWidth:I

    .line 129
    .local v1, "mw":I
    iget v0, p0, Lorg/hermit/android/instruments/PowerGauge;->dispHeight:I

    .line 130
    .local v0, "mh":I
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->labelSize:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 131
    int-to-float v8, v1

    const/high16 v9, 0x41c00000    # 24.0f

    div-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->labelSize:F

    .line 134
    :cond_0
    const/4 v8, 0x0

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarTop:F

    .line 135
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->barWidth:I

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarGap:F

    .line 136
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarTop:F

    iget v9, p0, Lorg/hermit/android/instruments/PowerGauge;->barWidth:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lorg/hermit/android/instruments/PowerGauge;->labelSize:F

    add-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterLabY:F

    .line 139
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->labelSize:F

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarMargin:F

    .line 142
    int-to-float v8, v0

    iget v9, p0, Lorg/hermit/android/instruments/PowerGauge;->meterLabY:F

    sub-float v6, v8, v9

    .line 143
    .local v6, "th":F
    int-to-float v8, v1

    iget v9, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarMargin:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v5, v8, v9

    .line 145
    .local v5, "subWidth":F
    const-string v8, "-100.0dB"

    invoke-direct {p0, v5, v6, v8, v2}, Lorg/hermit/android/instruments/PowerGauge;->findTextSize(FFLjava/lang/String;Landroid/graphics/Paint;)F

    move-result v8

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextSize:F

    .line 146
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextSize:F

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterBarMargin:F

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextX:F

    .line 148
    int-to-float v8, v0

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextY:F

    .line 150
    const-string v8, "-100.0dB peak"

    invoke-direct {p0, v5, v6, v8, v2}, Lorg/hermit/android/instruments/PowerGauge;->findTextSize(FFLjava/lang/String;Landroid/graphics/Paint;)F

    move-result v8

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextSize:F

    .line 151
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextSize:F

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 152
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextX:F

    add-float/2addr v8, v5

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextX:F

    .line 153
    int-to-float v8, v0

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextY:F

    .line 156
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextSize:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 157
    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v8, v6

    const/high16 v9, 0x40400000    # 3.0f

    div-float v4, v8, v9

    .line 158
    .local v4, "split":F
    sub-float v8, v6, v4

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextSize:F

    .line 159
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextSize:F

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    const-string v8, "-100.0dB"

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 161
    .local v7, "tw":F
    int-to-float v8, v1

    sub-float/2addr v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextX:F

    .line 162
    int-to-float v8, v0

    sub-float/2addr v8, v4

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextY:F

    .line 164
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterTextSize:F

    sub-float v8, v6, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextSize:F

    .line 165
    iget v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextSize:F

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    const-string v8, "-100.0dB peak"

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 167
    .local v3, "pw":F
    int-to-float v8, v1

    sub-float/2addr v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextX:F

    .line 168
    int-to-float v8, v0

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/hermit/android/instruments/PowerGauge;->meterSubTextY:F

    .line 172
    .end local v3    # "pw":F
    .end local v4    # "split":F
    .end local v7    # "tw":F
    :cond_1
    invoke-virtual {p0}, Lorg/hermit/android/instruments/PowerGauge;->cacheBackground()V

    .line 173
    return-void
.end method

.method public setLabelSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 90
    iput p1, p0, Lorg/hermit/android/instruments/PowerGauge;->labelSize:F

    .line 91
    return-void
.end method

.method final update(D)V
    .locals 4
    .param p1, "power"    # D

    .prologue
    const/high16 v3, 0x42000000    # 32.0f

    .line 255
    monitor-enter p0

    .line 257
    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 258
    const-wide/high16 p1, -0x3fa7000000000000L    # -100.0

    .line 261
    :cond_0
    :goto_0
    double-to-float v0, p1

    :try_start_0
    iput v0, p0, Lorg/hermit/android/instruments/PowerGauge;->currentPower:F

    .line 265
    iget v0, p0, Lorg/hermit/android/instruments/PowerGauge;->historyIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/hermit/android/instruments/PowerGauge;->historyIndex:I

    iget-object v1, p0, Lorg/hermit/android/instruments/PowerGauge;->powerHistory:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lorg/hermit/android/instruments/PowerGauge;->historyIndex:I

    .line 267
    :cond_1
    iget-object v0, p0, Lorg/hermit/android/instruments/PowerGauge;->powerHistory:[F

    iget v1, p0, Lorg/hermit/android/instruments/PowerGauge;->historyIndex:I

    aget v0, v0, v1

    iput v0, p0, Lorg/hermit/android/instruments/PowerGauge;->prevPower:F

    .line 268
    iget-object v0, p0, Lorg/hermit/android/instruments/PowerGauge;->powerHistory:[F

    iget v1, p0, Lorg/hermit/android/instruments/PowerGauge;->historyIndex:I

    double-to-float v2, p1

    aput v2, v0, v1

    .line 269
    iget v0, p0, Lorg/hermit/android/instruments/PowerGauge;->averagePower:F

    iget v1, p0, Lorg/hermit/android/instruments/PowerGauge;->prevPower:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/hermit/android/instruments/PowerGauge;->averagePower:F

    .line 270
    iget v0, p0, Lorg/hermit/android/instruments/PowerGauge;->averagePower:F

    double-to-float v1, p1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lorg/hermit/android/instruments/PowerGauge;->averagePower:F

    .line 255
    monitor-exit p0

    .line 272
    return-void

    .line 259
    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 260
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
