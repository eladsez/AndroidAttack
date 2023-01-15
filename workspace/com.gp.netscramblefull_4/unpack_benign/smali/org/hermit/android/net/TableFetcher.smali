.class public Lorg/hermit/android/net/TableFetcher;
.super Lorg/hermit/android/net/WebFetcher;
.source "TableFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/net/TableFetcher$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedFile"


# instance fields
.field private dateCal:Ljava/util/Calendar;

.field private dateFields:[I

.field private fieldNames:[Ljava/lang/String;

.field private longDates:Z


# direct methods
.method constructor <init>(Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JZ[Ljava/lang/String;J)V
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lorg/hermit/android/net/WebFetcher$Listener;
    .param p3, "timeout"    # J
    .param p5, "ldate"    # Z
    .param p6, "fields"    # [Ljava/lang/String;
    .param p7, "newer"    # J

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Lorg/hermit/android/net/WebFetcher;-><init>(Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move-object v5, p6

    move-wide v6, p7

    .line 69
    invoke-direct/range {v0 .. v7}, Lorg/hermit/android/net/TableFetcher;->init(Lorg/hermit/android/net/WebFetcher$Listener;JZ[Ljava/lang/String;J)V

    .line 70
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JZ[Ljava/lang/String;J)V
    .locals 8
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "client"    # Lorg/hermit/android/net/WebFetcher$Listener;
    .param p3, "timeout"    # J
    .param p5, "ldate"    # Z
    .param p6, "fields"    # [Ljava/lang/String;
    .param p7, "newer"    # J

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Lorg/hermit/android/net/WebFetcher;-><init>([Ljava/net/URL;Lorg/hermit/android/net/WebFetcher$Listener;JJ)V

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move-object v5, p6

    move-wide v6, p7

    .line 95
    invoke-direct/range {v0 .. v7}, Lorg/hermit/android/net/TableFetcher;->init(Lorg/hermit/android/net/WebFetcher$Listener;JZ[Ljava/lang/String;J)V

    .line 96
    return-void
.end method

.method private final init(Lorg/hermit/android/net/WebFetcher$Listener;JZ[Ljava/lang/String;J)V
    .locals 2
    .param p1, "client"    # Lorg/hermit/android/net/WebFetcher$Listener;
    .param p2, "timeout"    # J
    .param p4, "ldate"    # Z
    .param p5, "fields"    # [Ljava/lang/String;
    .param p6, "newer"    # J

    .prologue
    .line 118
    iput-boolean p4, p0, Lorg/hermit/android/net/TableFetcher;->longDates:Z

    .line 119
    iput-object p5, p0, Lorg/hermit/android/net/TableFetcher;->fieldNames:[Ljava/lang/String;

    .line 121
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 122
    .local v0, "utc":Ljava/util/TimeZone;
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    .line 123
    iget-object v1, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 125
    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/hermit/android/net/TableFetcher;->dateFields:[I

    .line 126
    return-void
.end method

.method private parse(Ljava/io/BufferedReader;Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "readc"    # Ljava/io/BufferedReader;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    iget-boolean v4, p0, Lorg/hermit/android/net/TableFetcher;->longDates:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    move v0, v4

    .line 194
    .local v0, "nDate":I
    :goto_0
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateFields:[I

    invoke-direct {p0, p1, v0, v4}, Lorg/hermit/android/net/TableFetcher;->parseInts(Ljava/io/BufferedReader;I[I)I

    move-result v1

    .line 195
    .local v1, "nread":I
    if-gez v1, :cond_1

    move v4, v9

    .line 224
    :goto_1
    return v4

    .end local v0    # "nDate":I
    .end local v1    # "nread":I
    :cond_0
    move v0, v11

    .line 193
    goto :goto_0

    .line 197
    .restart local v0    # "nDate":I
    .restart local v1    # "nread":I
    :cond_1
    if-ge v1, v0, :cond_2

    move v4, v7

    .line 198
    goto :goto_1

    .line 200
    :cond_2
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    iget-object v5, p0, Lorg/hermit/android/net/TableFetcher;->dateFields:[I

    aget v5, v5, v7

    invoke-virtual {v4, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 201
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    iget-object v5, p0, Lorg/hermit/android/net/TableFetcher;->dateFields:[I

    aget v5, v5, v8

    sub-int/2addr v5, v8

    invoke-virtual {v4, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 202
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    const/4 v5, 0x5

    iget-object v6, p0, Lorg/hermit/android/net/TableFetcher;->dateFields:[I

    aget v6, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 203
    iget-boolean v4, p0, Lorg/hermit/android/net/TableFetcher;->longDates:Z

    if-eqz v4, :cond_3

    .line 204
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateFields:[I

    aget v2, v4, v11

    .line 205
    .local v2, "time":I
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    const/16 v5, 0xb

    div-int/lit8 v6, v2, 0x64

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 206
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    const/16 v5, 0xc

    rem-int/lit8 v6, v2, 0x64

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 211
    .end local v2    # "time":I
    :goto_2
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 214
    .local v2, "time":J
    iget-wide v4, p0, Lorg/hermit/android/net/TableFetcher;->newerThanDate:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    move v4, v7

    .line 215
    goto :goto_1

    .line 208
    .end local v2    # "time":J
    :cond_3
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 209
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->dateCal:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 218
    .restart local v2    # "time":J
    :cond_4
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 219
    iget-object v4, p0, Lorg/hermit/android/net/TableFetcher;->fieldNames:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v4}, Lorg/hermit/android/net/TableFetcher;->parseFloats(Ljava/io/BufferedReader;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result v1

    .line 220
    if-gez v1, :cond_5

    move v4, v9

    .line 221
    goto :goto_1

    .line 223
    :cond_5
    const-string v4, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move v4, v8

    .line 224
    goto :goto_1
.end method

.method private parseFloats(Ljava/io/BufferedReader;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 19
    .param p1, "readc"    # Ljava/io/BufferedReader;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v8, 0x0

    .line 311
    .local v8, "index":I
    sget-object v12, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    .line 312
    .local v12, "state":Lorg/hermit/android/net/TableFetcher$State;
    const/4 v10, 0x0

    .line 313
    .local v10, "intv":I
    const/4 v11, 0x1

    .line 314
    .local v11, "sign":I
    const/4 v7, 0x0

    .line 315
    .local v7, "fracv":I
    const/4 v6, 0x1

    .line 316
    .local v6, "fracDiv":I
    const/4 v5, 0x0

    .line 317
    .local v5, "expv":I
    const/4 v4, 0x1

    .line 320
    .local v4, "esign":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .local v3, "c":I
    if-gez v3, :cond_1

    .line 389
    const/4 v14, -0x1

    :goto_1
    return v14

    .line 321
    :cond_1
    const/16 v14, 0xa

    if-eq v3, v14, :cond_2

    const/16 v14, 0xd

    if-ne v3, v14, :cond_4

    .line 322
    :cond_2
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    if-eq v12, v14, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/TableFetcher;->fieldNames:[Ljava/lang/String;

    move-object v14, v0

    array-length v14, v14

    if-ge v8, v14, :cond_3

    .line 324
    int-to-float v14, v10

    .line 325
    int-to-float v15, v7

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    .line 324
    add-float/2addr v14, v15

    .line 326
    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    mul-int v17, v5, v4

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    double-to-float v15, v15

    .line 324
    mul-float/2addr v14, v15

    .line 327
    int-to-float v15, v11

    .line 324
    mul-float v13, v14, v15

    .line 328
    .local v13, "val":F
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .local v9, "index":I
    aget-object v14, p3, v8

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    move v8, v9

    .end local v9    # "index":I
    .end local v13    # "val":F
    .restart local v8    # "index":I
    :cond_3
    move v14, v8

    .line 331
    goto :goto_1

    .line 332
    :cond_4
    const/16 v14, 0x2b

    if-eq v3, v14, :cond_5

    const/16 v14, 0x2d

    if-ne v3, v14, :cond_b

    .line 333
    :cond_5
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_7

    .line 334
    sget-object v12, Lorg/hermit/android/net/TableFetcher$State;->MAN:Lorg/hermit/android/net/TableFetcher$State;

    .line 335
    const/4 v10, 0x0

    .line 336
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_6

    const/4 v14, -0x1

    move v11, v14

    .line 337
    :goto_2
    const/4 v7, 0x0

    .line 338
    const/4 v6, 0x1

    .line 339
    const/4 v5, 0x0

    .line 340
    const/4 v4, 0x1

    goto :goto_0

    .line 336
    :cond_6
    const/4 v14, 0x1

    move v11, v14

    goto :goto_2

    .line 341
    :cond_7
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->MAN:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_9

    .line 342
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_8

    const/4 v14, -0x1

    move v11, v14

    :goto_3
    goto :goto_0

    :cond_8
    const/4 v14, 0x1

    move v11, v14

    goto :goto_3

    .line 343
    :cond_9
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->EXP:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_0

    .line 344
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_a

    const/4 v14, -0x1

    move v4, v14

    :goto_4
    goto :goto_0

    :cond_a
    const/4 v14, 0x1

    move v4, v14

    goto :goto_4

    .line 345
    :cond_b
    const/16 v14, 0x30

    if-lt v3, v14, :cond_f

    const/16 v14, 0x39

    if-gt v3, v14, :cond_f

    .line 346
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_c

    .line 347
    sget-object v12, Lorg/hermit/android/net/TableFetcher$State;->MAN:Lorg/hermit/android/net/TableFetcher$State;

    .line 348
    const/4 v10, 0x0

    .line 349
    const/4 v11, 0x1

    .line 350
    const/4 v7, 0x0

    .line 351
    const/4 v6, 0x1

    .line 352
    const/4 v5, 0x0

    .line 353
    const/4 v4, 0x1

    .line 355
    :cond_c
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->MAN:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_d

    .line 356
    mul-int/lit8 v14, v10, 0xa

    const/16 v15, 0x30

    sub-int v15, v3, v15

    add-int v10, v14, v15

    goto/16 :goto_0

    .line 357
    :cond_d
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->FRAC:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_e

    .line 358
    mul-int/lit8 v14, v7, 0xa

    const/16 v15, 0x30

    sub-int v15, v3, v15

    add-int v7, v14, v15

    .line 359
    mul-int/lit8 v6, v6, 0xa

    goto/16 :goto_0

    .line 360
    :cond_e
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->EXP:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_0

    .line 361
    mul-int/lit8 v14, v5, 0xa

    const/16 v15, 0x30

    sub-int v15, v3, v15

    add-int v5, v14, v15

    goto/16 :goto_0

    .line 362
    :cond_f
    const/16 v14, 0x2e

    if-ne v3, v14, :cond_11

    .line 363
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_10

    .line 364
    sget-object v12, Lorg/hermit/android/net/TableFetcher$State;->FRAC:Lorg/hermit/android/net/TableFetcher$State;

    .line 365
    const/4 v10, 0x0

    .line 366
    const/4 v11, 0x1

    .line 367
    const/4 v7, 0x0

    .line 368
    const/4 v6, 0x1

    .line 369
    const/4 v5, 0x0

    .line 370
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 371
    :cond_10
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->MAN:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_0

    .line 372
    sget-object v12, Lorg/hermit/android/net/TableFetcher$State;->FRAC:Lorg/hermit/android/net/TableFetcher$State;

    goto/16 :goto_0

    .line 373
    :cond_11
    const/16 v14, 0x65

    if-eq v3, v14, :cond_12

    const/16 v14, 0x45

    if-ne v3, v14, :cond_14

    .line 374
    :cond_12
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->MAN:Lorg/hermit/android/net/TableFetcher$State;

    if-eq v12, v14, :cond_13

    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->FRAC:Lorg/hermit/android/net/TableFetcher$State;

    if-ne v12, v14, :cond_0

    .line 375
    :cond_13
    sget-object v12, Lorg/hermit/android/net/TableFetcher$State;->EXP:Lorg/hermit/android/net/TableFetcher$State;

    goto/16 :goto_0

    .line 376
    :cond_14
    const/16 v14, 0x20

    if-eq v3, v14, :cond_15

    const/16 v14, 0x9

    if-eq v3, v14, :cond_15

    .line 377
    :cond_15
    sget-object v14, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    if-eq v12, v14, :cond_0

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/android/net/TableFetcher;->fieldNames:[Ljava/lang/String;

    move-object v14, v0

    array-length v14, v14

    if-ge v8, v14, :cond_16

    .line 379
    int-to-float v14, v10

    int-to-float v15, v7

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    add-float/2addr v14, v15

    .line 380
    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    mul-int v17, v5, v4

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    double-to-float v15, v15

    .line 379
    mul-float/2addr v14, v15

    .line 381
    int-to-float v15, v11

    .line 379
    mul-float v13, v14, v15

    .line 382
    .restart local v13    # "val":F
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    aget-object v14, p3, v8

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    move v8, v9

    .line 384
    .end local v9    # "index":I
    .end local v13    # "val":F
    .restart local v8    # "index":I
    :cond_16
    sget-object v12, Lorg/hermit/android/net/TableFetcher$State;->SPACE:Lorg/hermit/android/net/TableFetcher$State;

    goto/16 :goto_0
.end method

.method private parseInts(Ljava/io/BufferedReader;I[I)I
    .locals 12
    .param p1, "readc"    # Ljava/io/BufferedReader;
    .param p2, "count"    # I
    .param p3, "results"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x30

    const/16 v10, 0xd

    const/16 v9, 0xa

    .line 243
    const/4 v1, 0x1

    .line 244
    .local v1, "first":Z
    const/4 v2, 0x0

    .line 245
    .local v2, "inNum":Z
    const/4 v3, 0x0

    .line 246
    .local v3, "index":I
    const/4 v6, 0x0

    .line 247
    .local v6, "val":I
    const/4 v5, 0x1

    .line 248
    .local v5, "sign":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .local v0, "c":I
    if-gez v0, :cond_2

    .line 288
    if-eqz v2, :cond_1

    .line 289
    const/4 v2, 0x0

    .line 290
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    mul-int v7, v6, v5

    aput v7, p3, v3

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_1
    move v7, v3

    .line 292
    :goto_1
    return v7

    .line 250
    :cond_2
    if-eqz v1, :cond_6

    const/16 v7, 0x3a

    if-eq v0, v7, :cond_3

    const/16 v7, 0x23

    if-ne v0, v7, :cond_6

    .line 251
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    if-gez v0, :cond_5

    .line 254
    :cond_4
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 252
    :cond_5
    if-eq v0, v9, :cond_4

    if-ne v0, v10, :cond_3

    goto :goto_2

    .line 256
    :cond_6
    const/4 v1, 0x0

    .line 258
    if-eq v0, v9, :cond_7

    if-ne v0, v10, :cond_9

    .line 259
    :cond_7
    if-eqz v2, :cond_8

    .line 260
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    mul-int v7, v6, v5

    aput v7, p3, v3

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_8
    move v7, v3

    .line 261
    goto :goto_1

    .line 262
    :cond_9
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_c

    .line 263
    if-eqz v2, :cond_b

    .line 264
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    mul-int v7, v6, v5

    aput v7, p3, v3

    .line 265
    if-lt v4, p2, :cond_a

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    move v7, v4

    .line 266
    goto :goto_1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_a
    move v3, v4

    .line 268
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_b
    const/4 v2, 0x1

    .line 269
    const/4 v6, 0x0

    .line 270
    const/4 v5, -0x1

    goto :goto_0

    .line 271
    :cond_c
    if-lt v0, v11, :cond_e

    const/16 v7, 0x39

    if-gt v0, v7, :cond_e

    .line 272
    if-nez v2, :cond_d

    .line 273
    const/4 v2, 0x1

    .line 274
    const/4 v6, 0x0

    .line 275
    const/4 v5, 0x1

    .line 277
    :cond_d
    mul-int/lit8 v7, v6, 0xa

    sub-int v8, v0, v11

    add-int v6, v7, v8

    goto :goto_0

    .line 279
    :cond_e
    if-eqz v2, :cond_0

    .line 280
    const/4 v2, 0x0

    .line 281
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    mul-int v7, v6, v5

    aput v7, p3, v3

    .line 282
    if-lt v4, p2, :cond_f

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    move v7, v4

    .line 283
    goto :goto_1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_f
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0
.end method


# virtual methods
.method protected handle(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/BufferedReader;)V
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "conn"    # Ljava/net/URLConnection;
    .param p3, "readc"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/android/net/WebFetcher$FetchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p2}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v1

    .line 149
    .local v1, "date":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v4, "rec":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 152
    .local v0, "count":I
    :cond_0
    :goto_0
    invoke-direct {p0, p3, v4}, Lorg/hermit/android/net/TableFetcher;->parse(Ljava/io/BufferedReader;Landroid/content/ContentValues;)I

    move-result v5

    .local v5, "stat":I
    if-gez v5, :cond_1

    .line 169
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lorg/hermit/android/net/TableFetcher;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    new-instance v6, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v7, "timed out"

    invoke-direct {v6, v7}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 157
    :cond_2
    const/4 v6, 0x1

    if-lt v5, v6, :cond_3

    .line 158
    iget-object v6, p0, Lorg/hermit/android/net/TableFetcher;->dataClient:Lorg/hermit/android/net/WebFetcher$Listener;

    invoke-interface {v6, p1, v4, v1, v2}, Lorg/hermit/android/net/WebFetcher$Listener;->onWebData(Ljava/net/URL;Ljava/lang/Object;J)V

    .line 160
    :cond_3
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v6, v0, 0x14

    if-nez v6, :cond_0

    .line 163
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v6, Lorg/hermit/android/net/WebFetcher$FetchException;

    const-string v7, "interrupted"

    invoke-direct {v6, v7}, Lorg/hermit/android/net/WebFetcher$FetchException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
