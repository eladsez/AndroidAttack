.class public Lorg/hermit/utils/CharFormatter;
.super Ljava/lang/Object;
.source "CharFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/utils/CharFormatter$OverflowException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static final blank([CII)V
    .locals 4
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "field"    # I

    .prologue
    .line 60
    if-gez p2, :cond_0

    .line 61
    array-length v1, p0

    sub-int p2, v1, p1

    .line 62
    :cond_0
    if-gez p2, :cond_1

    .line 63
    const/4 p2, 0x0

    .line 64
    :cond_1
    add-int v1, p1, p2

    array-length v2, p0

    if-le v1, v2, :cond_2

    .line 65
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffer ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    const-string v3, "] too small for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_3

    .line 71
    return-void

    .line 70
    :cond_3
    add-int v1, p1, v0

    const/16 v2, 0x20

    aput-char v2, p0, v1

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final formatChar([CICIZ)V
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # C
    .param p3, "field"    # I
    .param p4, "right"    # Z

    .prologue
    const/4 v5, 0x1

    .line 151
    if-gez p3, :cond_0

    .line 152
    array-length v3, p0

    sub-int p3, v3, p1

    .line 153
    :cond_0
    if-gez p3, :cond_1

    .line 154
    const/4 p3, 0x0

    .line 155
    :cond_1
    add-int v3, p1, p3

    array-length v4, p0

    if-le v3, v4, :cond_2

    .line 156
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Buffer ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    const-string v5, "] too small for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :cond_2
    if-eqz p2, :cond_3

    if-ge p3, v5, :cond_5

    .line 160
    :cond_3
    invoke-static {p0, p1, p3}, Lorg/hermit/utils/CharFormatter;->blank([CII)V

    .line 173
    :cond_4
    return-void

    .line 164
    :cond_5
    sub-int v1, p3, v5

    .line 165
    .local v1, "pad":I
    if-nez p4, :cond_6

    .line 166
    aput-char p2, p0, p1

    .line 170
    :goto_0
    if-nez p4, :cond_7

    add-int/lit8 v3, p1, 0x1

    move v2, v3

    .line 171
    .local v2, "pads":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 172
    add-int v3, v2, v0

    const/16 v4, 0x20

    aput-char v4, p0, v3

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 168
    .end local v0    # "i":I
    .end local v2    # "pads":I
    :cond_6
    add-int v3, p1, v1

    aput-char p2, p0, v3

    goto :goto_0

    :cond_7
    move v2, p1

    .line 170
    goto :goto_1
.end method

.method public static formatDegMin([CID)I
    .locals 7
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "angle"    # D

    .prologue
    .line 529
    const/16 v4, 0x20

    const/16 v5, 0x2d

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/hermit/utils/CharFormatter;->formatDegMin([CIDCCZ)I

    move-result v0

    return v0
.end method

.method public static formatDegMin([CIDCCZ)I
    .locals 9
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "angle"    # D
    .param p4, "pos"    # C
    .param p5, "neg"    # C
    .param p6, "space"    # Z

    .prologue
    .line 550
    if-eqz p6, :cond_0

    const/16 v0, 0xe

    :goto_0
    add-int/2addr v0, p1

    array-length v1, p0

    if-le v0, v1, :cond_2

    .line 551
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .end local p2    # "angle":D
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Buffer ["

    .end local p4    # "pos":C
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    .end local p0    # "buf":[C
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 552
    const-string p3, "] too small for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 553
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "+"

    .end local p1    # "off":I
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p6, :cond_1

    const/16 p1, 0xe

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 551
    invoke-direct {p2, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 550
    .restart local p0    # "buf":[C
    .restart local p1    # "off":I
    .restart local p2    # "angle":D
    .restart local p4    # "pos":C
    :cond_0
    const/16 v0, 0xc

    goto :goto_0

    .line 553
    .end local p0    # "buf":[C
    .end local p1    # "off":I
    .end local p2    # "angle":D
    .end local p4    # "pos":C
    :cond_1
    const/16 p1, 0xc

    goto :goto_1

    .line 555
    .restart local p0    # "buf":[C
    .restart local p1    # "off":I
    .restart local p2    # "angle":D
    .restart local p4    # "pos":C
    :cond_2
    move v1, p1

    .line 557
    .local v1, "p":I
    const-wide/16 v2, 0x0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_3

    .line 558
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aput-char p5, p0, v1

    .line 559
    neg-double p2, p2

    .line 562
    :goto_2
    if-eqz p6, :cond_5

    .line 563
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "p":I
    .restart local v1    # "p":I
    const/16 p4, 0x20

    aput-char p4, p0, v4

    .line 565
    .end local p4    # "pos":C
    :goto_3
    double-to-int v2, p2

    .line 566
    .local v2, "deg":I
    const-wide/high16 p4, 0x404e000000000000L    # 60.0

    mul-double/2addr p4, p2

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    rem-double/2addr p4, v3

    double-to-int p4, p4

    .line 567
    .local p4, "min":I
    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr p2, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    rem-double/2addr p2, v3

    double-to-int p2, p2

    .line 570
    .local p2, "frac":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/hermit/utils/CharFormatter;->formatInt([CIIICZ)V
    :try_end_0
    .catch Lorg/hermit/utils/CharFormatter$OverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    add-int/lit8 v1, v1, 0x3

    .line 572
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .restart local v4    # "p":I
    const/16 p3, 0xb0

    :try_start_1
    aput-char p3, p0, v1
    :try_end_1
    .catch Lorg/hermit/utils/CharFormatter$OverflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    if-eqz p6, :cond_4

    .line 574
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "p":I
    .restart local v1    # "p":I
    const/16 p3, 0x20

    :try_start_2
    aput-char p3, p0, v4

    .line 576
    :goto_4
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move v4, v1

    move v5, p4

    invoke-static/range {v3 .. v8}, Lorg/hermit/utils/CharFormatter;->formatInt([CIIICZ)V
    :try_end_2
    .catch Lorg/hermit/utils/CharFormatter$OverflowException; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    add-int/lit8 v1, v1, 0x2

    .line 578
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .restart local v4    # "p":I
    const/16 p3, 0x2e

    :try_start_3
    aput-char p3, p0, v1

    .line 580
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move v5, p2

    invoke-static/range {v3 .. v8}, Lorg/hermit/utils/CharFormatter;->formatInt([CIIICZ)V

    .line 581
    add-int/lit8 v1, v4, 0x3

    .line 582
    .end local v4    # "p":I
    .restart local v1    # "p":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .restart local v4    # "p":I
    const/16 p2, 0x27

    aput-char p2, p0, v1
    :try_end_3
    .catch Lorg/hermit/utils/CharFormatter$OverflowException; {:try_start_3 .. :try_end_3} :catch_1

    .end local p2    # "frac":I
    move v1, v4

    .line 587
    .end local v4    # "p":I
    .end local p4    # "min":I
    .restart local v1    # "p":I
    :goto_5
    sub-int p0, v1, p1

    .end local p0    # "buf":[C
    return p0

    .line 561
    .end local v2    # "deg":I
    .restart local p0    # "buf":[C
    .local p2, "angle":D
    .local p4, "pos":C
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .restart local v4    # "p":I
    aput-char p4, p0, v1

    goto :goto_2

    .line 583
    .end local v4    # "p":I
    .restart local v1    # "p":I
    .restart local v2    # "deg":I
    .local p2, "frac":I
    .local p4, "min":I
    :catch_0
    move-exception p2

    .line 584
    .local p2, "e":Lorg/hermit/utils/CharFormatter$OverflowException;
    :goto_6
    const/16 p2, 0x2b

    const/4 p3, 0x1

    const/4 p4, 0x1

    invoke-static {p0, v1, p2, p3, p4}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    goto :goto_5

    .line 583
    .end local v1    # "p":I
    .end local p2    # "e":Lorg/hermit/utils/CharFormatter$OverflowException;
    .restart local v4    # "p":I
    :catch_1
    move-exception p2

    move v1, v4

    .end local v4    # "p":I
    .restart local v1    # "p":I
    goto :goto_6

    .end local v1    # "p":I
    .restart local v4    # "p":I
    .local p2, "frac":I
    :cond_4
    move v1, v4

    .end local v4    # "p":I
    .restart local v1    # "p":I
    goto :goto_4

    .end local v1    # "p":I
    .end local v2    # "deg":I
    .restart local v4    # "p":I
    .local p2, "angle":D
    .local p4, "pos":C
    :cond_5
    move v1, v4

    .end local v4    # "p":I
    .restart local v1    # "p":I
    goto :goto_3
.end method

.method public static final formatFloat([CIDII)V
    .locals 7
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # D
    .param p4, "field"    # I
    .param p5, "frac"    # I

    .prologue
    .line 352
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/hermit/utils/CharFormatter;->formatFloat([CIDIIZ)V

    .line 353
    return-void
.end method

.method public static final formatFloat([CIDIIZ)V
    .locals 16
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # D
    .param p4, "field"    # I
    .param p5, "frac"    # I
    .param p6, "signed"    # Z

    .prologue
    .line 376
    if-gez p4, :cond_0

    .line 377
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p4, v0

    .end local p4    # "field":I
    sub-int p4, p4, p1

    .line 378
    .restart local p4    # "field":I
    :cond_0
    if-gez p4, :cond_1

    .line 379
    const/16 p4, 0x0

    .line 380
    :cond_1
    add-int v5, p1, p4

    move-object/from16 v0, p0

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_2

    .line 381
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .end local p2    # "val":D
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Buffer ["

    .end local p5    # "frac":I
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p0, v0

    .end local p0    # "buf":[C
    move-object/from16 v0, p3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 382
    const-string p3, "] too small for "

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 383
    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "+"

    .end local p1    # "off":I
    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 381
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 387
    .restart local p0    # "buf":[C
    .restart local p1    # "off":I
    .restart local p2    # "val":D
    .restart local p5    # "frac":I
    :cond_2
    if-nez p6, :cond_3

    const-wide/16 v5, 0x0

    cmpg-double v5, p2, v5

    if-gez v5, :cond_3

    .line 388
    const/16 p5, 0x2d

    const/16 p6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    .line 408
    .end local p5    # "frac":I
    .end local p6    # "signed":Z
    :goto_0
    return-void

    .line 392
    .restart local p5    # "frac":I
    .restart local p6    # "signed":Z
    :cond_3
    sub-int v5, p4, p5

    const/4 v6, 0x1

    sub-int v8, v5, v6

    .line 393
    .local v8, "intDigits":I
    const-wide/16 v5, 0x0

    cmpl-double v5, p2, v5

    if-ltz v5, :cond_4

    const/4 v5, 0x1

    .line 394
    .local v5, "sign":I
    :goto_1
    int-to-double v6, v5

    mul-double p2, p2, v6

    .line 395
    if-eqz p6, :cond_6

    if-gez v5, :cond_5

    const/16 p6, 0x2d

    move/from16 v9, p6

    .line 396
    .end local p6    # "signed":Z
    .local v9, "schar":C
    :goto_2
    move-wide/from16 v0, p2

    double-to-int v0, v0

    move v7, v0

    .line 397
    .local v7, "intPart":I
    int-to-double v5, v7

    sub-double v5, p2, v5

    .line 398
    .local v5, "fracPart":D
    const/16 p6, 0x0

    .local p6, "i":I
    move-wide v12, v5

    .end local v5    # "fracPart":D
    .local v12, "fracPart":D
    :goto_3
    move/from16 v0, p6

    move/from16 v1, p5

    if-lt v0, v1, :cond_7

    .line 402
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    :try_start_0
    invoke-static/range {v5 .. v10}, Lorg/hermit/utils/CharFormatter;->formatInt([CIIICZ)V

    .line 403
    add-int p6, p1, v8

    const/16 v5, 0x2e

    aput-char v5, p0, p6

    .line 404
    .end local p6    # "i":I
    add-int p6, p1, v8

    add-int/lit8 v11, p6, 0x1

    double-to-int v12, v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move/from16 v13, p5

    invoke-static/range {v10 .. v15}, Lorg/hermit/utils/CharFormatter;->formatInt([CIIICZ)V
    :try_end_0
    .catch Lorg/hermit/utils/CharFormatter$OverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    .end local v12    # "fracPart":D
    :catch_0
    move-exception p5

    .line 406
    .local p5, "e":Lorg/hermit/utils/CharFormatter$OverflowException;
    const/16 p5, 0x2b

    const/16 p6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    goto :goto_0

    .line 393
    .end local v7    # "intPart":I
    .end local v9    # "schar":C
    .local p5, "frac":I
    .local p6, "signed":Z
    :cond_4
    const/4 v5, -0x1

    goto :goto_1

    .line 395
    .local v5, "sign":I
    :cond_5
    const/16 p6, 0x20

    move/from16 v9, p6

    goto :goto_2

    :cond_6
    const/16 p6, 0x0

    move/from16 v9, p6

    goto :goto_2

    .line 399
    .end local v5    # "sign":I
    .restart local v7    # "intPart":I
    .restart local v9    # "schar":C
    .restart local v12    # "fracPart":D
    .local p6, "i":I
    :cond_7
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v12

    .line 398
    .end local v12    # "fracPart":D
    .local v5, "fracPart":D
    add-int/lit8 p6, p6, 0x1

    move-wide v12, v5

    .end local v5    # "fracPart":D
    .restart local v12    # "fracPart":D
    goto :goto_3
.end method

.method public static final formatHex([CIII)V
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # I
    .param p3, "field"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 311
    if-gez p3, :cond_0

    .line 312
    array-length v2, p0

    sub-int p3, v2, p1

    .line 313
    :cond_0
    if-gez p3, :cond_1

    .line 314
    const/4 p3, 0x0

    .line 315
    :cond_1
    add-int v2, p1, p3

    array-length v3, p0

    if-le v2, v3, :cond_2

    .line 316
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Buffer ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 317
    const-string v4, "] too small for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 318
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_2
    if-ge p3, v4, :cond_3

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> too small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_3
    add-int v2, p1, p3

    sub-int v1, v2, v4

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_5

    .line 330
    if-eqz p2, :cond_4

    .line 331
    const/16 v2, 0x2b

    invoke-static {p0, p1, v2, p3, v4}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    .line 332
    :cond_4
    return-void

    .line 323
    :cond_5
    rem-int/lit8 v0, p2, 0x10

    .line 324
    .local v0, "d":I
    if-ge v0, v5, :cond_6

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    :goto_1
    aput-char v2, p0, v1

    .line 325
    div-int/lit8 p2, p2, 0x10

    .line 322
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 324
    :cond_6
    add-int/lit8 v2, v0, 0x61

    sub-int/2addr v2, v5

    int-to-char v2, v2

    goto :goto_1
.end method

.method private static final formatInt([CIIICZ)V
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # I
    .param p3, "field"    # I
    .param p4, "schar"    # C
    .param p5, "leadZero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/hermit/utils/CharFormatter$OverflowException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x1

    .line 431
    if-eqz p4, :cond_0

    move v3, v4

    :goto_0
    sub-int v1, p3, v3

    .line 432
    .local v1, "intDigits":I
    if-ge v1, v4, :cond_1

    .line 433
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Field <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> too small"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 431
    .end local v1    # "intDigits":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 435
    .restart local v1    # "intDigits":I
    :cond_1
    const/4 v2, 0x0

    .line 436
    .local v2, "last":I
    add-int v3, p1, p3

    sub-int v0, v3, v4

    .local v0, "i":I
    :goto_1
    add-int v3, p1, p3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_2

    .line 448
    if-eqz p2, :cond_5

    .line 449
    const/16 v3, 0x2b

    invoke-static {p0, p1, v3, p3, v4}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    .line 450
    new-instance v3, Lorg/hermit/utils/CharFormatter$OverflowException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/hermit/utils/CharFormatter$OverflowException;-><init>(Lorg/hermit/utils/CharFormatter$OverflowException;)V

    throw v3

    .line 437
    :cond_2
    if-nez p2, :cond_3

    if-nez p5, :cond_3

    add-int v3, p1, p3

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_3

    .line 438
    aput-char v5, p0, v0

    .line 436
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 440
    :cond_3
    if-nez p2, :cond_4

    const/16 v3, 0x30

    :goto_3
    aput-char v3, p0, v0

    .line 441
    div-int/lit8 p2, p2, 0xa

    .line 442
    move v2, v0

    goto :goto_2

    .line 440
    :cond_4
    rem-int/lit8 v3, p2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    goto :goto_3

    .line 453
    :cond_5
    if-eqz p4, :cond_6

    .line 454
    aput-char v5, p0, p1

    .line 455
    sub-int v3, v2, v4

    aput-char p4, p0, v3

    .line 457
    :cond_6
    return-void
.end method

.method public static final formatInt([CIIIZ)V
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # I
    .param p3, "field"    # I
    .param p4, "signed"    # Z

    .prologue
    .line 196
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/hermit/utils/CharFormatter;->formatInt([CIIIZZ)V

    .line 197
    return-void
.end method

.method public static final formatInt([CIIIZZ)V
    .locals 9
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # I
    .param p3, "field"    # I
    .param p4, "signed"    # Z
    .param p5, "lz"    # Z

    .prologue
    const/16 v2, 0x2d

    const/4 v8, 0x1

    .line 221
    if-gez p3, :cond_0

    .line 222
    array-length v0, p0

    sub-int p3, v0, p1

    .line 223
    :cond_0
    if-gez p3, :cond_1

    .line 224
    const/4 p3, 0x0

    .line 225
    :cond_1
    add-int v0, p1, p3

    array-length v1, p0

    if-le v0, v1, :cond_2

    .line 226
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    const-string v2, "] too small for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_2
    if-nez p4, :cond_3

    if-gez p2, :cond_3

    .line 233
    invoke-static {p0, p1, v2, p3, v8}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    .line 245
    :goto_0
    return-void

    .line 237
    :cond_3
    if-ltz p2, :cond_4

    move v7, v8

    .line 238
    .local v7, "sign":I
    :goto_1
    mul-int/2addr p2, v7

    .line 239
    if-eqz p4, :cond_6

    if-gez v7, :cond_5

    move v4, v2

    .local v4, "schar":C
    :goto_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .line 241
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/hermit/utils/CharFormatter;->formatInt([CIIICZ)V
    :try_end_0
    .catch Lorg/hermit/utils/CharFormatter$OverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v6

    .line 243
    .local v6, "e":Lorg/hermit/utils/CharFormatter$OverflowException;
    const/16 v0, 0x2b

    invoke-static {p0, p1, v0, p3, v8}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    goto :goto_0

    .line 237
    .end local v4    # "schar":C
    .end local v6    # "e":Lorg/hermit/utils/CharFormatter$OverflowException;
    .end local v7    # "sign":I
    :cond_4
    const/4 v0, -0x1

    move v7, v0

    goto :goto_1

    .line 239
    .restart local v7    # "sign":I
    :cond_5
    const/16 v0, 0x20

    move v4, v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    move v4, v0

    goto :goto_2
.end method

.method private static final formatIntLeft([CIIIC)V
    .locals 9
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # I
    .param p3, "field"    # I
    .param p4, "schar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/hermit/utils/CharFormatter$OverflowException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 480
    if-eqz p4, :cond_0

    move v6, v7

    :goto_0
    sub-int v3, p3, v6

    .line 481
    .local v3, "intDigits":I
    if-ge v3, v7, :cond_1

    .line 482
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Field <"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> too small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v3    # "intDigits":I
    :cond_0
    move v6, v8

    .line 480
    goto :goto_0

    .line 485
    .restart local v3    # "intDigits":I
    :cond_1
    const/4 v5, 0x1

    .line 486
    .local v5, "valDigits":I
    div-int/lit8 v4, p2, 0xa

    .line 487
    .local v4, "v":I
    :goto_1
    if-gtz v4, :cond_2

    .line 493
    if-ge v3, v5, :cond_3

    .line 494
    const/16 v6, 0x2b

    invoke-static {p0, p1, v6, p3, v8}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    .line 495
    new-instance v6, Lorg/hermit/utils/CharFormatter$OverflowException;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/hermit/utils/CharFormatter$OverflowException;-><init>(Lorg/hermit/utils/CharFormatter$OverflowException;)V

    throw v6

    .line 488
    :cond_2
    div-int/lit8 v4, v4, 0xa

    .line 489
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 499
    :cond_3
    move v1, p1

    .line 500
    .local v1, "index":I
    if-eqz p4, :cond_4

    .line 501
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput-char p4, p0, v1

    move v1, v2

    .line 504
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_4
    add-int v6, v1, v5

    sub-int v0, v6, v7

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 508
    add-int/2addr v1, v5

    move v2, v1

    .line 511
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :goto_3
    add-int v6, p1, p3

    if-lt v2, v6, :cond_7

    .line 513
    return-void

    .line 505
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_5
    if-nez p2, :cond_6

    const/16 v6, 0x30

    :goto_4
    aput-char v6, p0, v0

    .line 506
    div-int/lit8 p2, p2, 0xa

    .line 504
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 505
    :cond_6
    rem-int/lit8 v6, p2, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    goto :goto_4

    .line 512
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    const/16 v6, 0x20

    aput-char v6, p0, v2

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_3
.end method

.method public static final formatIntLeft([CIIIZ)V
    .locals 7
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # I
    .param p3, "field"    # I
    .param p4, "signed"    # Z

    .prologue
    const/16 v6, 0x2d

    const/4 v5, 0x0

    .line 271
    if-gez p3, :cond_0

    .line 272
    array-length v3, p0

    sub-int p3, v3, p1

    .line 273
    :cond_0
    if-gez p3, :cond_1

    .line 274
    const/4 p3, 0x0

    .line 275
    :cond_1
    add-int v3, p1, p3

    array-length v4, p0

    if-le v3, v4, :cond_2

    .line 276
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Buffer ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    const-string v5, "] too small for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    :cond_2
    if-nez p4, :cond_3

    if-gez p2, :cond_3

    .line 283
    invoke-static {p0, p1, v6, p3, v5}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    .line 295
    :goto_0
    return-void

    .line 287
    :cond_3
    if-ltz p2, :cond_4

    const/4 v3, 0x1

    move v2, v3

    .line 288
    .local v2, "sign":I
    :goto_1
    mul-int/2addr p2, v2

    .line 289
    if-eqz p4, :cond_6

    if-gez v2, :cond_5

    move v1, v6

    .line 291
    .local v1, "schar":C
    :goto_2
    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lorg/hermit/utils/CharFormatter;->formatIntLeft([CIIIC)V
    :try_end_0
    .catch Lorg/hermit/utils/CharFormatter$OverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lorg/hermit/utils/CharFormatter$OverflowException;
    const/16 v3, 0x2b

    invoke-static {p0, p1, v3, p3, v5}, Lorg/hermit/utils/CharFormatter;->formatChar([CICIZ)V

    goto :goto_0

    .line 287
    .end local v0    # "e":Lorg/hermit/utils/CharFormatter$OverflowException;
    .end local v1    # "schar":C
    .end local v2    # "sign":I
    :cond_4
    const/4 v3, -0x1

    move v2, v3

    goto :goto_1

    .line 289
    .restart local v2    # "sign":I
    :cond_5
    const/16 v3, 0x20

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_2
.end method

.method public static formatLatLon([CIDDZ)I
    .locals 9
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "lat"    # D
    .param p4, "lon"    # D
    .param p6, "space"    # Z

    .prologue
    const/16 v4, 0x1d

    const/16 v3, 0x19

    .line 607
    if-eqz p6, :cond_0

    move v0, v4

    :goto_0
    add-int/2addr v0, p1

    array-length v1, p0

    if-le v0, v1, :cond_2

    .line 608
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 609
    const-string v2, "] too small for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 610
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p6, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v3

    .line 607
    goto :goto_0

    :cond_1
    move v2, v3

    .line 610
    goto :goto_1

    .line 612
    :cond_2
    move v7, p1

    .line 614
    .local v7, "p":I
    const/16 v4, 0x4e

    const/16 v5, 0x53

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/hermit/utils/CharFormatter;->formatDegMin([CIDCCZ)I

    move-result v0

    add-int/2addr v7, v0

    .line 615
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "p":I
    .local v8, "p":I
    const/16 v0, 0x20

    aput-char v0, p0, v7

    .line 616
    const/16 v4, 0x45

    const/16 v5, 0x57

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/hermit/utils/CharFormatter;->formatDegMin([CIDCCZ)I

    move-result v0

    add-int v7, v8, v0

    .line 618
    .end local v8    # "p":I
    .restart local v7    # "p":I
    sub-int v0, v7, p1

    return v0
.end method

.method public static final formatString([CILjava/lang/String;I)V
    .locals 1
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "field"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/hermit/utils/CharFormatter;->formatString([CILjava/lang/String;IZ)V

    .line 89
    return-void
.end method

.method public static final formatString([CILjava/lang/String;IZ)V
    .locals 8
    .param p0, "buf"    # [C
    .param p1, "off"    # I
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "field"    # I
    .param p4, "right"    # Z

    .prologue
    .line 108
    if-gez p3, :cond_0

    .line 109
    array-length v5, p0

    sub-int p3, v5, p1

    .line 110
    :cond_0
    if-gez p3, :cond_1

    .line 111
    const/4 p3, 0x0

    .line 112
    :cond_1
    add-int v5, p1, p3

    array-length v6, p0

    if-le v5, v6, :cond_2

    .line 113
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Buffer ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 114
    const-string v7, "] too small for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 117
    :cond_3
    invoke-static {p0, p1, p3}, Lorg/hermit/utils/CharFormatter;->blank([CII)V

    .line 132
    :cond_4
    return-void

    .line 121
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 122
    .local v4, "strlen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, p3, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move v1, v5

    .line 123
    .local v1, "len":I
    :goto_0
    sub-int v2, p3, v1

    .line 124
    .local v2, "pad":I
    if-nez p4, :cond_7

    .line 125
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 129
    :goto_1
    if-nez p4, :cond_8

    add-int v5, p1, v1

    move v3, v5

    .line 130
    .local v3, "pads":I
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_4

    .line 131
    add-int v5, v3, v0

    const/16 v6, 0x20

    aput-char v6, p0, v5

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "pad":I
    .end local v3    # "pads":I
    :cond_6
    move v1, p3

    .line 122
    goto :goto_0

    .line 127
    .restart local v1    # "len":I
    .restart local v2    # "pad":I
    :cond_7
    sub-int v5, v4, v1

    add-int v6, p1, v2

    invoke-virtual {p2, v5, v4, p0, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    :cond_8
    move v3, p1

    .line 129
    goto :goto_2
.end method
