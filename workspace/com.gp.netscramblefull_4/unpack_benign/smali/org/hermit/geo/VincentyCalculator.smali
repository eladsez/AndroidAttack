.class public Lorg/hermit/geo/VincentyCalculator;
.super Lorg/hermit/geo/GeoCalculator;
.source "VincentyCalculator.java"


# static fields
.field private static final FP_TOLERANCE:D = 5.0E-15

.field private static final GEO_TOLERANCE:D = 5.0E-14

.field private static final NODAL_LIMIT:D = 0.007

.field private static final PRECISION_LIMIT:D = 5.0E-14

.field private static final TWO_PI:D = 6.283185307179586


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/hermit/geo/GeoCalculator;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V
    .locals 0
    .param p1, "ellip"    # Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/hermit/geo/GeoCalculator;-><init>(Lorg/hermit/geo/GeoConstants$Ellipsoid;)V

    .line 94
    return-void
.end method

.method private static dirct1(DDDDDD)[D
    .locals 34
    .param p0, "glat1"    # D
    .param p2, "glon1"    # D
    .param p4, "azimuth"    # D
    .param p6, "dist"    # D
    .param p8, "axis"    # D
    .param p10, "flat"    # D

    .prologue
    .line 248
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v14, v4, p10

    .line 250
    .local v14, "r":D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v14

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    .end local p0    # "glat1":D
    div-double v4, v4, p0

    .line 252
    .local v4, "tu":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 253
    .local v18, "sf":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 255
    .local v6, "cf":D
    const-wide/16 p0, 0x0

    .line 257
    .local p0, "baz":D
    const-wide/16 p4, 0x0

    cmpl-double p4, v6, p4

    if-eqz p4, :cond_0

    .line 258
    .end local p4    # "azimuth":D
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    .end local p0    # "baz":D
    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    mul-double p0, p0, p4

    .line 260
    .restart local p0    # "baz":D
    :cond_0
    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    mul-double v8, v4, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, p4, v8

    .line 261
    .local v8, "cu":D
    mul-double v20, v4, v8

    .line 262
    .local v20, "su":D
    mul-double v16, v8, v18

    .line 263
    .local v16, "sa":D
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 p4, v0

    mul-double p4, p4, v16

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v4, v4, p4

    .line 265
    .local v4, "c2a":D
    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    div-double p4, p4, v14

    div-double p4, p4, v14

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double p4, p4, v10

    mul-double p4, p4, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double p4, p4, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double p4, p4, v10

    .line 266
    .local p4, "x":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    sub-double v10, p4, v10

    div-double v12, v10, p4

    .line 267
    .end local p4    # "x":D
    .local v12, "x":D
    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    sub-double p4, p4, v12

    .line 268
    .local p4, "c":D
    mul-double v10, v12, v12

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    div-double v10, v10, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v10, v10, v22

    div-double p4, v10, p4

    .line 269
    const-wide/high16 v10, 0x3fd8000000000000L    # 0.375

    mul-double/2addr v10, v12

    mul-double/2addr v10, v12

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v10, v10, v22

    mul-double/2addr v10, v12

    .line 270
    .local v10, "d":D
    div-double p6, p6, v14

    div-double p6, p6, p8

    div-double v24, p6, p4

    .line 271
    .local v24, "tu":D
    move-wide/from16 p6, v24

    .local p6, "y":D
    move-wide/from16 v26, p6

    .end local p6    # "y":D
    .local v26, "y":D
    move-wide/from16 p6, v12

    .line 275
    .end local v12    # "x":D
    .end local p8    # "axis":D
    .local p6, "x":D
    :goto_0
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 276
    .local v22, "sy":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    .line 277
    .local p6, "cy":D
    add-double p4, p0, v26

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    .end local p4    # "c":D
    move-result-wide p8

    .line 278
    .local p8, "cz":D
    mul-double p4, p8, p8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double p4, p4, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, p4, v12

    .line 280
    .local v12, "e":D
    move-wide/from16 p4, v26

    .line 281
    .restart local p4    # "c":D
    mul-double v26, v12, p6

    .line 282
    .local v26, "x":D
    add-double v28, v12, v12

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v28, v28, v30

    .line 283
    .local v28, "y":D
    mul-double v30, v22, v22

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    mul-double v28, v28, p8

    mul-double v28, v28, v10

    const-wide/high16 v30, 0x4018000000000000L    # 6.0

    div-double v28, v28, v30

    add-double v28, v28, v26

    mul-double v28, v28, v10

    .line 284
    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    .line 283
    div-double v28, v28, v30

    sub-double v28, v28, p8

    mul-double v28, v28, v22

    mul-double v28, v28, v10

    add-double v28, v28, v24

    .line 285
    sub-double v30, v28, p4

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    const-wide v32, 0x3d2c25c268497682L    # 5.0E-14

    cmpl-double v30, v30, v32

    if-gtz v30, :cond_1

    .line 287
    mul-double p0, v8, p6

    mul-double p0, p0, v6

    mul-double p4, v20, v22

    sub-double p0, p0, p4

    .line 288
    mul-double p4, v16, v16

    mul-double v10, p0, p0

    add-double p4, p4, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sqrt(D)D

    .end local v10    # "d":D
    .end local p4    # "c":D
    move-result-wide p4

    mul-double p4, p4, v14

    .line 289
    .restart local p4    # "c":D
    mul-double v10, v20, p6

    mul-double v14, v8, v22

    mul-double/2addr v14, v6

    add-double/2addr v10, v14

    .line 290
    .restart local v10    # "d":D
    move-wide v0, v10

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local v14    # "r":D
    move-result-wide v10

    .line 291
    .local v10, "glat2":D
    mul-double p4, v8, p6

    mul-double v8, v20, v22

    mul-double/2addr v6, v8

    sub-double p4, p4, v6

    .line 292
    mul-double v6, v22, v18

    move-wide v0, v6

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local v6    # "cf":D
    .end local v8    # "cu":D
    move-result-wide v6

    .line 293
    .end local v26    # "x":D
    .local v6, "x":D
    const-wide/high16 p4, -0x3ff8000000000000L    # -3.0

    mul-double p4, p4, v4

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    add-double p4, p4, v8

    mul-double p4, p4, p10

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    add-double p4, p4, v8

    mul-double p4, p4, v4

    mul-double p4, p4, p10

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double p4, p4, v4

    .line 294
    mul-double p6, p6, v12

    mul-double p6, p6, p4

    add-double p6, p6, p8

    mul-double p6, p6, v22

    mul-double p6, p6, p4

    add-double p6, p6, v28

    mul-double p6, p6, v16

    .line 295
    .local p6, "d":D
    add-double p2, p2, v6

    const-wide/high16 p8, 0x3ff0000000000000L    # 1.0

    sub-double p4, p8, p4

    mul-double p4, p4, p6

    mul-double p4, p4, p10

    sub-double p2, p2, p4

    .line 296
    .local p2, "glon2":D
    move-wide/from16 v0, v16

    move-wide/from16 v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local v4    # "c2a":D
    .end local p4    # "c":D
    .end local p8    # "cz":D
    move-result-wide p0

    .end local p0    # "baz":D
    const-wide p4, 0x400921fb54442d18L    # Math.PI

    add-double p0, p0, p4

    .line 298
    .restart local p0    # "baz":D
    const/16 p4, 0x3

    move/from16 v0, p4

    new-array v0, v0, [D

    move-object/from16 p4, v0

    .line 299
    .local p4, "ret":[D
    const/16 p5, 0x0

    aput-wide v10, p4, p5

    .line 300
    const/16 p5, 0x1

    aput-wide p2, p4, p5

    .line 301
    const/16 p2, 0x2

    aput-wide p0, p4, p2

    .line 302
    .end local p2    # "glon2":D
    return-object p4

    .restart local v4    # "c2a":D
    .local v6, "cf":D
    .restart local v8    # "cu":D
    .local v10, "d":D
    .restart local v14    # "r":D
    .restart local v26    # "x":D
    .local p2, "glon1":D
    .local p4, "c":D
    .local p6, "cy":D
    .restart local p8    # "cz":D
    :cond_1
    move-wide/from16 p6, v26

    .end local v26    # "x":D
    .local p6, "x":D
    move-wide/from16 v26, v28

    .end local v28    # "y":D
    .local v26, "y":D
    goto/16 :goto_0
.end method

.method private static gpnarc(DDDDD)[D
    .locals 25
    .param p0, "amax"    # D
    .param p2, "flat"    # D
    .param p4, "esq"    # D
    .param p6, "p1"    # D
    .param p8, "p2"    # D

    .prologue
    .line 535
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    .end local p2    # "flat":D
    const-wide v1, 0x3cf6849b86a12b9bL    # 5.0E-15

    cmpg-double p2, p2, v1

    if-gez p2, :cond_0

    .line 536
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double p2, p2, v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide v1, 0x3cf6849b86a12b9bL    # 5.0E-15

    cmpg-double p2, p2, v1

    if-gez p2, :cond_0

    const/16 p2, 0x1

    move/from16 v11, p2

    .line 538
    .local v11, "ninety":Z
    :goto_0
    sub-double v7, p8, p6

    .line 539
    .local v7, "da":D
    const-wide/16 p2, 0x0

    .line 540
    .local p2, "s1":D
    const-wide/16 v12, 0x0

    .line 543
    .local v12, "s2":D
    move-wide/from16 p2, p4

    .line 544
    .local p2, "e2":D
    mul-double v1, p2, p2

    .line 545
    .local v1, "e4":D
    mul-double v3, v1, p2

    .line 546
    .local v3, "e6":D
    mul-double v5, v3, p2

    .line 547
    .local v5, "e8":D
    mul-double v9, v5, p2

    .line 549
    .local v9, "ex":D
    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, p2

    .line 550
    .local v14, "t1":D
    const-wide/high16 p2, 0x3fce000000000000L    # 0.234375

    mul-double v16, v1, p2

    .line 551
    .local v16, "t2":D
    const-wide p2, 0x3fb1800000000000L    # 0.068359375

    mul-double v18, v3, p2

    .line 552
    .local v18, "t3":D
    const-wide p2, 0x3f93b00000000000L    # 0.01922607421875

    mul-double v20, v5, p2

    .line 553
    .local v20, "t4":D
    const-wide p2, 0x3f75a80000000000L    # 0.00528717041015625

    mul-double v9, v9, p2

    .line 555
    .local v9, "t5":D
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    add-double p2, p2, v14

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    mul-double v1, v1, v16

    add-double p2, p2, v1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double v1, v1, v18

    add-double p2, p2, v1

    const-wide v1, 0x4041800000000000L    # 35.0

    mul-double v1, v1, v20

    add-double p2, p2, v1

    const-wide v1, 0x405f800000000000L    # 126.0

    mul-double/2addr v1, v9

    add-double p2, p2, v1

    .line 557
    .local p2, "a":D
    if-nez v11, :cond_2

    .line 559
    .end local v1    # "e4":D
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    mul-double v1, v1, v16

    add-double/2addr v1, v14

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    mul-double v3, v3, v18

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    mul-double v3, v3, v20

    add-double/2addr v1, v3

    const-wide v3, 0x406a400000000000L    # 210.0

    mul-double/2addr v3, v9

    add-double/2addr v1, v3

    .line 560
    .local v1, "b":D
    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    mul-double v3, v3, v18

    add-double v3, v3, v16

    const-wide/high16 v5, 0x403c000000000000L    # 28.0

    mul-double v5, v5, v20

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x405e000000000000L    # 120.0

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    .line 561
    .local v3, "c":D
    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    mul-double v5, v5, v20

    add-double v5, v5, v18

    const-wide v11, 0x4046800000000000L    # 45.0

    mul-double/2addr v11, v9

    add-double/2addr v5, v11

    .line 562
    .local v5, "d":D
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v11, v9

    add-double v19, v20, v11

    .line 563
    .end local v18    # "t3":D
    .end local v20    # "t4":D
    .local v19, "e":D
    move-wide/from16 v21, v9

    .line 565
    .local v21, "f":D
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v9, v9, p8

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .end local v9    # "t5":D
    .end local v11    # "ninety":Z
    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v11, v11, p6

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    sub-double/2addr v9, v11

    .line 566
    .local v9, "db":D
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    mul-double v11, v11, p8

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    mul-double v13, v13, p6

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    sub-double/2addr v11, v13

    .line 567
    .end local v12    # "s2":D
    .local v11, "dc":D
    const-wide/high16 v13, 0x4018000000000000L    # 6.0

    mul-double v13, v13, p8

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x4018000000000000L    # 6.0

    mul-double v15, v15, p6

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    sub-double/2addr v13, v15

    .line 568
    .end local v14    # "t1":D
    .local v13, "dd":D
    const-wide/high16 v15, 0x4020000000000000L    # 8.0

    mul-double v15, v15, p8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x4020000000000000L    # 8.0

    mul-double v17, v17, p6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    sub-double v15, v15, v17

    .line 569
    .end local v16    # "t2":D
    .local v15, "de":D
    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    mul-double v17, v17, p8

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    mul-double v23, v23, p6

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    sub-double v17, v17, v23

    .line 573
    .local v17, "df":D
    neg-double v9, v9

    mul-double/2addr v1, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v9

    mul-double/2addr v3, v11

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v9

    add-double/2addr v1, v3

    mul-double v3, v13, v5

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    mul-double v3, v15, v19

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    mul-double v3, v17, v21

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 578
    .end local v3    # "c":D
    .end local v5    # "d":D
    .end local v9    # "db":D
    .end local v11    # "dc":D
    .end local v13    # "dd":D
    .end local v15    # "de":D
    .end local v17    # "df":D
    .end local v19    # "e":D
    .end local v21    # "f":D
    .local v1, "s2":D
    :goto_1
    mul-double p2, p2, v7

    .line 581
    .local p2, "s1":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double p4, v3, p4

    mul-double p0, p0, p4

    add-double p2, p2, v1

    mul-double p0, p0, p2

    .line 584
    .local p0, "arc":D
    const/16 p2, 0x3

    move/from16 v0, p2

    new-array v0, v0, [D

    move-object/from16 p2, v0

    .line 585
    .end local p4    # "esq":D
    .local p2, "ret":[D
    const/16 p3, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .end local p0    # "arc":D
    aput-wide p0, p2, p3

    .line 589
    cmpl-double p0, p8, p6

    if-lez p0, :cond_1

    .line 590
    const/16 p0, 0x1

    const-wide/16 p3, 0x0

    aput-wide p3, p2, p0

    .line 591
    const/16 p0, 0x2

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    aput-wide p3, p2, p0

    .line 597
    :goto_2
    return-object p2

    .line 536
    .end local v1    # "s2":D
    .end local v7    # "da":D
    .end local p2    # "ret":[D
    .local p0, "amax":D
    .restart local p4    # "esq":D
    :cond_0
    const/16 p2, 0x0

    move/from16 v11, p2

    goto/16 :goto_0

    .line 593
    .end local p0    # "amax":D
    .end local p4    # "esq":D
    .restart local v1    # "s2":D
    .restart local v7    # "da":D
    .restart local p2    # "ret":[D
    :cond_1
    const/16 p0, 0x1

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    aput-wide p3, p2, p0

    .line 594
    const/16 p0, 0x2

    const-wide/16 p3, 0x0

    aput-wide p3, p2, p0

    goto :goto_2

    .end local v1    # "s2":D
    .local v3, "e6":D
    .local v5, "e8":D
    .local v9, "t5":D
    .local v11, "ninety":Z
    .restart local v12    # "s2":D
    .restart local v14    # "t1":D
    .restart local v16    # "t2":D
    .restart local v18    # "t3":D
    .restart local v20    # "t4":D
    .restart local p0    # "amax":D
    .local p2, "a":D
    .restart local p4    # "esq":D
    :cond_2
    move-wide v1, v12

    .end local v12    # "s2":D
    .restart local v1    # "s2":D
    goto :goto_1
.end method

.method private static gpnhri(DDDDDD)[D
    .locals 72
    .param p0, "a"    # D
    .param p2, "f"    # D
    .param p4, "p1"    # D
    .param p6, "e1"    # D
    .param p8, "p2"    # D
    .param p10, "e2"    # D

    .prologue
    .line 348
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v4, v4, p2

    mul-double v8, p2, v4

    .line 351
    .local v8, "esq":D
    const-wide/16 v4, 0x0

    cmpg-double v4, p6, v4

    if-gez v4, :cond_0

    .line 352
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double p6, p6, v4

    .line 353
    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v4, p10, v4

    if-gez v4, :cond_1

    .line 354
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double p10, p10, v4

    .line 358
    :cond_1
    sub-double v14, p10, p6

    .line 359
    .local v14, "dlon":D
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d2c25c268497682L    # 5.0E-14

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p8

    .line 360
    invoke-static/range {v4 .. v13}, Lorg/hermit/geo/VincentyCalculator;->gpnarc(DDDDD)[D

    move-result-object p0

    .end local p0    # "a":D
    move-wide v10, v14

    .line 508
    .end local v8    # "esq":D
    .end local v14    # "dlon":D
    .end local p2    # "f":D
    .end local p4    # "p1":D
    .end local p6    # "e1":D
    .end local p8    # "p2":D
    .end local p10    # "e2":D
    .local v10, "dlon":D
    :goto_0
    return-object p0

    .line 363
    .end local v10    # "dlon":D
    .restart local v8    # "esq":D
    .restart local v14    # "dlon":D
    .restart local p0    # "a":D
    .restart local p2    # "f":D
    .restart local p4    # "p1":D
    .restart local p6    # "e1":D
    .restart local p8    # "p2":D
    .restart local p10    # "e2":D
    :cond_2
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    cmpl-double v4, v14, v4

    if-ltz v4, :cond_10

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v4, v14, v4

    if-gez v4, :cond_10

    .line 364
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v10, v14, v4

    .line 365
    .end local v14    # "dlon":D
    .restart local v10    # "dlon":D
    :goto_1
    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v4, v10, v4

    if-gtz v4, :cond_3

    const-wide v4, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    cmpl-double v4, v10, v4

    if-lez v4, :cond_3

    .line 366
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v10, v4

    .line 369
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 370
    .local v4, "absDlon":D
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v6, v4, v6

    if-lez v6, :cond_4

    .line 371
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v4, v6, v4

    .line 376
    :cond_4
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v12, p2

    mul-double/2addr v6, v12

    .line 381
    .local v6, "alimit":D
    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .end local v4    # "absDlon":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f7cac083126e979L    # 0.007

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    .end local v6    # "alimit":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f7cac083126e979L    # 0.007

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    .line 382
    invoke-static/range {v4 .. v11}, Lorg/hermit/geo/VincentyCalculator;->gpnloa(DDDD)[D

    move-result-object p0

    goto :goto_0

    .line 386
    :cond_5
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, p2

    .line 387
    .local v6, "f0":D
    mul-double v4, p0, v6

    .line 388
    .local v4, "b":D
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double p0, p0, v8

    div-double v16, v8, p0

    .line 389
    .local v16, "epsq":D
    mul-double v18, p2, p2

    .line 390
    .local v18, "f2":D
    mul-double v20, p2, v18

    .line 391
    .local v20, "f3":D
    mul-double v22, p2, v20

    .line 395
    .local v22, "f4":D
    sub-double v10, p10, p6

    .line 396
    move-wide/from16 p0, v10

    .line 401
    .local p0, "ab":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    .end local p6    # "e1":D
    mul-double p6, p6, v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    .end local p4    # "p1":D
    div-double p4, p6, p4

    .line 402
    .local p4, "u1":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    mul-double p6, p6, v6

    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide p8

    .end local p8    # "p2":D
    div-double p6, p6, p8

    .line 404
    .local p6, "u2":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->atan(D)D

    move-result-wide p4

    .line 405
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->atan(D)D

    move-result-wide p6

    .line 407
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v43

    .line 408
    .local v43, "su1":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 410
    .local v12, "cu1":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v45

    .line 411
    .local v45, "su2":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 415
    .local v14, "cu2":D
    const-wide/16 p4, 0x0

    .local p4, "clon":D
    const-wide/16 v32, 0x0

    .local v32, "slon":D
    const-wide/16 v30, 0x0

    .line 416
    .local v30, "sinalf":D
    const-wide/16 v28, 0x0

    .local v28, "sig":D
    const-wide/16 p6, 0x0

    .local p6, "csig":D
    const-wide/16 v34, 0x0

    .local v34, "ssig":D
    const-wide/16 v36, 0x0

    .line 417
    .local v36, "w":D
    const-wide/16 p9, 0x0

    .end local p10    # "e2":D
    .local p9, "q2":D
    const-wide/16 v6, 0x0

    .local v6, "q4":D
    const-wide/16 v8, 0x0

    .local v8, "q6":D
    const-wide/16 v24, 0x0

    .local v24, "r2":D
    const-wide/16 v26, 0x0

    .line 418
    .local v26, "r3":D
    const/16 p8, 0x0

    .local p8, "i":I
    move/from16 v51, p8

    .end local p8    # "i":I
    .local v51, "i":I
    move-wide/from16 v52, v26

    .end local v26    # "r3":D
    .local v52, "r3":D
    move-wide/from16 v54, v24

    .end local v24    # "r2":D
    .local v54, "r2":D
    move/from16 v24, v51

    .end local v51    # "i":I
    .local v24, "i":I
    move-wide/from16 v25, v52

    .end local v52    # "r3":D
    .local v25, "r3":D
    move-wide/from16 v56, v8

    .end local v8    # "q6":D
    .local v56, "q6":D
    move-wide/from16 v8, v54

    .end local v54    # "r2":D
    .local v8, "r2":D
    move-wide/from16 v58, v6

    .end local v6    # "q4":D
    .local v58, "q4":D
    move-wide/from16 v6, v56

    .end local v56    # "q6":D
    .local v6, "q6":D
    move-wide/from16 v60, p9

    .end local p9    # "q2":D
    .local v60, "q2":D
    move-wide/from16 p10, v58

    .end local v58    # "q4":D
    .local p10, "q4":D
    move-wide/from16 p8, p0

    .end local p0    # "ab":D
    .local p8, "ab":D
    move-wide/from16 p0, p4

    .end local p4    # "clon":D
    .local p0, "clon":D
    move-wide/from16 p4, p6

    .end local p6    # "csig":D
    .local p4, "csig":D
    move-wide/from16 p6, v60

    .end local v60    # "q2":D
    .local p6, "q2":D
    move-wide/from16 v62, v28

    .end local v28    # "sig":D
    .local v62, "sig":D
    move-wide/from16 v27, v62

    .end local v62    # "sig":D
    .local v27, "sig":D
    move-wide/from16 v64, v30

    .end local v30    # "sinalf":D
    .local v64, "sinalf":D
    move-wide/from16 v29, v64

    .end local v64    # "sinalf":D
    .local v29, "sinalf":D
    move-wide/from16 v66, v32

    .end local v32    # "slon":D
    .local v66, "slon":D
    move-wide/from16 v31, v66

    .end local v66    # "slon":D
    .local v31, "slon":D
    move-wide/from16 v68, v36

    .end local v36    # "w":D
    .local v68, "w":D
    move-wide/from16 v70, v34

    .end local v34    # "ssig":D
    .local v70, "ssig":D
    move-wide/from16 v33, v70

    .end local v70    # "ssig":D
    .local v33, "ssig":D
    move-wide/from16 v35, v68

    .end local v68    # "w":D
    .local v35, "w":D
    :goto_2
    const/16 v37, 0x8

    move/from16 v0, v24

    move/from16 v1, v37

    if-lt v0, v1, :cond_7

    move-wide/from16 v20, v25

    .end local v25    # "r3":D
    .local v20, "r3":D
    move-wide/from16 v18, v8

    .end local v8    # "r2":D
    .local v18, "r2":D
    move-wide/from16 p2, p4

    .end local p4    # "csig":D
    .local p2, "csig":D
    move-wide/from16 v22, v27

    .end local v27    # "sig":D
    .local v22, "sig":D
    move-wide/from16 p4, v35

    .end local v35    # "w":D
    .local p4, "w":D
    move-wide v8, v6

    .end local v6    # "q6":D
    .local v8, "q6":D
    move-wide/from16 v24, v29

    .end local v29    # "sinalf":D
    .local v24, "sinalf":D
    move-wide/from16 v26, v31

    .end local v31    # "slon":D
    .local v26, "slon":D
    move-wide/from16 v6, p10

    .end local p10    # "q4":D
    .local v6, "q4":D
    move-wide/from16 v28, v33

    .end local v33    # "ssig":D
    .local v28, "ssig":D
    move-wide/from16 p10, p6

    .end local p6    # "q2":D
    .local p10, "q2":D
    move-wide/from16 v51, p0

    .end local p0    # "clon":D
    .local v51, "clon":D
    move-wide/from16 p0, p8

    .end local p8    # "ab":D
    .local p0, "ab":D
    move-wide/from16 p8, v51

    .line 470
    .end local v51    # "clon":D
    .local p8, "clon":D
    :goto_3
    mul-double p4, p4, v16

    .line 472
    .local p4, "z":D
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 p2, 0x3fd0000000000000L    # 0.25

    const-wide/high16 p6, -0x4058000000000000L    # -0.046875

    const-wide/high16 v16, 0x3f94000000000000L    # 0.01953125

    const-wide v30, 0x4065e00000000000L    # 175.0

    mul-double v30, v30, p4

    const-wide/high16 v32, 0x40d0000000000000L    # 16384.0

    div-double v30, v30, v32

    sub-double v16, v16, v30

    mul-double v16, v16, p4

    add-double p6, p6, v16

    mul-double p6, p6, p4

    add-double p2, p2, p6

    mul-double p2, p2, p4

    add-double p6, p0, p2

    .line 473
    .local p6, "bo":D
    const-wide/high16 p0, -0x4030000000000000L    # -0.25

    const-wide/high16 p2, 0x3fb0000000000000L    # 0.0625

    const-wide/high16 v16, -0x4062000000000000L    # -0.029296875

    const-wide v30, 0x4041800000000000L    # 35.0

    mul-double v30, v30, p4

    const-wide/high16 v32, 0x40a0000000000000L    # 2048.0

    div-double v30, v30, v32

    add-double v16, v16, v30

    mul-double v16, v16, p4

    add-double p2, p2, v16

    mul-double p2, p2, p4

    add-double p0, p0, p2

    mul-double p0, p0, p4

    .line 474
    .local p0, "b2":D
    mul-double p2, p4, p4

    const-wide/high16 v16, -0x4080000000000000L    # -0.0078125

    const-wide/high16 v30, 0x3f78000000000000L    # 0.005859375

    const-wide v32, 0x4041800000000000L    # 35.0

    mul-double v32, v32, p4

    const-wide/high16 v34, 0x40c0000000000000L    # 8192.0

    div-double v32, v32, v34

    sub-double v30, v30, v32

    mul-double v30, v30, p4

    add-double v16, v16, v30

    mul-double p2, p2, v16

    .line 475
    .local p2, "b4":D
    mul-double v16, p4, p4

    mul-double v16, v16, p4

    const-wide v30, -0x40baaaaaaaaaaaabL    # -6.510416666666666E-4

    const-wide/high16 v32, 0x4014000000000000L    # 5.0

    mul-double p4, p4, v32

    const-wide/high16 v32, 0x40b8000000000000L    # 6144.0

    div-double p4, p4, v32

    add-double p4, p4, v30

    mul-double p4, p4, v16

    .line 479
    .local p4, "b6":D
    mul-double p6, p6, v22

    mul-double p0, p0, v28

    mul-double p0, p0, p10

    add-double p0, p0, p6

    mul-double p2, p2, v18

    mul-double p2, p2, v6

    add-double p0, p0, p2

    mul-double p2, p4, v20

    mul-double p2, p2, v8

    add-double p0, p0, p2

    mul-double p4, v4, p0

    .line 484
    .local p4, "s":D
    const-wide p0, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double p0, p4, p0

    if-gez p0, :cond_a

    .line 485
    .end local v16    # "epsq":D
    .end local p0    # "b2":D
    .end local p2    # "b4":D
    .end local p6    # "bo":D
    const-wide/16 p0, 0x0

    .line 486
    .local p0, "az1":D
    const-wide/16 p2, 0x0

    .line 508
    .end local p8    # "clon":D
    .end local p10    # "q2":D
    .local p2, "az2":D
    :cond_6
    :goto_4
    const/16 p6, 0x3

    move/from16 v0, p6

    new-array v0, v0, [D

    move-object/from16 p6, v0

    const/16 p7, 0x0

    aput-wide p4, p6, p7

    const/16 p4, 0x1

    aput-wide p0, p6, p4

    .end local p4    # "s":D
    const/16 p0, 0x2

    aput-wide p2, p6, p0

    .end local p0    # "az1":D
    move-object/from16 p0, p6

    goto/16 :goto_0

    .line 419
    .end local v26    # "slon":D
    .end local v28    # "ssig":D
    .local v6, "q6":D
    .local v8, "r2":D
    .restart local v16    # "epsq":D
    .local v18, "f2":D
    .local v20, "f3":D
    .local v22, "f4":D
    .local v24, "i":I
    .restart local v25    # "r3":D
    .restart local v27    # "sig":D
    .restart local v29    # "sinalf":D
    .restart local v31    # "slon":D
    .restart local v33    # "ssig":D
    .restart local v35    # "w":D
    .local p0, "clon":D
    .local p2, "f":D
    .local p4, "csig":D
    .local p6, "q2":D
    .local p8, "ab":D
    .local p10, "q4":D
    :cond_7
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 420
    .end local p0    # "clon":D
    .local v6, "clon":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    .line 422
    .end local v31    # "slon":D
    .local v39, "slon":D
    mul-double p0, v43, v45

    mul-double p4, v12, v14

    mul-double p4, p4, v6

    add-double v8, p0, p4

    .line 423
    .end local p4    # "csig":D
    .local v8, "csig":D
    mul-double p0, v39, v14

    .line 424
    .local p0, "k1":D
    mul-double p4, v45, v12

    mul-double p6, v43, v14

    mul-double p6, p6, v6

    sub-double p4, p4, p6

    .line 425
    .local p4, "k2":D
    mul-double p0, p0, p0

    mul-double p4, p4, p4

    add-double p0, p0, p4

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D

    .end local p0    # "k1":D
    .end local p4    # "k2":D
    .end local p6    # "q2":D
    move-result-wide v41

    .line 427
    .end local v33    # "ssig":D
    .local v41, "ssig":D
    move-wide/from16 v0, v41

    move-wide v2, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v35

    .line 428
    .end local v27    # "sig":D
    .local v35, "sig":D
    mul-double p0, v12, v14

    mul-double p0, p0, v39

    div-double v37, p0, v41

    .line 430
    .end local v29    # "sinalf":D
    .local v37, "sinalf":D
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    mul-double p4, v37, v37

    sub-double v47, p0, p4

    .line 431
    .local v47, "w":D
    mul-double p4, v47, v47

    .line 432
    .local p4, "t4":D
    mul-double p6, v47, p4

    .line 436
    .local p6, "t6":D
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double p0, p0, p2

    add-double p0, p0, v18

    mul-double p0, p0, v18

    mul-double p0, p0, v47

    const-wide/high16 p10, 0x4010000000000000L    # 4.0

    div-double p0, p0, p10

    sub-double p0, p2, p0

    const-wide/high16 p10, 0x4008000000000000L    # 3.0

    mul-double p10, p10, v20

    .line 437
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v27, 0x4022000000000000L    # 9.0

    mul-double v27, v27, p2

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    div-double v27, v27, v29

    add-double v25, v25, v27

    mul-double p10, p10, v25

    mul-double p10, p10, p4

    const-wide/high16 v25, 0x4030000000000000L    # 16.0

    div-double p10, p10, v25

    .line 436
    add-double p0, p0, p10

    .line 437
    const-wide/high16 p10, 0x4039000000000000L    # 25.0

    mul-double p10, p10, v22

    mul-double p10, p10, p6

    const-wide/high16 v25, 0x4060000000000000L    # 128.0

    div-double p10, p10, v25

    .line 436
    sub-double p10, p0, p10

    .line 438
    .local p10, "ao":D
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double p0, p0, p2

    add-double p0, p0, v18

    mul-double p0, p0, v18

    mul-double p0, p0, v47

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    div-double p0, p0, v25

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v27, 0x4022000000000000L    # 9.0

    mul-double v27, v27, p2

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    div-double v27, v27, v29

    add-double v25, v25, v27

    mul-double v25, v25, v20

    mul-double v25, v25, p4

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    div-double v25, v25, v27

    sub-double p0, p0, v25

    .line 439
    const-wide v25, 0x4052c00000000000L    # 75.0

    mul-double v25, v25, v22

    mul-double v25, v25, p6

    const-wide/high16 v27, 0x4070000000000000L    # 256.0

    div-double v25, v25, v27

    .line 438
    add-double p0, p0, v25

    .line 440
    .local p0, "a2":D
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v27, 0x4022000000000000L    # 9.0

    mul-double v27, v27, p2

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    div-double v27, v27, v29

    add-double v25, v25, v27

    mul-double v25, v25, v20

    mul-double p4, p4, v25

    const-wide/high16 v25, 0x4040000000000000L    # 32.0

    div-double p4, p4, v25

    const-wide/high16 v25, 0x402e000000000000L    # 15.0

    mul-double v25, v25, v22

    mul-double v25, v25, p6

    const-wide/high16 v27, 0x4070000000000000L    # 256.0

    div-double v25, v25, v27

    sub-double p4, p4, v25

    .line 441
    .local p4, "a4":D
    const-wide/high16 v25, 0x4014000000000000L    # 5.0

    mul-double v25, v25, v22

    mul-double p6, p6, v25

    const-wide/high16 v25, 0x4088000000000000L    # 768.0

    div-double p6, p6, v25

    .line 445
    .local p6, "a6":D
    const-wide/16 v25, 0x0

    .line 446
    .local v25, "qo":D
    const-wide v27, 0x3cf6849b86a12b9bL    # 5.0E-15

    cmpl-double v27, v47, v27

    if-lez v27, :cond_8

    .line 447
    const-wide/high16 v25, -0x4000000000000000L    # -2.0

    mul-double v25, v25, v43

    mul-double v25, v25, v45

    div-double v25, v25, v47

    .line 450
    :cond_8
    add-double v25, v25, v8

    .line 451
    .local v25, "q2":D
    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v27, v27, v25

    mul-double v27, v27, v25

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    sub-double v27, v27, v29

    .line 452
    .local v27, "q4":D
    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    mul-double v29, v29, v25

    mul-double v29, v29, v25

    const-wide/high16 v31, 0x4008000000000000L    # 3.0

    sub-double v29, v29, v31

    mul-double v29, v29, v25

    .line 453
    .local v29, "q6":D
    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    mul-double v31, v31, v41

    mul-double v31, v31, v8

    .line 454
    .local v31, "r2":D
    const-wide/high16 v33, 0x4008000000000000L    # 3.0

    const-wide/high16 v49, 0x4010000000000000L    # 4.0

    mul-double v49, v49, v41

    mul-double v49, v49, v41

    sub-double v33, v33, v49

    mul-double v33, v33, v41

    .line 458
    .local v33, "r3":D
    mul-double p10, p10, v35

    mul-double p0, p0, v41

    mul-double p0, p0, v25

    add-double p0, p0, p10

    mul-double p4, p4, v31

    mul-double p4, p4, v27

    add-double p0, p0, p4

    mul-double p4, p6, v33

    mul-double p4, p4, v29

    add-double p0, p0, p4

    mul-double p0, p0, v37

    .line 459
    .local p0, "s":D
    add-double p4, v10, p0

    .line 461
    .local p4, "xz":D
    sub-double p4, p4, p8

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    .end local p4    # "xz":D
    .end local p10    # "ao":D
    move-result-wide p4

    .line 462
    .local p4, "xy":D
    add-double p0, p0, v10

    .line 464
    .end local p8    # "ab":D
    .local p0, "ab":D
    const-wide p6, 0x3d2c25c268497682L    # 5.0E-14

    cmpg-double p4, p4, p6

    if-gez p4, :cond_9

    .end local p4    # "xy":D
    .end local p6    # "a6":D
    move-wide/from16 v20, v33

    .end local v33    # "r3":D
    .local v20, "r3":D
    move-wide/from16 v18, v31

    .end local v31    # "r2":D
    .local v18, "r2":D
    move-wide/from16 p10, v25

    .end local v25    # "q2":D
    .local p10, "q2":D
    move-wide/from16 p4, v47

    .end local v47    # "w":D
    .local p4, "w":D
    move-wide/from16 p2, v8

    .end local v8    # "csig":D
    .local p2, "csig":D
    move-wide/from16 v22, v35

    .end local v35    # "sig":D
    .local v22, "sig":D
    move-wide/from16 p8, v6

    .end local v6    # "clon":D
    .local p8, "clon":D
    move-wide/from16 v8, v29

    .end local v29    # "q6":D
    .local v8, "q6":D
    move-wide/from16 v6, v27

    .end local v27    # "q4":D
    .local v6, "q4":D
    move-wide/from16 v24, v37

    .end local v37    # "sinalf":D
    .local v24, "sinalf":D
    move-wide/from16 v26, v39

    .end local v39    # "slon":D
    .restart local v26    # "slon":D
    move-wide/from16 v28, v41

    .line 465
    .end local v41    # "ssig":D
    .restart local v28    # "ssig":D
    goto/16 :goto_3

    .line 418
    .end local v26    # "slon":D
    .end local v28    # "ssig":D
    .end local p4    # "w":D
    .end local p8    # "clon":D
    .end local p10    # "q2":D
    .local v6, "clon":D
    .local v8, "csig":D
    .local v18, "f2":D
    .local v20, "f3":D
    .local v22, "f4":D
    .local v24, "i":I
    .restart local v25    # "q2":D
    .restart local v27    # "q4":D
    .restart local v29    # "q6":D
    .restart local v31    # "r2":D
    .restart local v33    # "r3":D
    .restart local v35    # "sig":D
    .restart local v37    # "sinalf":D
    .restart local v39    # "slon":D
    .restart local v41    # "ssig":D
    .restart local v47    # "w":D
    .local p2, "f":D
    :cond_9
    add-int/lit8 p4, v24, 0x1

    .end local v24    # "i":I
    .local p4, "i":I
    move/from16 v24, p4

    .end local p4    # "i":I
    .restart local v24    # "i":I
    move-wide/from16 p10, v27

    .end local v27    # "q4":D
    .local p10, "q4":D
    move-wide/from16 p6, v25

    .end local v25    # "q2":D
    .local p6, "q2":D
    move-wide/from16 p8, p0

    .end local p0    # "ab":D
    .local p8, "ab":D
    move-wide/from16 v25, v33

    .end local v33    # "r3":D
    .local v25, "r3":D
    move-wide/from16 p4, v8

    .end local v8    # "csig":D
    .local p4, "csig":D
    move-wide/from16 v27, v35

    .end local v35    # "sig":D
    .local v27, "sig":D
    move-wide/from16 p0, v6

    .end local v6    # "clon":D
    .local p0, "clon":D
    move-wide/from16 v8, v31

    .end local v31    # "r2":D
    .local v8, "r2":D
    move-wide/from16 v35, v47

    .end local v47    # "w":D
    .local v35, "w":D
    move-wide/from16 v33, v41

    .end local v41    # "ssig":D
    .local v33, "ssig":D
    move-wide/from16 v6, v29

    .end local v29    # "q6":D
    .local v6, "q6":D
    move-wide/from16 v29, v37

    .end local v37    # "sinalf":D
    .local v29, "sinalf":D
    move-wide/from16 v31, v39

    .end local v39    # "slon":D
    .local v31, "slon":D
    goto/16 :goto_2

    .line 489
    .end local v16    # "epsq":D
    .end local v25    # "r3":D
    .end local v27    # "sig":D
    .end local v29    # "sinalf":D
    .end local v31    # "slon":D
    .end local v33    # "ssig":D
    .end local v35    # "w":D
    .end local p0    # "clon":D
    .end local p2    # "f":D
    .end local p6    # "q2":D
    .local v6, "q4":D
    .local v8, "q6":D
    .local v18, "r2":D
    .local v20, "r3":D
    .local v22, "sig":D
    .local v24, "sinalf":D
    .restart local v26    # "slon":D
    .restart local v28    # "ssig":D
    .local p4, "s":D
    .local p8, "clon":D
    .local p10, "q2":D
    :cond_a
    const-wide p0, 0x400921fb54442d18L    # Math.PI

    cmpl-double p0, v10, p0

    if-lez p0, :cond_d

    .line 490
    const-wide p0, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v10, v10, p0

    .line 493
    :cond_b
    :goto_5
    const-wide/16 p0, 0x0

    cmpg-double p0, v10, p0

    if-gez p0, :cond_e

    const-wide p0, 0x4012d97c7f3321d2L    # 4.71238898038469

    .line 494
    .local p0, "az1":D
    :goto_6
    const-wide/16 p2, 0x0

    cmpg-double p2, v10, p2

    if-gez p2, :cond_f

    const-wide p2, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 497
    .local p2, "az2":D
    :goto_7
    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->abs(D)D

    move-result-wide p6

    const-wide p10, 0x3cf6849b86a12b9bL    # 5.0E-15

    cmpg-double p6, p6, p10

    if-gez p6, :cond_c

    .end local p10    # "q2":D
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->abs(D)D

    move-result-wide p6

    const-wide p10, 0x3cf6849b86a12b9bL    # 5.0E-15

    cmpg-double p6, p6, p10

    if-ltz p6, :cond_6

    .line 498
    :cond_c
    mul-double p0, v26, v14

    mul-double p2, v45, v12

    mul-double p6, p8, v43

    mul-double p6, p6, v14

    sub-double p2, p2, p6

    div-double p6, p0, p2

    .line 499
    .local p6, "tana1":D
    mul-double p0, v26, v12

    mul-double p2, v43, v14

    mul-double p8, p8, v45

    mul-double p8, p8, v12

    sub-double p2, p2, p8

    div-double p8, p0, p2

    .line 500
    .local p8, "tana2":D
    div-double p0, v24, v12

    .line 501
    .local p0, "sina1":D
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 p2, v0

    div-double p2, p2, v14

    .line 503
    .local p2, "sina2":D
    div-double p6, p0, p6

    move-wide/from16 v0, p0

    move-wide/from16 v2, p6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local p6    # "tana1":D
    move-result-wide p0

    .line 504
    .local p0, "az1":D
    const-wide p6, 0x400921fb54442d18L    # Math.PI

    div-double p8, p2, p8

    move-wide/from16 v0, p2

    move-wide/from16 v2, p8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local p8    # "tana2":D
    move-result-wide p2

    .end local p2    # "sina2":D
    sub-double p2, p6, p2

    .local p2, "az2":D
    goto/16 :goto_4

    .line 491
    .end local p0    # "az1":D
    .end local p2    # "az2":D
    .local p8, "clon":D
    .restart local p10    # "q2":D
    :cond_d
    const-wide p0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double p0, v10, p0

    if-gez p0, :cond_b

    .line 492
    const-wide p0, 0x401921fb54442d18L    # 6.283185307179586

    add-double v10, v10, p0

    goto :goto_5

    .line 493
    :cond_e
    const-wide p0, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_6

    .line 494
    .restart local p0    # "az1":D
    :cond_f
    const-wide p2, 0x4012d97c7f3321d2L    # 4.71238898038469

    goto :goto_7

    .end local v4    # "b":D
    .end local v6    # "q4":D
    .end local v10    # "dlon":D
    .end local v12    # "cu1":D
    .end local v18    # "r2":D
    .end local v20    # "r3":D
    .end local v22    # "sig":D
    .end local v24    # "sinalf":D
    .end local v26    # "slon":D
    .end local v28    # "ssig":D
    .end local v43    # "su1":D
    .end local v45    # "su2":D
    .local v8, "esq":D
    .local v14, "dlon":D
    .local p0, "a":D
    .local p2, "f":D
    .local p4, "p1":D
    .local p6, "e1":D
    .local p8, "p2":D
    .local p10, "e2":D
    :cond_10
    move-wide v10, v14

    .end local v14    # "dlon":D
    .restart local v10    # "dlon":D
    goto/16 :goto_1
.end method

.method private static gpnloa(DDDD)[D
    .locals 25
    .param p0, "a"    # D
    .param p2, "f"    # D
    .param p4, "esq"    # D
    .param p6, "dlon"    # D

    .prologue
    .line 617
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 618
    .local v1, "absDlon":D
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v3, v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, p2

    div-double v7, v3, v5

    .line 622
    .local v7, "cons":D
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    .line 624
    .local v5, "az":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 625
    .local v14, "t1":D
    const-wide/high16 v3, -0x4030000000000000L    # -0.25

    mul-double v3, v3, p2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double v9, v9, p2

    mul-double v11, p2, p2

    add-double/2addr v9, v11

    mul-double v16, v3, v9

    .line 626
    .local v16, "t2":D
    const-wide/high16 v3, 0x3fc8000000000000L    # 0.1875

    mul-double v3, v3, p2

    mul-double v3, v3, p2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x4002000000000000L    # 2.25

    mul-double v11, v11, p2

    add-double/2addr v9, v11

    mul-double v18, v3, v9

    .line 627
    .local v18, "t4":D
    const-wide/high16 v3, -0x4037000000000000L    # -0.1953125

    mul-double v3, v3, p2

    mul-double v3, v3, p2

    mul-double v20, v3, p2

    .line 629
    .local v20, "t6":D
    const-wide/16 v3, 0x0

    .line 630
    .local v3, "ao":D
    const-wide/16 v10, 0x0

    .line 631
    .local v10, "s":D
    const/4 v9, 0x0

    .local v9, "iter":I
    move/from16 v22, v9

    .end local v9    # "iter":I
    .local v22, "iter":I
    move-wide/from16 v23, v10

    .end local v10    # "s":D
    .local v23, "s":D
    move-wide/from16 v9, v23

    .end local v23    # "s":D
    .local v9, "s":D
    move/from16 v11, v22

    .end local v22    # "iter":I
    .local v11, "iter":I
    :goto_0
    const/4 v12, 0x7

    if-lt v11, v12, :cond_0

    move-wide v5, v9

    .line 646
    .end local v9    # "s":D
    .local v5, "s":D
    :goto_1
    move-wide v5, v5

    .line 647
    .local v5, "az1":D
    const-wide/16 v7, 0x0

    cmpg-double p6, p6, v7

    if-gez p6, :cond_2

    .line 648
    .end local v7    # "cons":D
    .end local p6    # "dlon":D
    const-wide p6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double p6, p6, v5

    .line 650
    .end local v5    # "az1":D
    .local p6, "az1":D
    :goto_2
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v5, v5, p6

    .line 655
    .local v5, "az2":D
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v7, v7, p4

    div-double p4, p4, v7

    .line 656
    .local p4, "esqp":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 658
    .local v7, "s":D
    mul-double p4, p4, v7

    mul-double v7, v7, p4

    .line 659
    .local v7, "u2":D
    mul-double v9, v7, v7

    .line 660
    .local v9, "u4":D
    mul-double v11, v9, v7

    .line 661
    .local v11, "u6":D
    mul-double v13, v11, v7

    .line 663
    .end local v14    # "t1":D
    .local v13, "u8":D
    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    .line 664
    .local p4, "t1":D
    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v7, v15

    .line 665
    .end local v16    # "t2":D
    .local v7, "t2":D
    const-wide/high16 v15, -0x4058000000000000L    # -0.046875

    mul-double/2addr v9, v15

    .line 666
    .end local v18    # "t4":D
    .local v9, "t4":D
    const-wide/high16 v15, 0x3f94000000000000L    # 0.01953125

    mul-double/2addr v11, v15

    .line 667
    .end local v20    # "t6":D
    .local v11, "t6":D
    const-wide v15, -0x407a200000000000L    # -0.01068115234375

    mul-double/2addr v13, v15

    .line 669
    .local v13, "t8":D
    add-double p4, p4, v7

    add-double p4, p4, v9

    add-double p4, p4, v11

    add-double p4, p4, v13

    .line 670
    .local p4, "bo":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 674
    .local v7, "s":D
    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, p0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .end local v9    # "t4":D
    .end local v11    # "t6":D
    move-result-wide v7

    .end local v7    # "s":D
    mul-double v7, v7, p2

    mul-double/2addr v3, v7

    sub-double v3, v11, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double p2, v7, p2

    mul-double p2, p2, p4

    sub-double p2, v3, p2

    mul-double p2, p2, v9

    .line 678
    .local p2, "sms":D
    mul-double p0, p0, v1

    .line 679
    .local p0, "equDist":D
    sub-double p0, p0, p2

    .line 681
    .local p0, "geoDist":D
    const/16 p2, 0x3

    move/from16 v0, p2

    new-array v0, v0, [D

    move-object/from16 p2, v0

    .end local v3    # "ao":D
    .end local p2    # "sms":D
    const/16 p3, 0x0

    aput-wide p0, p2, p3

    const/16 p0, 0x1

    aput-wide p6, p2, p0

    .end local p0    # "geoDist":D
    const/16 p0, 0x2

    aput-wide v5, p2, p0

    return-object p2

    .line 632
    .end local v13    # "t8":D
    .restart local v3    # "ao":D
    .local v5, "az":D
    .local v7, "cons":D
    .local v9, "s":D
    .local v11, "iter":I
    .restart local v14    # "t1":D
    .restart local v16    # "t2":D
    .restart local v18    # "t4":D
    .restart local v20    # "t6":D
    .local p0, "a":D
    .local p2, "f":D
    .local p4, "esq":D
    .local p6, "dlon":D
    :cond_0
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 633
    .end local v9    # "s":D
    .local v3, "s":D
    mul-double/2addr v3, v3

    .line 637
    .local v3, "c2":D
    mul-double v9, v16, v3

    add-double/2addr v9, v14

    mul-double v12, v18, v3

    mul-double/2addr v12, v3

    add-double/2addr v9, v12

    mul-double v12, v20, v3

    mul-double/2addr v12, v3

    mul-double/2addr v3, v12

    add-double/2addr v3, v9

    .line 638
    .local v3, "ao":D
    div-double v9, v7, v3

    .line 639
    .local v9, "cs":D
    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    .line 640
    .local v12, "s":D
    sub-double v5, v12, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .end local v5    # "az":D
    move-result-wide v5

    const-wide v9, 0x3d2c25c268497682L    # 5.0E-14

    cmpg-double v5, v5, v9

    if-gez v5, :cond_1

    .end local v9    # "cs":D
    move-wide v5, v12

    .line 641
    .end local v12    # "s":D
    .local v5, "s":D
    goto/16 :goto_1

    .line 643
    .end local v5    # "s":D
    .restart local v12    # "s":D
    :cond_1
    move-wide v5, v12

    .line 631
    .local v5, "az":D
    add-int/lit8 v9, v11, 0x1

    .end local v11    # "iter":I
    .local v9, "iter":I
    move v11, v9

    .end local v9    # "iter":I
    .restart local v11    # "iter":I
    move-wide v9, v12

    .end local v12    # "s":D
    .local v9, "s":D
    goto/16 :goto_0

    .end local v7    # "cons":D
    .end local v9    # "s":D
    .end local p6    # "dlon":D
    .local v5, "az1":D
    :cond_2
    move-wide/from16 p6, v5

    .end local v5    # "az1":D
    .local p6, "az1":D
    goto/16 :goto_2
.end method


# virtual methods
.method public azimuth(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Azimuth;
    .locals 14
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "p2"    # Lorg/hermit/geo/Position;

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/hermit/geo/VincentyCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v12

    .line 159
    .local v12, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    iget-wide v0, v12, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    iget-wide v2, v12, Lorg/hermit/geo/GeoConstants$Ellipsoid;->flat:D

    .line 160
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v6

    .line 161
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v10

    .line 159
    invoke-static/range {v0 .. v11}, Lorg/hermit/geo/VincentyCalculator;->gpnhri(DDDDDD)[D

    move-result-object v13

    .line 163
    .local v13, "ret":[D
    new-instance v0, Lorg/hermit/geo/Azimuth;

    const/4 v1, 0x1

    aget-wide v1, v13, v1

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Azimuth;-><init>(D)V

    return-object v0
.end method

.method public distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
    .locals 14
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "p2"    # Lorg/hermit/geo/Position;

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/hermit/geo/VincentyCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v12

    .line 124
    .local v12, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    iget-wide v0, v12, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    iget-wide v2, v12, Lorg/hermit/geo/GeoConstants$Ellipsoid;->flat:D

    .line 125
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v6

    .line 126
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v10

    .line 124
    invoke-static/range {v0 .. v11}, Lorg/hermit/geo/VincentyCalculator;->gpnhri(DDDDDD)[D

    move-result-object v13

    .line 128
    .local v13, "ret":[D
    new-instance v0, Lorg/hermit/geo/Distance;

    const/4 v1, 0x0

    aget-wide v1, v13, v1

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Distance;-><init>(D)V

    return-object v0
.end method

.method public getAlgorithm()Lorg/hermit/geo/GeoCalculator$Algorithm;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->VINCENTY:Lorg/hermit/geo/GeoCalculator$Algorithm;

    return-object v0
.end method

.method public latDistance(Lorg/hermit/geo/Position;D)Lorg/hermit/geo/Distance;
    .locals 3
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "lat"    # D

    .prologue
    .line 142
    new-instance v0, Lorg/hermit/geo/Position;

    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lorg/hermit/geo/Position;-><init>(DD)V

    .line 143
    .local v0, "p2":Lorg/hermit/geo/Position;
    invoke-virtual {p0, p1, v0}, Lorg/hermit/geo/VincentyCalculator;->distance(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v1

    return-object v1
.end method

.method public offset(Lorg/hermit/geo/Position;Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)Lorg/hermit/geo/Position;
    .locals 14
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "distance"    # Lorg/hermit/geo/Distance;
    .param p3, "azimuth"    # Lorg/hermit/geo/Azimuth;

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/hermit/geo/VincentyCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v12

    .line 204
    .local v12, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v2

    .line 205
    invoke-virtual/range {p3 .. p3}, Lorg/hermit/geo/Azimuth;->getRadians()D

    move-result-wide v4

    .line 206
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Distance;->getMetres()D

    move-result-wide v6

    .line 207
    iget-wide v8, v12, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    iget-wide v10, v12, Lorg/hermit/geo/GeoConstants$Ellipsoid;->flat:D

    .line 204
    invoke-static/range {v0 .. v11}, Lorg/hermit/geo/VincentyCalculator;->dirct1(DDDDDD)[D

    move-result-object v13

    .line 211
    .local v13, "res":[D
    const/4 v0, 0x0

    aget-wide v0, v13, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget-wide v0, v13, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/hermit/geo/Position;

    const/4 v1, 0x0

    aget-wide v1, v13, v1

    const/4 v3, 0x1

    aget-wide v3, v13, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geo/Position;-><init>(DD)V

    goto :goto_0
.end method

.method public vector(Lorg/hermit/geo/Position;Lorg/hermit/geo/Position;)Lorg/hermit/geo/Vector;
    .locals 14
    .param p1, "p1"    # Lorg/hermit/geo/Position;
    .param p2, "p2"    # Lorg/hermit/geo/Position;

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/hermit/geo/VincentyCalculator;->getEllipsoid()Lorg/hermit/geo/GeoConstants$Ellipsoid;

    move-result-object v12

    .line 182
    .local v12, "ellipsoid":Lorg/hermit/geo/GeoConstants$Ellipsoid;
    iget-wide v0, v12, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    iget-wide v2, v12, Lorg/hermit/geo/GeoConstants$Ellipsoid;->flat:D

    .line 183
    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v6

    .line 184
    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lorg/hermit/geo/Position;->getLonRads()D

    move-result-wide v10

    .line 182
    invoke-static/range {v0 .. v11}, Lorg/hermit/geo/VincentyCalculator;->gpnhri(DDDDDD)[D

    move-result-object v13

    .line 186
    .local v13, "ret":[D
    new-instance v0, Lorg/hermit/geo/Vector;

    new-instance v1, Lorg/hermit/geo/Distance;

    const/4 v2, 0x0

    aget-wide v2, v13, v2

    invoke-direct {v1, v2, v3}, Lorg/hermit/geo/Distance;-><init>(D)V

    new-instance v2, Lorg/hermit/geo/Azimuth;

    const/4 v3, 0x1

    aget-wide v3, v13, v3

    invoke-direct {v2, v3, v4}, Lorg/hermit/geo/Azimuth;-><init>(D)V

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/Vector;-><init>(Lorg/hermit/geo/Distance;Lorg/hermit/geo/Azimuth;)V

    return-object v0
.end method
