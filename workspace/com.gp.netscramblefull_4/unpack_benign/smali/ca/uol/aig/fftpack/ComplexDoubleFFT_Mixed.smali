.class Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;
.super Ljava/lang/Object;
.source "ComplexDoubleFFT_Mixed.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cfftb(I[D[D)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "c"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->cfftf1(I[D[DI)V

    .line 557
    return-void
.end method

.method cfftf(I[D[D)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "c"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 548
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->cfftf1(I[D[DI)V

    .line 549
    return-void
.end method

.method cfftf1(I[D[DI)V
    .locals 36
    .param p1, "n"    # I
    .param p2, "c"    # [D
    .param p3, "wtable"    # [D
    .param p4, "isign"    # I

    .prologue
    .line 454
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .line 457
    .local v34, "nac":[I
    mul-int/lit8 v5, p1, 0x2

    new-array v9, v5, [D

    .line 459
    .local v9, "ch":[D
    mul-int/lit8 v29, p1, 0x2

    .line 460
    .local v29, "iw1":I
    mul-int/lit8 v30, p1, 0x4

    .line 461
    .local v30, "iw2":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    mul-int/lit8 v7, p1, 0x2

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v9

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v34, v5

    .line 465
    add-int/lit8 v5, v30, 0x1

    aget-wide v12, p3, v5

    move-wide v0, v12

    double-to-int v0, v0

    move/from16 v35, v0

    .line 466
    .local v35, "nf":I
    const/16 v33, 0x0

    .line 467
    .local v33, "na":I
    const/4 v7, 0x1

    .line 468
    .local v7, "l1":I
    move/from16 v11, v29

    .line 469
    .local v11, "iw":I
    const/16 v31, 0x2

    .local v31, "k1":I
    :goto_0
    add-int/lit8 v5, v35, 0x1

    move/from16 v0, v31

    move v1, v5

    if-le v0, v1, :cond_1

    .line 539
    if-nez v33, :cond_c

    .line 541
    :cond_0
    return-void

    .line 471
    :cond_1
    add-int v5, v31, v30

    aget-wide v12, p3, v5

    move-wide v0, v12

    double-to-int v0, v0

    move/from16 v28, v0

    .line 472
    .local v28, "ip":I
    mul-int v32, v28, v7

    .line 473
    .local v32, "l2":I
    div-int v27, p1, v32

    .line 474
    .local v27, "ido":I
    add-int v6, v27, v27

    .line 475
    .local v6, "idot":I
    mul-int v17, v6, v7

    .line 476
    .local v17, "idl1":I
    const/4 v5, 0x4

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_4

    .line 478
    if-nez v33, :cond_3

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move/from16 v12, p4

    .line 480
    invoke-virtual/range {v5 .. v12}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passf4(II[D[D[DII)V

    .line 486
    .end local v17    # "idl1":I
    :goto_1
    const/4 v5, 0x1

    sub-int v33, v5, v33

    .line 536
    :cond_2
    :goto_2
    move/from16 v7, v32

    .line 537
    const/4 v5, 0x1

    sub-int v5, v28, v5

    mul-int/2addr v5, v6

    add-int/2addr v11, v5

    .line 469
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .restart local v17    # "idl1":I
    :cond_3
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    move/from16 v19, p4

    .line 484
    invoke-virtual/range {v12 .. v19}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passf4(II[D[D[DII)V

    goto :goto_1

    .line 488
    :cond_4
    const/4 v5, 0x2

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_6

    .line 490
    if-nez v33, :cond_5

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move/from16 v12, p4

    .line 492
    invoke-virtual/range {v5 .. v12}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passf2(II[D[D[DII)V

    .line 498
    .end local v17    # "idl1":I
    :goto_3
    const/4 v5, 0x1

    sub-int v33, v5, v33

    goto :goto_2

    .restart local v17    # "idl1":I
    :cond_5
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    move/from16 v19, p4

    .line 496
    invoke-virtual/range {v12 .. v19}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passf2(II[D[D[DII)V

    goto :goto_3

    .line 500
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 502
    if-nez v33, :cond_7

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move/from16 v12, p4

    .line 504
    invoke-virtual/range {v5 .. v12}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passf3(II[D[D[DII)V

    .line 510
    .end local v17    # "idl1":I
    :goto_4
    const/4 v5, 0x1

    sub-int v33, v5, v33

    goto :goto_2

    .restart local v17    # "idl1":I
    :cond_7
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    move/from16 v19, p4

    .line 508
    invoke-virtual/range {v12 .. v19}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passf3(II[D[D[DII)V

    goto :goto_4

    .line 512
    :cond_8
    const/4 v5, 0x5

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_a

    .line 514
    if-nez v33, :cond_9

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move/from16 v12, p4

    .line 516
    invoke-virtual/range {v5 .. v12}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passf5(II[D[D[DII)V

    .line 522
    .end local v17    # "idl1":I
    :goto_5
    const/4 v5, 0x1

    sub-int v33, v5, v33

    goto/16 :goto_2

    .restart local v17    # "idl1":I
    :cond_9
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    move/from16 v19, p4

    .line 520
    invoke-virtual/range {v12 .. v19}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passf5(II[D[D[DII)V

    goto :goto_5

    .line 526
    :cond_a
    if-nez v33, :cond_b

    move-object/from16 v12, p0

    move-object/from16 v13, v34

    move v14, v6

    move/from16 v15, v28

    move/from16 v16, v7

    move-object/from16 v18, p2

    move-object/from16 v19, p2

    move-object/from16 v20, p2

    move-object/from16 v21, v9

    move-object/from16 v22, v9

    move-object/from16 v23, p3

    move/from16 v24, v11

    move/from16 v25, p4

    .line 528
    invoke-virtual/range {v12 .. v25}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passfg([IIIII[D[D[D[D[D[DII)V

    .line 534
    :goto_6
    const/4 v5, 0x0

    aget v5, v34, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    sub-int v33, v5, v33

    goto/16 :goto_2

    :cond_b
    move-object/from16 v12, p0

    move-object/from16 v13, v34

    move v14, v6

    move/from16 v15, v28

    move/from16 v16, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v9

    move-object/from16 v20, v9

    move-object/from16 v21, p2

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move/from16 v24, v11

    move/from16 v25, p4

    .line 532
    invoke-virtual/range {v12 .. v25}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->passfg([IIIII[D[D[D[D[D[DII)V

    goto :goto_6

    .line 540
    .end local v6    # "idot":I
    .end local v17    # "idl1":I
    .end local v27    # "ido":I
    .end local v28    # "ip":I
    .end local v32    # "l2":I
    :cond_c
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_7
    mul-int/lit8 v5, p1, 0x2

    move/from16 v0, v26

    move v1, v5

    if-ge v0, v1, :cond_0

    aget-wide v12, v9, v26

    aput-wide v12, p2, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_7
.end method

.method cffti(I[D)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "wtable"    # [D

    .prologue
    .line 653
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-virtual {p0, p1, p2}, Lca/uol/aig/fftpack/ComplexDoubleFFT_Mixed;->cffti1(I[D)V

    goto :goto_0
.end method

.method cffti1(I[D)V
    .locals 35
    .param p1, "n"    # I
    .param p2, "wtable"    # [D

    .prologue
    .line 565
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    .line 566
    .local v28, "ntryh":[I
    const-wide v29, 0x401921fb54442d18L    # 6.283185307179586

    .line 568
    .local v29, "twopi":D
    const/16 v27, 0x0

    .line 576
    .local v27, "ntry":I
    move/from16 v24, p1

    .line 577
    .local v24, "nl":I
    const/16 v23, 0x0

    .line 578
    .local v23, "nf":I
    const/16 v18, 0x0

    .line 583
    .local v18, "j":I
    :cond_0
    add-int/lit8 v18, v18, 0x1

    .line 584
    const/16 v31, 0x4

    move/from16 v0, v18

    move/from16 v1, v31

    if-gt v0, v1, :cond_3

    .line 585
    const/16 v31, 0x1

    sub-int v31, v18, v31

    aget v27, v28, v31

    .line 590
    :cond_1
    :goto_0
    div-int v25, v24, v27

    .line 591
    .local v25, "nq":I
    mul-int v31, v27, v25

    sub-int v26, v24, v31

    .line 592
    .local v26, "nr":I
    if-nez v26, :cond_0

    .line 593
    add-int/lit8 v23, v23, 0x1

    .line 594
    add-int/lit8 v31, v23, 0x1

    mul-int/lit8 v32, p1, 0x4

    add-int v31, v31, v32

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, p2, v31

    .line 595
    move/from16 v24, v25

    .line 596
    const/16 v31, 0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 598
    const/4 v10, 0x2

    .local v10, "i":I
    :goto_1
    move v0, v10

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 603
    mul-int/lit8 v31, p1, 0x4

    add-int/lit8 v31, v31, 0x2

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    aput-wide v32, p2, v31

    .line 605
    .end local v10    # "i":I
    :cond_2
    const/16 v31, 0x1

    move/from16 v0, v24

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 608
    mul-int/lit8 v31, p1, 0x4

    add-int/lit8 v31, v31, 0x0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, p2, v31

    .line 609
    mul-int/lit8 v31, p1, 0x4

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, p2, v31

    .line 610
    const-wide v31, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v4, v31, v33

    .line 611
    .local v4, "argh":D
    const/4 v10, 0x1

    .line 612
    .restart local v10    # "i":I
    const/16 v20, 0x1

    .line 613
    .local v20, "l1":I
    const/16 v19, 0x1

    .local v19, "k1":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 646
    return-void

    .line 587
    .end local v4    # "argh":D
    .end local v10    # "i":I
    .end local v19    # "k1":I
    .end local v20    # "l1":I
    .end local v25    # "nq":I
    .end local v26    # "nr":I
    :cond_3
    add-int/lit8 v27, v27, 0x2

    goto :goto_0

    .line 600
    .restart local v10    # "i":I
    .restart local v25    # "nq":I
    .restart local v26    # "nr":I
    :cond_4
    sub-int v31, v23, v10

    add-int/lit8 v12, v31, 0x2

    .line 601
    .local v12, "ib":I
    add-int/lit8 v31, v12, 0x1

    mul-int/lit8 v32, p1, 0x4

    add-int v31, v31, v32

    mul-int/lit8 v32, p1, 0x4

    add-int v32, v32, v12

    aget-wide v32, p2, v32

    aput-wide v32, p2, v31

    .line 598
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 615
    .end local v12    # "ib":I
    .restart local v4    # "argh":D
    .restart local v19    # "k1":I
    .restart local v20    # "l1":I
    :cond_5
    add-int/lit8 v31, v19, 0x1

    mul-int/lit8 v32, p1, 0x4

    add-int v31, v31, v32

    aget-wide v31, p2, v31

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v16, v0

    .line 616
    .local v16, "ip":I
    const/16 v22, 0x0

    .line 617
    .local v22, "ld":I
    mul-int v21, v20, v16

    .line 618
    .local v21, "l2":I
    div-int v13, p1, v21

    .line 619
    .local v13, "ido":I
    add-int v31, v13, v13

    add-int/lit8 v14, v31, 0x2

    .line 620
    .local v14, "idot":I
    const/16 v31, 0x1

    sub-int v17, v16, v31

    .line 621
    .local v17, "ipm":I
    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 643
    move/from16 v20, v21

    .line 613
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 623
    :cond_6
    move v11, v10

    .line 624
    .local v11, "i1":I
    const/16 v31, 0x1

    sub-int v31, v10, v31

    mul-int/lit8 v32, p1, 0x2

    add-int v31, v31, v32

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    aput-wide v32, p2, v31

    .line 625
    mul-int/lit8 v31, p1, 0x2

    add-int v31, v31, v10

    const-wide/16 v32, 0x0

    aput-wide v32, p2, v31

    .line 626
    add-int v22, v22, v20

    .line 627
    const-wide/16 v8, 0x0

    .line 628
    .local v8, "fi":D
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v6, v31, v4

    .line 629
    .local v6, "argld":D
    const/4 v15, 0x4

    .local v15, "ii":I
    :goto_4
    if-le v15, v14, :cond_8

    .line 637
    const/16 v31, 0x5

    move/from16 v0, v16

    move/from16 v1, v31

    if-le v0, v1, :cond_7

    .line 639
    const/16 v31, 0x1

    sub-int v31, v11, v31

    mul-int/lit8 v32, p1, 0x2

    add-int v31, v31, v32

    const/16 v32, 0x1

    sub-int v32, v10, v32

    mul-int/lit8 v33, p1, 0x2

    add-int v32, v32, v33

    aget-wide v32, p2, v32

    aput-wide v32, p2, v31

    .line 640
    mul-int/lit8 v31, p1, 0x2

    add-int v31, v31, v11

    mul-int/lit8 v32, p1, 0x2

    add-int v32, v32, v10

    aget-wide v32, p2, v32

    aput-wide v32, p2, v31

    .line 621
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 631
    :cond_8
    add-int/lit8 v10, v10, 0x2

    .line 632
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v31

    .line 633
    mul-double v2, v8, v6

    .line 634
    .local v2, "arg":D
    const/16 v31, 0x1

    sub-int v31, v10, v31

    mul-int/lit8 v32, p1, 0x2

    add-int v31, v31, v32

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    aput-wide v32, p2, v31

    .line 635
    mul-int/lit8 v31, p1, 0x2

    add-int v31, v31, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    aput-wide v32, p2, v31

    .line 629
    add-int/lit8 v15, v15, 0x2

    goto :goto_4

    .line 565
    :array_0
    .array-data 4
        0x3
        0x4
        0x2
        0x5
    .end array-data
.end method

.method passf2(II[D[D[DII)V
    .locals 18
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I
    .param p7, "isign"    # I

    .prologue
    .line 21
    move/from16 v5, p6

    .line 22
    .local v5, "iw1":I
    const/4 v11, 0x2

    move/from16 v0, p1

    move v1, v11

    if-gt v0, v1, :cond_2

    .line 24
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    move v0, v6

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 51
    :cond_0
    return-void

    .line 26
    :cond_1
    mul-int v3, v6, p1

    .line 27
    .local v3, "ah":I
    mul-int/lit8 v11, v6, 0x2

    mul-int v2, v11, p1

    .line 28
    .local v2, "ac":I
    aget-wide v11, p3, v2

    add-int v13, v2, p1

    aget-wide v13, p3, v13

    add-double/2addr v11, v13

    aput-wide v11, p4, v3

    .line 29
    mul-int v11, p1, p2

    add-int/2addr v11, v3

    aget-wide v12, p3, v2

    add-int v14, v2, p1

    aget-wide v14, p3, v14

    sub-double/2addr v12, v14

    aput-wide v12, p4, v11

    .line 30
    add-int/lit8 v11, v3, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-wide v12, p3, v12

    add-int v14, v2, p1

    add-int/lit8 v14, v14, 0x1

    aget-wide v14, p3, v14

    add-double/2addr v12, v14

    aput-wide v12, p4, v11

    .line 31
    mul-int v11, p1, p2

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-wide v12, p3, v12

    add-int v14, v2, p1

    add-int/lit8 v14, v14, 0x1

    aget-wide v14, p3, v14

    sub-double/2addr v12, v14

    aput-wide v12, p4, v11

    .line 24
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "ac":I
    .end local v3    # "ah":I
    .end local v6    # "k":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "k":I
    :goto_1
    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 38
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v11, 0x1

    sub-int v11, p1, v11

    if-lt v4, v11, :cond_3

    .line 36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 40
    :cond_3
    mul-int v11, v6, p1

    add-int v3, v4, v11

    .line 41
    .restart local v3    # "ah":I
    mul-int/lit8 v11, v6, 0x2

    mul-int v11, v11, p1

    add-int v2, v4, v11

    .line 42
    .restart local v2    # "ac":I
    aget-wide v11, p3, v2

    add-int v13, v2, p1

    aget-wide v13, p3, v13

    add-double/2addr v11, v13

    aput-wide v11, p4, v3

    .line 43
    aget-wide v11, p3, v2

    add-int v13, v2, p1

    aget-wide v13, p3, v13

    sub-double v9, v11, v13

    .line 44
    .local v9, "tr2":D
    add-int/lit8 v11, v3, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-wide v12, p3, v12

    add-int/lit8 v14, v2, 0x1

    add-int v14, v14, p1

    aget-wide v14, p3, v14

    add-double/2addr v12, v14

    aput-wide v12, p4, v11

    .line 45
    add-int/lit8 v11, v2, 0x1

    aget-wide v11, p3, v11

    add-int/lit8 v13, v2, 0x1

    add-int v13, v13, p1

    aget-wide v13, p3, v13

    sub-double v7, v11, v13

    .line 46
    .local v7, "ti2":D
    mul-int v11, p2, p1

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x1

    add-int v12, v4, v5

    aget-wide v12, p5, v12

    mul-double/2addr v12, v7

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide v14, v0

    add-int/lit8 v16, v4, 0x1

    add-int v16, v16, v5

    aget-wide v16, p5, v16

    mul-double v14, v14, v16

    mul-double/2addr v14, v9

    add-double/2addr v12, v14

    aput-wide v12, p4, v11

    .line 47
    mul-int v11, p2, p1

    add-int/2addr v11, v3

    add-int v12, v4, v5

    aget-wide v12, p5, v12

    mul-double/2addr v12, v9

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide v14, v0

    add-int/lit8 v16, v4, 0x1

    add-int v16, v16, v5

    aget-wide v16, p5, v16

    mul-double v14, v14, v16

    mul-double/2addr v14, v7

    sub-double/2addr v12, v14

    aput-wide v12, p4, v11

    .line 38
    add-int/lit8 v4, v4, 0x2

    goto :goto_2
.end method

.method passf3(II[D[D[DII)V
    .locals 39
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I
    .param p7, "isign"    # I

    .prologue
    .line 59
    const-wide/high16 v26, -0x4020000000000000L    # -0.5

    .line 60
    .local v26, "taur":D
    const-wide v24, 0x3febb67ae8584caeL    # 0.866025403784439

    .line 65
    .local v24, "taui":D
    move/from16 v21, p6

    .line 66
    .local v21, "iw1":I
    add-int v22, v21, p1

    .line 68
    .local v22, "iw2":I
    const/16 v32, 0x2

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 70
    const/16 v23, 0x1

    .local v23, "k":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    .line 117
    :cond_0
    return-void

    .line 72
    :cond_1
    mul-int/lit8 v32, v23, 0x3

    const/16 v33, 0x2

    sub-int v32, v32, v33

    mul-int v2, v32, p1

    .line 73
    .local v2, "ac":I
    aget-wide v32, p3, v2

    add-int v34, v2, p1

    aget-wide v34, p3, v34

    add-double v30, v32, v34

    .line 74
    .local v30, "tr2":D
    sub-int v32, v2, p1

    aget-wide v32, p3, v32

    const-wide/high16 v34, -0x4020000000000000L    # -0.5

    mul-double v34, v34, v30

    add-double v8, v32, v34

    .line 75
    .local v8, "cr2":D
    const/16 v32, 0x1

    sub-int v32, v23, v32

    mul-int v3, v32, p1

    .line 76
    .local v3, "ah":I
    sub-int v32, v2, p1

    aget-wide v32, p3, v32

    add-double v32, v32, v30

    aput-wide v32, p4, v3

    .line 78
    add-int/lit8 v32, v2, 0x1

    aget-wide v32, p3, v32

    add-int v34, v2, p1

    add-int/lit8 v34, v34, 0x1

    aget-wide v34, p3, v34

    add-double v28, v32, v34

    .line 79
    .local v28, "ti2":D
    sub-int v32, v2, p1

    add-int/lit8 v32, v32, 0x1

    aget-wide v32, p3, v32

    const-wide/high16 v34, -0x4020000000000000L    # -0.5

    mul-double v34, v34, v28

    add-double v4, v32, v34

    .line 80
    .local v4, "ci2":D
    add-int/lit8 v32, v3, 0x1

    sub-int v33, v2, p1

    add-int/lit8 v33, v33, 0x1

    aget-wide v33, p3, v33

    add-double v33, v33, v28

    aput-wide v33, p4, v32

    .line 82
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3febb67ae8584caeL    # 0.866025403784439

    mul-double v32, v32, v34

    aget-wide v34, p3, v2

    add-int v36, v2, p1

    aget-wide v36, p3, v36

    sub-double v34, v34, v36

    mul-double v10, v32, v34

    .line 83
    .local v10, "cr3":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3febb67ae8584caeL    # 0.866025403784439

    mul-double v32, v32, v34

    add-int/lit8 v34, v2, 0x1

    aget-wide v34, p3, v34

    add-int v36, v2, p1

    add-int/lit8 v36, v36, 0x1

    aget-wide v36, p3, v36

    sub-double v34, v34, v36

    mul-double v6, v32, v34

    .line 84
    .local v6, "ci3":D
    mul-int v32, p2, p1

    add-int v32, v32, v3

    sub-double v33, v8, v6

    aput-wide v33, p4, v32

    .line 85
    mul-int/lit8 v32, p2, 0x2

    mul-int v32, v32, p1

    add-int v32, v32, v3

    add-double v33, v8, v6

    aput-wide v33, p4, v32

    .line 86
    mul-int v32, p2, p1

    add-int v32, v32, v3

    add-int/lit8 v32, v32, 0x1

    add-double v33, v4, v10

    aput-wide v33, p4, v32

    .line 87
    mul-int/lit8 v32, p2, 0x2

    mul-int v32, v32, p1

    add-int v32, v32, v3

    add-int/lit8 v32, v32, 0x1

    sub-double v33, v4, v10

    aput-wide v33, p4, v32

    .line 70
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 92
    .end local v2    # "ac":I
    .end local v3    # "ah":I
    .end local v4    # "ci2":D
    .end local v6    # "ci3":D
    .end local v8    # "cr2":D
    .end local v10    # "cr3":D
    .end local v23    # "k":I
    .end local v28    # "ti2":D
    .end local v30    # "tr2":D
    :cond_2
    const/16 v23, 0x1

    .restart local v23    # "k":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, p2

    if-gt v0, v1, :cond_0

    .line 94
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    const/16 v32, 0x1

    sub-int v32, p1, v32

    move/from16 v0, v20

    move/from16 v1, v32

    if-lt v0, v1, :cond_3

    .line 92
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 96
    :cond_3
    mul-int/lit8 v32, v23, 0x3

    const/16 v33, 0x2

    sub-int v32, v32, v33

    mul-int v32, v32, p1

    add-int v2, v20, v32

    .line 97
    .restart local v2    # "ac":I
    aget-wide v32, p3, v2

    add-int v34, v2, p1

    aget-wide v34, p3, v34

    add-double v30, v32, v34

    .line 98
    .restart local v30    # "tr2":D
    sub-int v32, v2, p1

    aget-wide v32, p3, v32

    const-wide/high16 v34, -0x4020000000000000L    # -0.5

    mul-double v34, v34, v30

    add-double v8, v32, v34

    .line 99
    .restart local v8    # "cr2":D
    const/16 v32, 0x1

    sub-int v32, v23, v32

    mul-int v32, v32, p1

    add-int v3, v20, v32

    .line 100
    .restart local v3    # "ah":I
    sub-int v32, v2, p1

    aget-wide v32, p3, v32

    add-double v32, v32, v30

    aput-wide v32, p4, v3

    .line 101
    add-int/lit8 v32, v2, 0x1

    aget-wide v32, p3, v32

    add-int v34, v2, p1

    add-int/lit8 v34, v34, 0x1

    aget-wide v34, p3, v34

    add-double v28, v32, v34

    .line 102
    .restart local v28    # "ti2":D
    sub-int v32, v2, p1

    add-int/lit8 v32, v32, 0x1

    aget-wide v32, p3, v32

    const-wide/high16 v34, -0x4020000000000000L    # -0.5

    mul-double v34, v34, v28

    add-double v4, v32, v34

    .line 103
    .restart local v4    # "ci2":D
    add-int/lit8 v32, v3, 0x1

    sub-int v33, v2, p1

    add-int/lit8 v33, v33, 0x1

    aget-wide v33, p3, v33

    add-double v33, v33, v28

    aput-wide v33, p4, v32

    .line 104
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3febb67ae8584caeL    # 0.866025403784439

    mul-double v32, v32, v34

    aget-wide v34, p3, v2

    add-int v36, v2, p1

    aget-wide v36, p3, v36

    sub-double v34, v34, v36

    mul-double v10, v32, v34

    .line 105
    .restart local v10    # "cr3":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3febb67ae8584caeL    # 0.866025403784439

    mul-double v32, v32, v34

    add-int/lit8 v34, v2, 0x1

    aget-wide v34, p3, v34

    add-int v36, v2, p1

    add-int/lit8 v36, v36, 0x1

    aget-wide v36, p3, v36

    sub-double v34, v34, v36

    mul-double v6, v32, v34

    .line 106
    .restart local v6    # "ci3":D
    sub-double v16, v8, v6

    .line 107
    .local v16, "dr2":D
    add-double v18, v8, v6

    .line 108
    .local v18, "dr3":D
    add-double v12, v4, v10

    .line 109
    .local v12, "di2":D
    sub-double v14, v4, v10

    .line 110
    .local v14, "di3":D
    mul-int v32, p2, p1

    add-int v32, v32, v3

    add-int/lit8 v32, v32, 0x1

    add-int v33, v20, v21

    aget-wide v33, p5, v33

    mul-double v33, v33, v12

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v35, v0

    add-int/lit8 v37, v20, 0x1

    add-int v37, v37, v21

    aget-wide v37, p5, v37

    mul-double v35, v35, v37

    mul-double v35, v35, v16

    add-double v33, v33, v35

    aput-wide v33, p4, v32

    .line 111
    mul-int v32, p2, p1

    add-int v32, v32, v3

    add-int v33, v20, v21

    aget-wide v33, p5, v33

    mul-double v33, v33, v16

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v35, v0

    add-int/lit8 v37, v20, 0x1

    add-int v37, v37, v21

    aget-wide v37, p5, v37

    mul-double v35, v35, v37

    mul-double v35, v35, v12

    sub-double v33, v33, v35

    aput-wide v33, p4, v32

    .line 112
    mul-int/lit8 v32, p2, 0x2

    mul-int v32, v32, p1

    add-int v32, v32, v3

    add-int/lit8 v32, v32, 0x1

    add-int v33, v20, v22

    aget-wide v33, p5, v33

    mul-double v33, v33, v14

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v35, v0

    add-int/lit8 v37, v20, 0x1

    add-int v37, v37, v22

    aget-wide v37, p5, v37

    mul-double v35, v35, v37

    mul-double v35, v35, v18

    add-double v33, v33, v35

    aput-wide v33, p4, v32

    .line 113
    mul-int/lit8 v32, p2, 0x2

    mul-int v32, v32, p1

    add-int v32, v32, v3

    add-int v33, v20, v22

    aget-wide v33, p5, v33

    mul-double v33, v33, v18

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v35, v0

    add-int/lit8 v37, v20, 0x1

    add-int v37, v37, v22

    aget-wide v37, p5, v37

    mul-double v35, v35, v37

    mul-double v35, v35, v14

    sub-double v33, v33, v35

    aput-wide v33, p4, v32

    .line 94
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_2
.end method

.method passf4(II[D[D[DII)V
    .locals 44
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I
    .param p7, "isign"    # I

    .prologue
    .line 128
    move/from16 v17, p6

    .line 129
    .local v17, "iw1":I
    add-int v18, v17, p1

    .line 130
    .local v18, "iw2":I
    add-int v19, v18, p1

    .line 132
    .local v19, "iw3":I
    const/16 v37, 0x2

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    .line 134
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 189
    :cond_0
    return-void

    .line 136
    :cond_1
    mul-int/lit8 v37, v20, 0x4

    mul-int v37, v37, p1

    add-int/lit8 v2, v37, 0x1

    .line 137
    .local v2, "ac":I
    aget-wide v37, p3, v2

    mul-int/lit8 v39, p1, 0x2

    add-int v39, v39, v2

    aget-wide v39, p3, v39

    sub-double v21, v37, v39

    .line 138
    .local v21, "ti1":D
    aget-wide v37, p3, v2

    mul-int/lit8 v39, p1, 0x2

    add-int v39, v39, v2

    aget-wide v39, p3, v39

    add-double v23, v37, v39

    .line 139
    .local v23, "ti2":D
    mul-int/lit8 v37, p1, 0x3

    add-int v37, v37, v2

    aget-wide v37, p3, v37

    add-int v39, v2, p1

    aget-wide v39, p3, v39

    sub-double v35, v37, v39

    .line 140
    .local v35, "tr4":D
    add-int v37, v2, p1

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x3

    add-int v39, v39, v2

    aget-wide v39, p3, v39

    add-double v25, v37, v39

    .line 141
    .local v25, "ti3":D
    const/16 v37, 0x1

    sub-int v37, v2, v37

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x2

    add-int v39, v39, v2

    const/16 v40, 0x1

    sub-int v39, v39, v40

    aget-wide v39, p3, v39

    sub-double v29, v37, v39

    .line 142
    .local v29, "tr1":D
    const/16 v37, 0x1

    sub-int v37, v2, v37

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x2

    add-int v39, v39, v2

    const/16 v40, 0x1

    sub-int v39, v39, v40

    aget-wide v39, p3, v39

    add-double v31, v37, v39

    .line 143
    .local v31, "tr2":D
    add-int v37, v2, p1

    const/16 v38, 0x1

    sub-int v37, v37, v38

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x3

    add-int v39, v39, v2

    const/16 v40, 0x1

    sub-int v39, v39, v40

    aget-wide v39, p3, v39

    sub-double v27, v37, v39

    .line 144
    .local v27, "ti4":D
    add-int v37, v2, p1

    const/16 v38, 0x1

    sub-int v37, v37, v38

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x3

    add-int v39, v39, v2

    const/16 v40, 0x1

    sub-int v39, v39, v40

    aget-wide v39, p3, v39

    add-double v33, v37, v39

    .line 145
    .local v33, "tr3":D
    mul-int v3, v20, p1

    .line 146
    .local v3, "ah":I
    add-double v37, v31, v33

    aput-wide v37, p4, v3

    .line 147
    mul-int/lit8 v37, p2, 0x2

    mul-int v37, v37, p1

    add-int v37, v37, v3

    sub-double v38, v31, v33

    aput-wide v38, p4, v37

    .line 148
    add-int/lit8 v37, v3, 0x1

    add-double v38, v23, v25

    aput-wide v38, p4, v37

    .line 149
    mul-int/lit8 v37, p2, 0x2

    mul-int v37, v37, p1

    add-int v37, v37, v3

    add-int/lit8 v37, v37, 0x1

    sub-double v38, v23, v25

    aput-wide v38, p4, v37

    .line 150
    mul-int v37, p2, p1

    add-int v37, v37, v3

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v38, v38, v35

    add-double v38, v38, v29

    aput-wide v38, p4, v37

    .line 151
    mul-int/lit8 v37, p2, 0x3

    mul-int v37, v37, p1

    add-int v37, v37, v3

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v38, v38, v35

    sub-double v38, v29, v38

    aput-wide v38, p4, v37

    .line 152
    mul-int v37, p2, p1

    add-int v37, v37, v3

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v38, v38, v27

    add-double v38, v38, v21

    aput-wide v38, p4, v37

    .line 153
    mul-int/lit8 v37, p2, 0x3

    mul-int v37, v37, p1

    add-int v37, v37, v3

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v38, v38, v27

    sub-double v38, v21, v38

    aput-wide v38, p4, v37

    .line 134
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 158
    .end local v2    # "ac":I
    .end local v3    # "ah":I
    .end local v20    # "k":I
    .end local v21    # "ti1":D
    .end local v23    # "ti2":D
    .end local v25    # "ti3":D
    .end local v27    # "ti4":D
    .end local v29    # "tr1":D
    .end local v31    # "tr2":D
    .end local v33    # "tr3":D
    .end local v35    # "tr4":D
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "k":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 160
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    const/16 v37, 0x1

    sub-int v37, p1, v37

    move/from16 v0, v16

    move/from16 v1, v37

    if-lt v0, v1, :cond_3

    .line 158
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 162
    :cond_3
    add-int/lit8 v37, v16, 0x1

    mul-int/lit8 v38, v20, 0x4

    mul-int v38, v38, p1

    add-int v2, v37, v38

    .line 163
    .restart local v2    # "ac":I
    aget-wide v37, p3, v2

    mul-int/lit8 v39, p1, 0x2

    add-int v39, v39, v2

    aget-wide v39, p3, v39

    sub-double v21, v37, v39

    .line 164
    .restart local v21    # "ti1":D
    aget-wide v37, p3, v2

    mul-int/lit8 v39, p1, 0x2

    add-int v39, v39, v2

    aget-wide v39, p3, v39

    add-double v23, v37, v39

    .line 165
    .restart local v23    # "ti2":D
    add-int v37, v2, p1

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x3

    add-int v39, v39, v2

    aget-wide v39, p3, v39

    add-double v25, v37, v39

    .line 166
    .restart local v25    # "ti3":D
    mul-int/lit8 v37, p1, 0x3

    add-int v37, v37, v2

    aget-wide v37, p3, v37

    add-int v39, v2, p1

    aget-wide v39, p3, v39

    sub-double v35, v37, v39

    .line 167
    .restart local v35    # "tr4":D
    const/16 v37, 0x1

    sub-int v37, v2, v37

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x2

    add-int v39, v39, v2

    const/16 v40, 0x1

    sub-int v39, v39, v40

    aget-wide v39, p3, v39

    sub-double v29, v37, v39

    .line 168
    .restart local v29    # "tr1":D
    const/16 v37, 0x1

    sub-int v37, v2, v37

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x2

    add-int v39, v39, v2

    const/16 v40, 0x1

    sub-int v39, v39, v40

    aget-wide v39, p3, v39

    add-double v31, v37, v39

    .line 169
    .restart local v31    # "tr2":D
    add-int v37, v2, p1

    const/16 v38, 0x1

    sub-int v37, v37, v38

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x3

    add-int v39, v39, v2

    const/16 v40, 0x1

    sub-int v39, v39, v40

    aget-wide v39, p3, v39

    sub-double v27, v37, v39

    .line 170
    .restart local v27    # "ti4":D
    add-int v37, v2, p1

    const/16 v38, 0x1

    sub-int v37, v37, v38

    aget-wide v37, p3, v37

    mul-int/lit8 v39, p1, 0x3

    add-int v39, v39, v2

    const/16 v40, 0x1

    sub-int v39, v39, v40

    aget-wide v39, p3, v39

    add-double v33, v37, v39

    .line 171
    .restart local v33    # "tr3":D
    mul-int v37, v20, p1

    add-int v3, v16, v37

    .line 172
    .restart local v3    # "ah":I
    add-double v37, v31, v33

    aput-wide v37, p4, v3

    .line 173
    sub-double v12, v31, v33

    .line 174
    .local v12, "cr3":D
    add-int/lit8 v37, v3, 0x1

    add-double v38, v23, v25

    aput-wide v38, p4, v37

    .line 175
    sub-double v6, v23, v25

    .line 176
    .local v6, "ci3":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v37, v0

    mul-double v37, v37, v35

    add-double v10, v29, v37

    .line 177
    .local v10, "cr2":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v37, v0

    mul-double v37, v37, v35

    sub-double v14, v29, v37

    .line 178
    .local v14, "cr4":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v37, v0

    mul-double v37, v37, v27

    add-double v4, v21, v37

    .line 179
    .local v4, "ci2":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v37, v0

    mul-double v37, v37, v27

    sub-double v8, v21, v37

    .line 180
    .local v8, "ci4":D
    mul-int v37, p2, p1

    add-int v37, v37, v3

    add-int v38, v16, v17

    aget-wide v38, p5, v38

    mul-double v38, v38, v10

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v40, v0

    add-int/lit8 v42, v16, 0x1

    add-int v42, v42, v17

    aget-wide v42, p5, v42

    mul-double v40, v40, v42

    mul-double v40, v40, v4

    sub-double v38, v38, v40

    aput-wide v38, p4, v37

    .line 181
    mul-int v37, p2, p1

    add-int v37, v37, v3

    add-int/lit8 v37, v37, 0x1

    add-int v38, v16, v17

    aget-wide v38, p5, v38

    mul-double v38, v38, v4

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v40, v0

    add-int/lit8 v42, v16, 0x1

    add-int v42, v42, v17

    aget-wide v42, p5, v42

    mul-double v40, v40, v42

    mul-double v40, v40, v10

    add-double v38, v38, v40

    aput-wide v38, p4, v37

    .line 182
    mul-int/lit8 v37, p2, 0x2

    mul-int v37, v37, p1

    add-int v37, v37, v3

    add-int v38, v16, v18

    aget-wide v38, p5, v38

    mul-double v38, v38, v12

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v40, v0

    add-int/lit8 v42, v16, 0x1

    add-int v42, v42, v18

    aget-wide v42, p5, v42

    mul-double v40, v40, v42

    mul-double v40, v40, v6

    sub-double v38, v38, v40

    aput-wide v38, p4, v37

    .line 183
    mul-int/lit8 v37, p2, 0x2

    mul-int v37, v37, p1

    add-int v37, v37, v3

    add-int/lit8 v37, v37, 0x1

    add-int v38, v16, v18

    aget-wide v38, p5, v38

    mul-double v38, v38, v6

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v40, v0

    add-int/lit8 v42, v16, 0x1

    add-int v42, v42, v18

    aget-wide v42, p5, v42

    mul-double v40, v40, v42

    mul-double v40, v40, v12

    add-double v38, v38, v40

    aput-wide v38, p4, v37

    .line 184
    mul-int/lit8 v37, p2, 0x3

    mul-int v37, v37, p1

    add-int v37, v37, v3

    add-int v38, v16, v19

    aget-wide v38, p5, v38

    mul-double v38, v38, v14

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v40, v0

    add-int/lit8 v42, v16, 0x1

    add-int v42, v42, v19

    aget-wide v42, p5, v42

    mul-double v40, v40, v42

    mul-double v40, v40, v8

    sub-double v38, v38, v40

    aput-wide v38, p4, v37

    .line 185
    mul-int/lit8 v37, p2, 0x3

    mul-int v37, v37, p1

    add-int v37, v37, v3

    add-int/lit8 v37, v37, 0x1

    add-int v38, v16, v19

    aget-wide v38, p5, v38

    mul-double v38, v38, v8

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v40, v0

    add-int/lit8 v42, v16, 0x1

    add-int v42, v42, v19

    aget-wide v42, p5, v42

    mul-double v40, v40, v42

    mul-double v40, v40, v14

    add-double v38, v38, v40

    aput-wide v38, p4, v37

    .line 160
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_2
.end method

.method passf5(II[D[D[DII)V
    .locals 73
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I
    .param p7, "isign"    # I

    .prologue
    .line 198
    const-wide v54, 0x3fd3c6ef372fe948L    # 0.309016994374947

    .line 199
    .local v54, "tr11":D
    const-wide v42, 0x3fee6f0e13445503L    # 0.951056516295154

    .line 200
    .local v42, "ti11":D
    const-wide v56, -0x40161c8864680b5cL    # -0.809016994374947

    .line 201
    .local v56, "tr12":D
    const-wide v44, 0x3fe2cf2304755a5dL    # 0.587785252292473

    .line 207
    .local v44, "ti12":D
    move/from16 v37, p6

    .line 208
    .local v37, "iw1":I
    add-int v38, v37, p1

    .line 209
    .local v38, "iw2":I
    add-int v39, v38, p1

    .line 210
    .local v39, "iw3":I
    add-int v40, v39, p1

    .line 212
    .local v40, "iw4":I
    const/16 v66, 0x2

    move/from16 v0, p1

    move/from16 v1, v66

    if-ne v0, v1, :cond_2

    .line 214
    const/16 v41, 0x1

    .local v41, "k":I
    :goto_0
    move/from16 v0, v41

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    .line 293
    :cond_0
    return-void

    .line 216
    :cond_1
    mul-int/lit8 v66, v41, 0x5

    const/16 v67, 0x4

    sub-int v66, v66, v67

    mul-int v66, v66, p1

    add-int/lit8 v2, v66, 0x1

    .line 217
    .local v2, "ac":I
    aget-wide v66, p3, v2

    mul-int/lit8 v68, p1, 0x3

    add-int v68, v68, v2

    aget-wide v68, p3, v68

    sub-double v52, v66, v68

    .line 218
    .local v52, "ti5":D
    aget-wide v66, p3, v2

    mul-int/lit8 v68, p1, 0x3

    add-int v68, v68, v2

    aget-wide v68, p3, v68

    add-double v46, v66, v68

    .line 219
    .local v46, "ti2":D
    add-int v66, v2, p1

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x2

    add-int v68, v68, v2

    aget-wide v68, p3, v68

    sub-double v50, v66, v68

    .line 220
    .local v50, "ti4":D
    add-int v66, v2, p1

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x2

    add-int v68, v68, v2

    aget-wide v68, p3, v68

    add-double v48, v66, v68

    .line 221
    .local v48, "ti3":D
    const/16 v66, 0x1

    sub-int v66, v2, v66

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x3

    add-int v68, v68, v2

    const/16 v69, 0x1

    sub-int v68, v68, v69

    aget-wide v68, p3, v68

    sub-double v64, v66, v68

    .line 222
    .local v64, "tr5":D
    const/16 v66, 0x1

    sub-int v66, v2, v66

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x3

    add-int v68, v68, v2

    const/16 v69, 0x1

    sub-int v68, v68, v69

    aget-wide v68, p3, v68

    add-double v58, v66, v68

    .line 223
    .local v58, "tr2":D
    add-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x2

    add-int v68, v68, v2

    const/16 v69, 0x1

    sub-int v68, v68, v69

    aget-wide v68, p3, v68

    sub-double v62, v66, v68

    .line 224
    .local v62, "tr4":D
    add-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x2

    add-int v68, v68, v2

    const/16 v69, 0x1

    sub-int v68, v68, v69

    aget-wide v68, p3, v68

    add-double v60, v66, v68

    .line 225
    .local v60, "tr3":D
    const/16 v66, 0x1

    sub-int v66, v41, v66

    mul-int v3, v66, p1

    .line 226
    .local v3, "ah":I
    sub-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    add-double v66, v66, v58

    add-double v66, v66, v60

    aput-wide v66, p4, v3

    .line 227
    add-int/lit8 v66, v3, 0x1

    sub-int v67, v2, p1

    aget-wide v67, p3, v67

    add-double v67, v67, v46

    add-double v67, v67, v48

    aput-wide v67, p4, v66

    .line 228
    sub-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v58

    add-double v66, v66, v68

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v60

    add-double v12, v66, v68

    .line 229
    .local v12, "cr2":D
    sub-int v66, v2, p1

    aget-wide v66, p3, v66

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v46

    add-double v66, v66, v68

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v48

    add-double v4, v66, v68

    .line 230
    .local v4, "ci2":D
    sub-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v58

    add-double v66, v66, v68

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v60

    add-double v14, v66, v68

    .line 231
    .local v14, "cr3":D
    sub-int v66, v2, p1

    aget-wide v66, p3, v66

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v46

    add-double v66, v66, v68

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v48

    add-double v6, v66, v68

    .line 232
    .local v6, "ci3":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v68, v68, v64

    const-wide v70, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v70, v70, v62

    add-double v68, v68, v70

    mul-double v18, v66, v68

    .line 233
    .local v18, "cr5":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v68, v68, v52

    const-wide v70, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v70, v70, v50

    add-double v68, v68, v70

    mul-double v10, v66, v68

    .line 234
    .local v10, "ci5":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v68, v68, v64

    const-wide v70, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v70, v70, v62

    sub-double v68, v68, v70

    mul-double v16, v66, v68

    .line 235
    .local v16, "cr4":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v68, v68, v52

    const-wide v70, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v70, v70, v50

    sub-double v68, v68, v70

    mul-double v8, v66, v68

    .line 236
    .local v8, "ci4":D
    mul-int v66, p2, p1

    add-int v66, v66, v3

    sub-double v67, v12, v10

    aput-wide v67, p4, v66

    .line 237
    mul-int/lit8 v66, p2, 0x4

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-double v67, v12, v10

    aput-wide v67, p4, v66

    .line 238
    mul-int v66, p2, p1

    add-int v66, v66, v3

    add-int/lit8 v66, v66, 0x1

    add-double v67, v4, v18

    aput-wide v67, p4, v66

    .line 239
    mul-int/lit8 v66, p2, 0x2

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int/lit8 v66, v66, 0x1

    add-double v67, v6, v16

    aput-wide v67, p4, v66

    .line 240
    mul-int/lit8 v66, p2, 0x2

    mul-int v66, v66, p1

    add-int v66, v66, v3

    sub-double v67, v14, v8

    aput-wide v67, p4, v66

    .line 241
    mul-int/lit8 v66, p2, 0x3

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-double v67, v14, v8

    aput-wide v67, p4, v66

    .line 242
    mul-int/lit8 v66, p2, 0x3

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int/lit8 v66, v66, 0x1

    sub-double v67, v6, v16

    aput-wide v67, p4, v66

    .line 243
    mul-int/lit8 v66, p2, 0x4

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int/lit8 v66, v66, 0x1

    sub-double v67, v4, v18

    aput-wide v67, p4, v66

    .line 214
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_0

    .line 248
    .end local v2    # "ac":I
    .end local v3    # "ah":I
    .end local v4    # "ci2":D
    .end local v6    # "ci3":D
    .end local v8    # "ci4":D
    .end local v10    # "ci5":D
    .end local v12    # "cr2":D
    .end local v14    # "cr3":D
    .end local v16    # "cr4":D
    .end local v18    # "cr5":D
    .end local v41    # "k":I
    .end local v46    # "ti2":D
    .end local v48    # "ti3":D
    .end local v50    # "ti4":D
    .end local v52    # "ti5":D
    .end local v58    # "tr2":D
    .end local v60    # "tr3":D
    .end local v62    # "tr4":D
    .end local v64    # "tr5":D
    :cond_2
    const/16 v41, 0x1

    .restart local v41    # "k":I
    :goto_1
    move/from16 v0, v41

    move/from16 v1, p2

    if-gt v0, v1, :cond_0

    .line 250
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_2
    const/16 v66, 0x1

    sub-int v66, p1, v66

    move/from16 v0, v36

    move/from16 v1, v66

    if-lt v0, v1, :cond_3

    .line 248
    add-int/lit8 v41, v41, 0x1

    goto :goto_1

    .line 252
    :cond_3
    add-int/lit8 v66, v36, 0x1

    mul-int/lit8 v67, v41, 0x5

    const/16 v68, 0x4

    sub-int v67, v67, v68

    mul-int v67, v67, p1

    add-int v2, v66, v67

    .line 253
    .restart local v2    # "ac":I
    aget-wide v66, p3, v2

    mul-int/lit8 v68, p1, 0x3

    add-int v68, v68, v2

    aget-wide v68, p3, v68

    sub-double v52, v66, v68

    .line 254
    .restart local v52    # "ti5":D
    aget-wide v66, p3, v2

    mul-int/lit8 v68, p1, 0x3

    add-int v68, v68, v2

    aget-wide v68, p3, v68

    add-double v46, v66, v68

    .line 255
    .restart local v46    # "ti2":D
    add-int v66, v2, p1

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x2

    add-int v68, v68, v2

    aget-wide v68, p3, v68

    sub-double v50, v66, v68

    .line 256
    .restart local v50    # "ti4":D
    add-int v66, v2, p1

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x2

    add-int v68, v68, v2

    aget-wide v68, p3, v68

    add-double v48, v66, v68

    .line 257
    .restart local v48    # "ti3":D
    const/16 v66, 0x1

    sub-int v66, v2, v66

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x3

    add-int v68, v68, v2

    const/16 v69, 0x1

    sub-int v68, v68, v69

    aget-wide v68, p3, v68

    sub-double v64, v66, v68

    .line 258
    .restart local v64    # "tr5":D
    const/16 v66, 0x1

    sub-int v66, v2, v66

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x3

    add-int v68, v68, v2

    const/16 v69, 0x1

    sub-int v68, v68, v69

    aget-wide v68, p3, v68

    add-double v58, v66, v68

    .line 259
    .restart local v58    # "tr2":D
    add-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x2

    add-int v68, v68, v2

    const/16 v69, 0x1

    sub-int v68, v68, v69

    aget-wide v68, p3, v68

    sub-double v62, v66, v68

    .line 260
    .restart local v62    # "tr4":D
    add-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    mul-int/lit8 v68, p1, 0x2

    add-int v68, v68, v2

    const/16 v69, 0x1

    sub-int v68, v68, v69

    aget-wide v68, p3, v68

    add-double v60, v66, v68

    .line 261
    .restart local v60    # "tr3":D
    const/16 v66, 0x1

    sub-int v66, v41, v66

    mul-int v66, v66, p1

    add-int v3, v36, v66

    .line 262
    .restart local v3    # "ah":I
    sub-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    add-double v66, v66, v58

    add-double v66, v66, v60

    aput-wide v66, p4, v3

    .line 263
    add-int/lit8 v66, v3, 0x1

    sub-int v67, v2, p1

    aget-wide v67, p3, v67

    add-double v67, v67, v46

    add-double v67, v67, v48

    aput-wide v67, p4, v66

    .line 264
    sub-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v58

    add-double v66, v66, v68

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v60

    add-double v12, v66, v68

    .line 266
    .restart local v12    # "cr2":D
    sub-int v66, v2, p1

    aget-wide v66, p3, v66

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v46

    add-double v66, v66, v68

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v48

    add-double v4, v66, v68

    .line 267
    .restart local v4    # "ci2":D
    sub-int v66, v2, p1

    const/16 v67, 0x1

    sub-int v66, v66, v67

    aget-wide v66, p3, v66

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v58

    add-double v66, v66, v68

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v60

    add-double v14, v66, v68

    .line 269
    .restart local v14    # "cr3":D
    sub-int v66, v2, p1

    aget-wide v66, p3, v66

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v46

    add-double v66, v66, v68

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v48

    add-double v6, v66, v68

    .line 270
    .restart local v6    # "ci3":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v68, v68, v64

    const-wide v70, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v70, v70, v62

    add-double v68, v68, v70

    mul-double v18, v66, v68

    .line 271
    .restart local v18    # "cr5":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v68, v68, v52

    const-wide v70, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v70, v70, v50

    add-double v68, v68, v70

    mul-double v10, v66, v68

    .line 272
    .restart local v10    # "ci5":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v68, v68, v64

    const-wide v70, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v70, v70, v62

    sub-double v68, v68, v70

    mul-double v16, v66, v68

    .line 273
    .restart local v16    # "cr4":D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v68, v68, v52

    const-wide v70, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v70, v70, v50

    sub-double v68, v68, v70

    mul-double v8, v66, v68

    .line 274
    .restart local v8    # "ci4":D
    sub-double v30, v14, v8

    .line 275
    .local v30, "dr3":D
    add-double v32, v14, v8

    .line 276
    .local v32, "dr4":D
    add-double v22, v6, v16

    .line 277
    .local v22, "di3":D
    sub-double v24, v6, v16

    .line 278
    .local v24, "di4":D
    add-double v34, v12, v10

    .line 279
    .local v34, "dr5":D
    sub-double v28, v12, v10

    .line 280
    .local v28, "dr2":D
    sub-double v26, v4, v18

    .line 281
    .local v26, "di5":D
    add-double v20, v4, v18

    .line 282
    .local v20, "di2":D
    mul-int v66, p2, p1

    add-int v66, v66, v3

    add-int v67, v36, v37

    aget-wide v67, p5, v67

    mul-double v67, v67, v28

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v69, v0

    add-int/lit8 v71, v36, 0x1

    add-int v71, v71, v37

    aget-wide v71, p5, v71

    mul-double v69, v69, v71

    mul-double v69, v69, v20

    sub-double v67, v67, v69

    aput-wide v67, p4, v66

    .line 283
    mul-int v66, p2, p1

    add-int v66, v66, v3

    add-int/lit8 v66, v66, 0x1

    add-int v67, v36, v37

    aget-wide v67, p5, v67

    mul-double v67, v67, v20

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v69, v0

    add-int/lit8 v71, v36, 0x1

    add-int v71, v71, v37

    aget-wide v71, p5, v71

    mul-double v69, v69, v71

    mul-double v69, v69, v28

    add-double v67, v67, v69

    aput-wide v67, p4, v66

    .line 284
    mul-int/lit8 v66, p2, 0x2

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int v67, v36, v38

    aget-wide v67, p5, v67

    mul-double v67, v67, v30

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v69, v0

    add-int/lit8 v71, v36, 0x1

    add-int v71, v71, v38

    aget-wide v71, p5, v71

    mul-double v69, v69, v71

    mul-double v69, v69, v22

    sub-double v67, v67, v69

    aput-wide v67, p4, v66

    .line 285
    mul-int/lit8 v66, p2, 0x2

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int/lit8 v66, v66, 0x1

    add-int v67, v36, v38

    aget-wide v67, p5, v67

    mul-double v67, v67, v22

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v69, v0

    add-int/lit8 v71, v36, 0x1

    add-int v71, v71, v38

    aget-wide v71, p5, v71

    mul-double v69, v69, v71

    mul-double v69, v69, v30

    add-double v67, v67, v69

    aput-wide v67, p4, v66

    .line 286
    mul-int/lit8 v66, p2, 0x3

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int v67, v36, v39

    aget-wide v67, p5, v67

    mul-double v67, v67, v32

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v69, v0

    add-int/lit8 v71, v36, 0x1

    add-int v71, v71, v39

    aget-wide v71, p5, v71

    mul-double v69, v69, v71

    mul-double v69, v69, v24

    sub-double v67, v67, v69

    aput-wide v67, p4, v66

    .line 287
    mul-int/lit8 v66, p2, 0x3

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int/lit8 v66, v66, 0x1

    add-int v67, v36, v39

    aget-wide v67, p5, v67

    mul-double v67, v67, v24

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v69, v0

    add-int/lit8 v71, v36, 0x1

    add-int v71, v71, v39

    aget-wide v71, p5, v71

    mul-double v69, v69, v71

    mul-double v69, v69, v32

    add-double v67, v67, v69

    aput-wide v67, p4, v66

    .line 288
    mul-int/lit8 v66, p2, 0x4

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int v67, v36, v40

    aget-wide v67, p5, v67

    mul-double v67, v67, v34

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v69, v0

    add-int/lit8 v71, v36, 0x1

    add-int v71, v71, v40

    aget-wide v71, p5, v71

    mul-double v69, v69, v71

    mul-double v69, v69, v26

    sub-double v67, v67, v69

    aput-wide v67, p4, v66

    .line 289
    mul-int/lit8 v66, p2, 0x4

    mul-int v66, v66, p1

    add-int v66, v66, v3

    add-int/lit8 v66, v66, 0x1

    add-int v67, v36, v40

    aget-wide v67, p5, v67

    mul-double v67, v67, v26

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v69, v0

    add-int/lit8 v71, v36, 0x1

    add-int v71, v71, v40

    aget-wide v71, p5, v71

    mul-double v69, v69, v71

    mul-double v69, v69, v34

    add-double v67, v67, v69

    aput-wide v67, p4, v66

    .line 250
    add-int/lit8 v36, v36, 0x2

    goto/16 :goto_2
.end method

.method passfg([IIIII[D[D[D[D[D[DII)V
    .locals 29
    .param p1, "nac"    # [I
    .param p2, "ido"    # I
    .param p3, "ip"    # I
    .param p4, "l1"    # I
    .param p5, "idl1"    # I
    .param p6, "cc"    # [D
    .param p7, "c1"    # [D
    .param p8, "c2"    # [D
    .param p9, "ch"    # [D
    .param p10, "ch2"    # [D
    .param p11, "wtable"    # [D
    .param p12, "offset"    # I
    .param p13, "isign"    # I

    .prologue
    .line 307
    move/from16 v12, p12

    .line 308
    .local v12, "iw1":I
    div-int/lit8 v7, p2, 0x2

    .line 309
    .local v7, "idot":I
    add-int/lit8 v22, p3, 0x1

    div-int/lit8 v11, v22, 0x2

    .line 310
    .local v11, "ipph":I
    mul-int v8, p3, p2

    .line 311
    .local v8, "idp":I
    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_7

    .line 313
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_0
    if-lt v13, v11, :cond_2

    .line 325
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_1
    move v0, v15

    move/from16 v1, p4

    if-lt v0, v1, :cond_5

    .line 348
    .end local v15    # "k":I
    :cond_0
    const/16 v22, 0x2

    sub-int v5, v22, p2

    .line 349
    .local v5, "idl":I
    const/4 v10, 0x0

    .line 350
    .local v10, "inc":I
    const/16 v16, 0x1

    .local v16, "l":I
    :goto_2
    move/from16 v0, v16

    move v1, v11

    if-lt v0, v1, :cond_c

    .line 375
    const/4 v13, 0x1

    :goto_3
    if-lt v13, v11, :cond_11

    .line 378
    const/4 v13, 0x1

    :goto_4
    if-lt v13, v11, :cond_13

    .line 389
    const/16 v22, 0x0

    const/16 v23, 0x1

    aput v23, p1, v22

    .line 390
    const/16 v22, 0x2

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 444
    :cond_1
    return-void

    .line 315
    .end local v5    # "idl":I
    .end local v10    # "inc":I
    .end local v16    # "l":I
    :cond_2
    sub-int v14, p3, v13

    .line 316
    .local v14, "jc":I
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_5
    move v0, v15

    move/from16 v1, p4

    if-lt v0, v1, :cond_3

    .line 313
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 318
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    move v0, v2

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    .line 316
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 320
    :cond_4
    mul-int v22, v13, p4

    add-int v22, v22, v15

    mul-int v22, v22, p2

    add-int v22, v22, v2

    mul-int v23, v15, p3

    add-int v23, v23, v13

    mul-int v23, v23, p2

    add-int v23, v23, v2

    aget-wide v23, p6, v23

    mul-int v25, v15, p3

    add-int v25, v25, v14

    mul-int v25, v25, p2

    add-int v25, v25, v2

    aget-wide v25, p6, v25

    add-double v23, v23, v25

    aput-wide v23, p9, v22

    .line 321
    mul-int v22, v14, p4

    add-int v22, v22, v15

    mul-int v22, v22, p2

    add-int v22, v22, v2

    mul-int v23, v15, p3

    add-int v23, v23, v13

    mul-int v23, v23, p2

    add-int v23, v23, v2

    aget-wide v23, p6, v23

    mul-int v25, v15, p3

    add-int v25, v25, v14

    mul-int v25, v25, p2

    add-int v25, v25, v2

    aget-wide v25, p6, v25

    sub-double v23, v23, v25

    aput-wide v23, p9, v22

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 326
    .end local v2    # "i":I
    .end local v14    # "jc":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    move v0, v2

    move/from16 v1, p2

    if-lt v0, v1, :cond_6

    .line 325
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 327
    :cond_6
    mul-int v22, v15, p2

    add-int v22, v22, v2

    mul-int v23, v15, p3

    mul-int v23, v23, p2

    add-int v23, v23, v2

    aget-wide v23, p6, v23

    aput-wide v23, p9, v22

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 331
    .end local v2    # "i":I
    .end local v13    # "j":I
    .end local v15    # "k":I
    :cond_7
    const/4 v13, 0x1

    .restart local v13    # "j":I
    :goto_8
    if-lt v13, v11, :cond_8

    .line 343
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    move v0, v2

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 344
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_a
    move v0, v15

    move/from16 v1, p4

    if-lt v0, v1, :cond_b

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 333
    .end local v2    # "i":I
    .end local v15    # "k":I
    :cond_8
    sub-int v14, p3, v13

    .line 334
    .restart local v14    # "jc":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    move v0, v2

    move/from16 v1, p2

    if-lt v0, v1, :cond_9

    .line 331
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 336
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_c
    move v0, v15

    move/from16 v1, p4

    if-lt v0, v1, :cond_a

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 338
    :cond_a
    mul-int v22, v13, p4

    add-int v22, v22, v15

    mul-int v22, v22, p2

    add-int v22, v22, v2

    mul-int v23, v15, p3

    add-int v23, v23, v13

    mul-int v23, v23, p2

    add-int v23, v23, v2

    aget-wide v23, p6, v23

    mul-int v25, v15, p3

    add-int v25, v25, v14

    mul-int v25, v25, p2

    add-int v25, v25, v2

    aget-wide v25, p6, v25

    add-double v23, v23, v25

    aput-wide v23, p9, v22

    .line 339
    mul-int v22, v14, p4

    add-int v22, v22, v15

    mul-int v22, v22, p2

    add-int v22, v22, v2

    mul-int v23, v15, p3

    add-int v23, v23, v13

    mul-int v23, v23, p2

    add-int v23, v23, v2

    aget-wide v23, p6, v23

    mul-int v25, v15, p3

    add-int v25, v25, v14

    mul-int v25, v25, p2

    add-int v25, v25, v2

    aget-wide v25, p6, v25

    sub-double v23, v23, v25

    aput-wide v23, p9, v22

    .line 336
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 345
    .end local v14    # "jc":I
    :cond_b
    mul-int v22, v15, p2

    add-int v22, v22, v2

    mul-int v23, v15, p3

    mul-int v23, v23, p2

    add-int v23, v23, v2

    aget-wide v23, p6, v23

    aput-wide v23, p9, v22

    .line 344
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 352
    .end local v2    # "i":I
    .end local v15    # "k":I
    .restart local v5    # "idl":I
    .restart local v10    # "inc":I
    .restart local v16    # "l":I
    :cond_c
    sub-int v17, p3, v16

    .line 353
    .local v17, "lc":I
    add-int v5, v5, p2

    .line 354
    const/4 v9, 0x0

    .local v9, "ik":I
    :goto_d
    move v0, v9

    move/from16 v1, p5

    if-lt v0, v1, :cond_d

    .line 359
    move v6, v5

    .line 360
    .local v6, "idlj":I
    add-int v10, v10, p2

    .line 361
    const/4 v13, 0x2

    :goto_e
    if-lt v13, v11, :cond_e

    .line 350
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 356
    .end local v6    # "idlj":I
    :cond_d
    mul-int v22, v16, p5

    add-int v22, v22, v9

    aget-wide v23, p10, v9

    const/16 v25, 0x2

    sub-int v25, v5, v25

    add-int v25, v25, v12

    aget-wide v25, p11, v25

    add-int v27, v9, p5

    aget-wide v27, p10, v27

    mul-double v25, v25, v27

    add-double v23, v23, v25

    aput-wide v23, p8, v22

    .line 357
    mul-int v22, v17, p5

    add-int v22, v22, v9

    move/from16 v0, p13

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const/16 v25, 0x1

    sub-int v25, v5, v25

    add-int v25, v25, v12

    aget-wide v25, p11, v25

    mul-double v23, v23, v25

    const/16 v25, 0x1

    sub-int v25, p3, v25

    mul-int v25, v25, p5

    add-int v25, v25, v9

    aget-wide v25, p10, v25

    mul-double v23, v23, v25

    aput-wide v23, p8, v22

    .line 354
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 363
    .restart local v6    # "idlj":I
    :cond_e
    sub-int v14, p3, v13

    .line 364
    .restart local v14    # "jc":I
    add-int/2addr v6, v10

    .line 365
    if-le v6, v8, :cond_f

    sub-int/2addr v6, v8

    .line 366
    :cond_f
    const/16 v22, 0x2

    sub-int v22, v6, v22

    add-int v22, v22, v12

    aget-wide v20, p11, v22

    .line 367
    .local v20, "war":D
    const/16 v22, 0x1

    sub-int v22, v6, v22

    add-int v22, v22, v12

    aget-wide v18, p11, v22

    .line 368
    .local v18, "wai":D
    const/4 v9, 0x0

    :goto_f
    move v0, v9

    move/from16 v1, p5

    if-lt v0, v1, :cond_10

    .line 361
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 370
    :cond_10
    mul-int v22, v16, p5

    add-int v22, v22, v9

    aget-wide v23, p8, v22

    mul-int v25, v13, p5

    add-int v25, v25, v9

    aget-wide v25, p10, v25

    mul-double v25, v25, v20

    add-double v23, v23, v25

    aput-wide v23, p8, v22

    .line 371
    mul-int v22, v17, p5

    add-int v22, v22, v9

    aget-wide v23, p8, v22

    move/from16 v0, p13

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v25, v25, v18

    mul-int v27, v14, p5

    add-int v27, v27, v9

    aget-wide v27, p10, v27

    mul-double v25, v25, v27

    add-double v23, v23, v25

    aput-wide v23, p8, v22

    .line 368
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 376
    .end local v6    # "idlj":I
    .end local v9    # "ik":I
    .end local v14    # "jc":I
    .end local v17    # "lc":I
    .end local v18    # "wai":D
    .end local v20    # "war":D
    :cond_11
    const/4 v9, 0x0

    .restart local v9    # "ik":I
    :goto_10
    move v0, v9

    move/from16 v1, p5

    if-lt v0, v1, :cond_12

    .line 375
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 377
    :cond_12
    aget-wide v22, p10, v9

    mul-int v24, v13, p5

    add-int v24, v24, v9

    aget-wide v24, p10, v24

    add-double v22, v22, v24

    aput-wide v22, p10, v9

    .line 376
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 380
    .end local v9    # "ik":I
    :cond_13
    sub-int v14, p3, v13

    .line 381
    .restart local v14    # "jc":I
    const/4 v9, 0x1

    .restart local v9    # "ik":I
    :goto_11
    move v0, v9

    move/from16 v1, p5

    if-lt v0, v1, :cond_14

    .line 378
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 383
    :cond_14
    const/16 v22, 0x1

    sub-int v22, v9, v22

    mul-int v23, v13, p5

    add-int v22, v22, v23

    const/16 v23, 0x1

    sub-int v23, v9, v23

    mul-int v24, v13, p5

    add-int v23, v23, v24

    aget-wide v23, p8, v23

    mul-int v25, v14, p5

    add-int v25, v25, v9

    aget-wide v25, p8, v25

    sub-double v23, v23, v25

    aput-wide v23, p10, v22

    .line 384
    const/16 v22, 0x1

    sub-int v22, v9, v22

    mul-int v23, v14, p5

    add-int v22, v22, v23

    const/16 v23, 0x1

    sub-int v23, v9, v23

    mul-int v24, v13, p5

    add-int v23, v23, v24

    aget-wide v23, p8, v23

    mul-int v25, v14, p5

    add-int v25, v25, v9

    aget-wide v25, p8, v25

    add-double v23, v23, v25

    aput-wide v23, p10, v22

    .line 385
    mul-int v22, v13, p5

    add-int v22, v22, v9

    mul-int v23, v13, p5

    add-int v23, v23, v9

    aget-wide v23, p8, v23

    const/16 v25, 0x1

    sub-int v25, v9, v25

    mul-int v26, v14, p5

    add-int v25, v25, v26

    aget-wide v25, p8, v25

    add-double v23, v23, v25

    aput-wide v23, p10, v22

    .line 386
    mul-int v22, v14, p5

    add-int v22, v22, v9

    mul-int v23, v13, p5

    add-int v23, v23, v9

    aget-wide v23, p8, v23

    const/16 v25, 0x1

    sub-int v25, v9, v25

    mul-int v26, v14, p5

    add-int v25, v25, v26

    aget-wide v25, p8, v25

    sub-double v23, v23, v25

    aput-wide v23, p10, v22

    .line 381
    add-int/lit8 v9, v9, 0x2

    goto :goto_11

    .line 391
    .end local v9    # "ik":I
    .end local v14    # "jc":I
    :cond_15
    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, p1, v22

    .line 392
    const/4 v9, 0x0

    .restart local v9    # "ik":I
    :goto_12
    move v0, v9

    move/from16 v1, p5

    if-lt v0, v1, :cond_16

    .line 393
    const/4 v13, 0x1

    :goto_13
    move v0, v13

    move/from16 v1, p3

    if-lt v0, v1, :cond_17

    .line 401
    move v0, v7

    move/from16 v1, p4

    if-gt v0, v1, :cond_1b

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "idij":I
    const/4 v13, 0x1

    :goto_14
    move v0, v13

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 406
    add-int/lit8 v3, v3, 0x2

    .line 407
    const/4 v2, 0x3

    .restart local v2    # "i":I
    :goto_15
    move v0, v2

    move/from16 v1, p2

    if-lt v0, v1, :cond_19

    .line 404
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    .line 392
    .end local v2    # "i":I
    .end local v3    # "idij":I
    :cond_16
    aget-wide v22, p10, v9

    aput-wide v22, p8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 395
    :cond_17
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_16
    move v0, v15

    move/from16 v1, p4

    if-lt v0, v1, :cond_18

    .line 393
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 397
    :cond_18
    mul-int v22, v13, p4

    add-int v22, v22, v15

    mul-int v22, v22, p2

    add-int/lit8 v22, v22, 0x0

    mul-int v23, v13, p4

    add-int v23, v23, v15

    mul-int v23, v23, p2

    add-int/lit8 v23, v23, 0x0

    aget-wide v23, p9, v23

    aput-wide v23, p7, v22

    .line 398
    mul-int v22, v13, p4

    add-int v22, v22, v15

    mul-int v22, v22, p2

    add-int/lit8 v22, v22, 0x1

    mul-int v23, v13, p4

    add-int v23, v23, v15

    mul-int v23, v23, p2

    add-int/lit8 v23, v23, 0x1

    aget-wide v23, p9, v23

    aput-wide v23, p7, v22

    .line 395
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 409
    .end local v15    # "k":I
    .restart local v2    # "i":I
    .restart local v3    # "idij":I
    :cond_19
    add-int/lit8 v3, v3, 0x2

    .line 410
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_17
    move v0, v15

    move/from16 v1, p4

    if-lt v0, v1, :cond_1a

    .line 407
    add-int/lit8 v2, v2, 0x2

    goto :goto_15

    .line 412
    :cond_1a
    const/16 v22, 0x1

    sub-int v22, v2, v22

    mul-int v23, v13, p4

    add-int v23, v23, v15

    mul-int v23, v23, p2

    add-int v22, v22, v23

    .line 413
    const/16 v23, 0x2

    sub-int v23, v3, v23

    add-int v23, v23, v12

    aget-wide v23, p11, v23

    const/16 v25, 0x1

    sub-int v25, v2, v25

    mul-int v26, v13, p4

    add-int v26, v26, v15

    mul-int v26, v26, p2

    add-int v25, v25, v26

    aget-wide v25, p9, v25

    mul-double v23, v23, v25

    .line 414
    move/from16 v0, p13

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x1

    sub-int v27, v3, v27

    add-int v27, v27, v12

    aget-wide v27, p11, v27

    mul-double v25, v25, v27

    mul-int v27, v13, p4

    add-int v27, v27, v15

    mul-int v27, v27, p2

    add-int v27, v27, v2

    aget-wide v27, p9, v27

    mul-double v25, v25, v27

    .line 413
    sub-double v23, v23, v25

    .line 412
    aput-wide v23, p7, v22

    .line 415
    mul-int v22, v13, p4

    add-int v22, v22, v15

    mul-int v22, v22, p2

    add-int v22, v22, v2

    .line 416
    const/16 v23, 0x2

    sub-int v23, v3, v23

    add-int v23, v23, v12

    aget-wide v23, p11, v23

    mul-int v25, v13, p4

    add-int v25, v25, v15

    mul-int v25, v25, p2

    add-int v25, v25, v2

    aget-wide v25, p9, v25

    mul-double v23, v23, v25

    .line 417
    move/from16 v0, p13

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x1

    sub-int v27, v3, v27

    add-int v27, v27, v12

    aget-wide v27, p11, v27

    mul-double v25, v25, v27

    const/16 v27, 0x1

    sub-int v27, v2, v27

    mul-int v28, v13, p4

    add-int v28, v28, v15

    mul-int v28, v28, p2

    add-int v27, v27, v28

    aget-wide v27, p9, v27

    mul-double v25, v25, v27

    .line 416
    add-double v23, v23, v25

    .line 415
    aput-wide v23, p7, v22

    .line 410
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_17

    .line 424
    .end local v2    # "i":I
    .end local v3    # "idij":I
    .end local v15    # "k":I
    :cond_1b
    const/16 v22, 0x2

    sub-int v4, v22, p2

    .line 425
    .local v4, "idj":I
    const/4 v13, 0x1

    :goto_18
    move v0, v13

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 427
    add-int v4, v4, p2

    .line 428
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_19
    move v0, v15

    move/from16 v1, p4

    if-lt v0, v1, :cond_1c

    .line 425
    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    .line 430
    :cond_1c
    move v3, v4

    .line 431
    .restart local v3    # "idij":I
    const/4 v2, 0x3

    .restart local v2    # "i":I
    :goto_1a
    move v0, v2

    move/from16 v1, p2

    if-lt v0, v1, :cond_1d

    .line 428
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    .line 433
    :cond_1d
    add-int/lit8 v3, v3, 0x2

    .line 434
    const/16 v22, 0x1

    sub-int v22, v2, v22

    mul-int v23, v13, p4

    add-int v23, v23, v15

    mul-int v23, v23, p2

    add-int v22, v22, v23

    .line 435
    const/16 v23, 0x2

    sub-int v23, v3, v23

    add-int v23, v23, v12

    aget-wide v23, p11, v23

    const/16 v25, 0x1

    sub-int v25, v2, v25

    mul-int v26, v13, p4

    add-int v26, v26, v15

    mul-int v26, v26, p2

    add-int v25, v25, v26

    aget-wide v25, p9, v25

    mul-double v23, v23, v25

    .line 436
    move/from16 v0, p13

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x1

    sub-int v27, v3, v27

    add-int v27, v27, v12

    aget-wide v27, p11, v27

    mul-double v25, v25, v27

    mul-int v27, v13, p4

    add-int v27, v27, v15

    mul-int v27, v27, p2

    add-int v27, v27, v2

    aget-wide v27, p9, v27

    mul-double v25, v25, v27

    .line 435
    sub-double v23, v23, v25

    .line 434
    aput-wide v23, p7, v22

    .line 437
    mul-int v22, v13, p4

    add-int v22, v22, v15

    mul-int v22, v22, p2

    add-int v22, v22, v2

    .line 438
    const/16 v23, 0x2

    sub-int v23, v3, v23

    add-int v23, v23, v12

    aget-wide v23, p11, v23

    mul-int v25, v13, p4

    add-int v25, v25, v15

    mul-int v25, v25, p2

    add-int v25, v25, v2

    aget-wide v25, p9, v25

    mul-double v23, v23, v25

    .line 439
    move/from16 v0, p13

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x1

    sub-int v27, v3, v27

    add-int v27, v27, v12

    aget-wide v27, p11, v27

    mul-double v25, v25, v27

    const/16 v27, 0x1

    sub-int v27, v2, v27

    mul-int v28, v13, p4

    add-int v28, v28, v15

    mul-int v28, v28, p2

    add-int v27, v27, v28

    aget-wide v27, p9, v27

    mul-double v25, v25, v27

    .line 438
    add-double v23, v23, v25

    .line 437
    aput-wide v23, p7, v22

    .line 431
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1a
.end method
