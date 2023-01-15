.class public Lorg/hermit/android/instruments/TextGauge;
.super Lorg/hermit/android/instruments/Gauge;
.source "TextGauge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "instrument"


# instance fields
.field private colsX:[I

.field private fieldBuffers:[[[C

.field private fieldTemplate:[Ljava/lang/String;

.field private marginBottom:I

.field private marginLeft:I

.field private marginRight:I

.field private marginTop:I

.field private numRows:I

.field private rowsY:[I

.field private textHeight:I

.field private textPadBottom:I

.field private textPadLeft:I

.field private textPadRight:I

.field private textPadTop:I

.field private textSize:F

.field private textWidth:I


# direct methods
.method public constructor <init>(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 3
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/Gauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 373
    iput-object v1, p0, Lorg/hermit/android/instruments/TextGauge;->fieldTemplate:[Ljava/lang/String;

    .line 374
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->numRows:I

    .line 382
    iput-object v1, p0, Lorg/hermit/android/instruments/TextGauge;->colsX:[I

    .line 383
    iput-object v1, p0, Lorg/hermit/android/instruments/TextGauge;->rowsY:[I

    .line 387
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textWidth:I

    .line 388
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textHeight:I

    .line 394
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->marginLeft:I

    .line 395
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->marginRight:I

    .line 396
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->marginTop:I

    .line 397
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->marginBottom:I

    .line 400
    iput v2, p0, Lorg/hermit/android/instruments/TextGauge;->textPadLeft:I

    .line 401
    iput v2, p0, Lorg/hermit/android/instruments/TextGauge;->textPadRight:I

    .line 402
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textPadTop:I

    .line 403
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textPadBottom:I

    .line 56
    invoke-static {}, Lorg/hermit/android/instruments/TextGauge;->getBaseTextSize()F

    move-result v0

    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textSize:F

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/hermit/android/core/SurfaceRunner;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;
    .param p2, "template"    # [Ljava/lang/String;
    .param p3, "rows"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Lorg/hermit/android/instruments/Gauge;-><init>(Lorg/hermit/android/core/SurfaceRunner;)V

    .line 373
    iput-object v1, p0, Lorg/hermit/android/instruments/TextGauge;->fieldTemplate:[Ljava/lang/String;

    .line 374
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->numRows:I

    .line 382
    iput-object v1, p0, Lorg/hermit/android/instruments/TextGauge;->colsX:[I

    .line 383
    iput-object v1, p0, Lorg/hermit/android/instruments/TextGauge;->rowsY:[I

    .line 387
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textWidth:I

    .line 388
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textHeight:I

    .line 394
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->marginLeft:I

    .line 395
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->marginRight:I

    .line 396
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->marginTop:I

    .line 397
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->marginBottom:I

    .line 400
    iput v2, p0, Lorg/hermit/android/instruments/TextGauge;->textPadLeft:I

    .line 401
    iput v2, p0, Lorg/hermit/android/instruments/TextGauge;->textPadRight:I

    .line 402
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textPadTop:I

    .line 403
    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textPadBottom:I

    .line 78
    invoke-static {}, Lorg/hermit/android/instruments/TextGauge;->getBaseTextSize()F

    move-result v0

    iput v0, p0, Lorg/hermit/android/instruments/TextGauge;->textSize:F

    .line 81
    invoke-virtual {p0, p2, p3}, Lorg/hermit/android/instruments/TextGauge;->setTextFields([Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method private positionText()V
    .locals 18

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/TextGauge;->fieldTemplate:[Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_0

    .line 274
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/TextGauge;->fieldTemplate:[Ljava/lang/String;

    move-object v15, v0

    array-length v9, v15

    .line 236
    .local v9, "nf":I
    new-array v15, v9, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/hermit/android/instruments/TextGauge;->colsX:[I

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->numRows:I

    move v15, v0

    new-array v15, v15, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/hermit/android/instruments/TextGauge;->rowsY:[I

    .line 239
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/android/instruments/TextGauge;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 240
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/android/instruments/TextGauge;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    .line 241
    .local v10, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->textSize:F

    move v15, v0

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 244
    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 245
    .local v13, "x":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v9, :cond_2

    .line 252
    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v15, v13, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lorg/hermit/android/instruments/TextGauge;->textWidth:I

    .line 256
    const/4 v15, 0x1

    if-le v9, v15, :cond_1

    .line 257
    iget v15, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v13

    const/16 v16, 0x1

    sub-int v16, v9, v16

    div-int v4, v15, v16

    .line 258
    .local v4, "excess":I
    if-lez v4, :cond_1

    .line 259
    const/4 v6, 0x1

    :goto_2
    if-lt v6, v9, :cond_5

    .line 265
    .end local v4    # "excess":I
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 266
    .local v5, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v14, v2, Landroid/graphics/Rect;->top:I

    .line 267
    .local v14, "y":I
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->numRows:I

    move v15, v0

    if-lt v6, v15, :cond_6

    .line 273
    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int v15, v14, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lorg/hermit/android/instruments/TextGauge;->textHeight:I

    goto :goto_0

    .line 246
    .end local v5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v14    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/TextGauge;->fieldTemplate:[Ljava/lang/String;

    move-object v15, v0

    aget-object v15, v15, v6

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v7, v15

    .line 247
    .local v7, "len":I
    if-lez v6, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->textPadLeft:I

    move v15, v0

    move v8, v15

    .line 248
    .local v8, "lp":I
    :goto_4
    const/4 v15, 0x1

    sub-int v15, v9, v15

    if-ge v6, v15, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->textPadRight:I

    move v15, v0

    move v11, v15

    .line 249
    .local v11, "rp":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/TextGauge;->colsX:[I

    move-object v15, v0

    add-int v16, v13, v8

    aput v16, v15, v6

    .line 250
    add-int v15, v7, v8

    add-int/2addr v15, v11

    add-int/2addr v13, v15

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 247
    .end local v8    # "lp":I
    .end local v11    # "rp":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->marginLeft:I

    move v15, v0

    move v8, v15

    goto :goto_4

    .line 248
    .restart local v8    # "lp":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->marginRight:I

    move v15, v0

    move v11, v15

    goto :goto_5

    .line 260
    .end local v7    # "len":I
    .end local v8    # "lp":I
    .restart local v4    # "excess":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/TextGauge;->colsX:[I

    move-object v15, v0

    aget v16, v15, v6

    mul-int v17, v4, v6

    add-int v16, v16, v17

    aput v16, v15, v6

    .line 259
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 268
    .end local v4    # "excess":I
    .restart local v5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v14    # "y":I
    :cond_6
    if-lez v6, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->textPadTop:I

    move v15, v0

    move v12, v15

    .line 269
    .local v12, "tp":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->numRows:I

    move v15, v0

    const/16 v16, 0x1

    sub-int v15, v15, v16

    if-ge v6, v15, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->textPadBottom:I

    move v15, v0

    move v3, v15

    .line 270
    .local v3, "bp":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/instruments/TextGauge;->rowsY:[I

    move-object v15, v0

    add-int v16, v14, v12

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0x2

    sub-int v16, v16, v17

    aput v16, v15, v6

    .line 271
    iget v15, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v15, v15

    const/16 v16, 0x2

    sub-int v15, v15, v16

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v15, v12

    add-int/2addr v15, v3

    add-int/2addr v14, v15

    .line 267
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 268
    .end local v3    # "bp":I
    .end local v12    # "tp":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->marginTop:I

    move v15, v0

    move v12, v15

    goto :goto_6

    .line 269
    .restart local v12    # "tp":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/android/instruments/TextGauge;->marginBottom:I

    move v15, v0

    move v3, v15

    goto :goto_7
.end method


# virtual methods
.method protected drawBody(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "now"    # J

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/hermit/android/instruments/TextGauge;->getPlotColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    iget v0, p0, Lorg/hermit/android/instruments/TextGauge;->textSize:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 342
    iget-object v10, p0, Lorg/hermit/android/instruments/TextGauge;->fieldBuffers:[[[C

    .line 345
    .local v10, "tv":[[[C
    if-eqz v10, :cond_0

    .line 346
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_0
    iget-object v0, p0, Lorg/hermit/android/instruments/TextGauge;->rowsY:[I

    array-length v0, v0

    if-ge v9, v0, :cond_0

    array-length v0, v10

    if-lt v9, v0, :cond_1

    .line 356
    .end local v9    # "row":I
    :cond_0
    return-void

    .line 347
    .restart local v9    # "row":I
    :cond_1
    aget-object v8, v10, v9

    .line 348
    .local v8, "fields":[[C
    iget-object v0, p0, Lorg/hermit/android/instruments/TextGauge;->rowsY:[I

    aget v12, v0, v9

    .line 349
    .local v12, "y":I
    const/4 v7, 0x0

    .local v7, "col":I
    :goto_1
    iget-object v0, p0, Lorg/hermit/android/instruments/TextGauge;->colsX:[I

    array-length v0, v0

    if-ge v7, v0, :cond_2

    array-length v0, v8

    if-lt v7, v0, :cond_3

    .line 346
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 350
    :cond_3
    aget-object v1, v8, v7

    .line 351
    .local v1, "field":[C
    iget-object v0, p0, Lorg/hermit/android/instruments/TextGauge;->colsX:[I

    aget v11, v0, v7

    .line 352
    .local v11, "x":I
    const/4 v2, 0x0

    array-length v3, v1

    int-to-float v4, v11

    int-to-float v5, v12

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 349
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public getBuffer()[[[C
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/hermit/android/instruments/TextGauge;->fieldBuffers:[[[C

    return-object v0
.end method

.method public getPreferredHeight()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/hermit/android/instruments/TextGauge;->textHeight:I

    return v0
.end method

.method public getPreferredWidth()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/hermit/android/instruments/TextGauge;->textWidth:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/hermit/android/instruments/TextGauge;->getPlotColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lorg/hermit/android/instruments/TextGauge;->textSize:F

    return v0
.end method

.method protected initializePaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 94
    invoke-static {}, Lorg/hermit/android/instruments/TextGauge;->getTextScaleX()F

    move-result v0

    .line 95
    .local v0, "scaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 97
    :cond_0
    invoke-static {}, Lorg/hermit/android/instruments/TextGauge;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 98
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    return-void
.end method

.method public setGeometry(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lorg/hermit/android/instruments/Gauge;->setGeometry(Landroid/graphics/Rect;)V

    .line 120
    invoke-direct {p0}, Lorg/hermit/android/instruments/TextGauge;->positionText()V

    .line 121
    return-void
.end method

.method public setMargins(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 134
    iput p1, p0, Lorg/hermit/android/instruments/TextGauge;->marginLeft:I

    .line 135
    iput p2, p0, Lorg/hermit/android/instruments/TextGauge;->marginTop:I

    .line 136
    iput p3, p0, Lorg/hermit/android/instruments/TextGauge;->marginRight:I

    .line 137
    iput p4, p0, Lorg/hermit/android/instruments/TextGauge;->marginBottom:I

    .line 141
    invoke-direct {p0}, Lorg/hermit/android/instruments/TextGauge;->positionText()V

    .line 142
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "col"    # I

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lorg/hermit/android/instruments/TextGauge;->setPlotColor(I)V

    .line 288
    return-void
.end method

.method public setTextFields([Ljava/lang/String;I)V
    .locals 8
    .param p1, "template"    # [Ljava/lang/String;
    .param p2, "rows"    # I

    .prologue
    .line 162
    iput-object p1, p0, Lorg/hermit/android/instruments/TextGauge;->fieldTemplate:[Ljava/lang/String;

    .line 163
    iput p2, p0, Lorg/hermit/android/instruments/TextGauge;->numRows:I

    .line 166
    iget v7, p0, Lorg/hermit/android/instruments/TextGauge;->numRows:I

    new-array v1, v7, [[[C

    .line 167
    .local v1, "buffers":[[[C
    const/4 v6, 0x0

    .local v6, "r":I
    :goto_0
    iget v7, p0, Lorg/hermit/android/instruments/TextGauge;->numRows:I

    if-lt v6, v7, :cond_0

    .line 178
    iput-object v1, p0, Lorg/hermit/android/instruments/TextGauge;->fieldBuffers:[[[C

    .line 184
    invoke-direct {p0}, Lorg/hermit/android/instruments/TextGauge;->positionText()V

    .line 185
    return-void

    .line 168
    :cond_0
    array-length v3, p1

    .line 169
    .local v3, "cols":I
    new-array v7, v3, [[C

    aput-object v7, v1, v6

    .line 170
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 167
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 171
    :cond_1
    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 172
    .local v5, "l":I
    new-array v0, v5, [C

    .line 173
    .local v0, "buf":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v5, :cond_2

    .line 175
    aget-object v7, v1, v6

    aput-object v0, v7, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    :cond_2
    const/16 v7, 0x20

    aput-char v7, v0, v4

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 307
    iput p1, p0, Lorg/hermit/android/instruments/TextGauge;->textSize:F

    .line 311
    invoke-direct {p0}, Lorg/hermit/android/instruments/TextGauge;->positionText()V

    .line 312
    return-void
.end method
