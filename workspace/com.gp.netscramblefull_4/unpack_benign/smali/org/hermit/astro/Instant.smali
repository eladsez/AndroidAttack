.class public Lorg/hermit/astro/Instant;
.super Ljava/lang/Object;
.source "Instant.java"

# interfaces
.implements Lorg/hermit/astro/AstroConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "astro"


# instance fields
.field private final deltaT:D

.field private final julianDateTd:D

.field private final julianDateUt:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/hermit/astro/Instant;-><init>(J)V

    .line 58
    return-void
.end method

.method public constructor <init>(D)V
    .locals 8
    .param p1, "jd"    # D

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lorg/hermit/astro/Instant;->julianDateUt:D

    .line 70
    iget-wide v1, p0, Lorg/hermit/astro/Instant;->julianDateUt:D

    invoke-static {v1, v2}, Lorg/hermit/astro/Instant;->julianToYmd(D)[D

    move-result-object v0

    .line 71
    .local v0, "ymd":[D
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    double-to-int v1, v1

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x2

    aget-wide v4, v0, v4

    const-wide/high16 v6, 0x403f000000000000L    # 31.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v1, v2, v3}, Lorg/hermit/astro/Instant;->calculateDeltaT(ID)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/hermit/astro/Instant;->deltaT:D

    .line 72
    iget-wide v1, p0, Lorg/hermit/astro/Instant;->julianDateUt:D

    iget-wide v3, p0, Lorg/hermit/astro/Instant;->deltaT:D

    const-wide v5, 0x40f5180000000000L    # 86400.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lorg/hermit/astro/Instant;->julianDateTd:D

    .line 73
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 2
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # D

    .prologue
    .line 98
    invoke-static {p1, p2, p3, p4}, Lorg/hermit/astro/Instant;->ymdToJulian(IID)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/hermit/astro/Instant;-><init>(D)V

    .line 99
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 7
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I
    .param p4, "ho"    # I
    .param p5, "mn"    # I
    .param p6, "se"    # I

    .prologue
    .line 113
    int-to-double v2, p3

    move v0, p1

    move v1, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/hermit/astro/Instant;->ymdToJulian(IIDIII)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/hermit/astro/Instant;-><init>(D)V

    .line 114
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 84
    invoke-static {p1, p2}, Lorg/hermit/astro/Instant;->javaToJulian(J)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/hermit/astro/Instant;-><init>(D)V

    .line 85
    return-void
.end method

.method public static calculateDeltaT(ID)D
    .locals 18
    .param p0, "year"    # I
    .param p1, "month"    # D

    .prologue
    .line 571
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide v2, v0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double p1, p1, v4

    add-double v2, v2, p1

    .line 574
    .local v2, "y":D
    const/16 p1, -0x1f4

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 575
    .end local p1    # "month":D
    const-wide p0, 0x409c700000000000L    # 1820.0

    sub-double p0, v2, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double p0, p0, v2

    .line 576
    .local p0, "u":D
    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    mul-double v4, v4, p0

    mul-double p0, p0, v4

    add-double p0, p0, v2

    .line 685
    .end local v2    # "y":D
    .local p0, "\u0394T":D
    :goto_0
    return-wide p0

    .line 577
    .restart local v2    # "y":D
    .local p0, "year":I
    :cond_0
    const/16 p1, 0x1f4

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 584
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double p0, v2, p0

    .line 585
    .local p0, "u":D
    mul-double v2, p0, p0

    .line 586
    .local v2, "u2":D
    mul-double v4, v2, p0

    .line 587
    .local v4, "u3":D
    mul-double v6, v4, p0

    .line 588
    .local v6, "u4":D
    mul-double v8, v6, p0

    .line 589
    .local v8, "u5":D
    mul-double v10, v8, p0

    .line 590
    .local v10, "u6":D
    const-wide v12, 0x40c4abcccccccccdL    # 10583.6

    const-wide v14, 0x408fb347ae147ae1L    # 1014.41

    mul-double p0, p0, v14

    sub-double p0, v12, p0

    const-wide v12, 0x4040e43cf2cf95d5L    # 33.78311

    mul-double/2addr v2, v12

    add-double p0, p0, v2

    const-wide v2, 0x4017cee6fb4c3c19L    # 5.952053

    mul-double/2addr v2, v4

    sub-double p0, p0, v2

    .line 591
    const-wide v2, 0x3fc7052ae22bd9a3L    # 0.1798452

    mul-double/2addr v2, v6

    .line 590
    sub-double p0, p0, v2

    .line 591
    const-wide v2, 0x3f96b4d4d5d22675L    # 0.022174192

    mul-double/2addr v2, v8

    .line 590
    add-double p0, p0, v2

    .line 591
    const-wide v2, 0x3f827f2fd32fd1fbL    # 0.0090316521

    mul-double/2addr v2, v10

    .line 590
    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto :goto_0

    .line 592
    .end local v4    # "u3":D
    .end local v6    # "u4":D
    .end local v8    # "u5":D
    .end local v10    # "u6":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_1
    const/16 p1, 0x640

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 594
    const-wide p0, 0x408f400000000000L    # 1000.0

    sub-double p0, v2, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double p0, p0, v2

    .line 595
    .local p0, "u":D
    mul-double v2, p0, p0

    .line 596
    .local v2, "u2":D
    mul-double v4, v2, p0

    .line 597
    .restart local v4    # "u3":D
    mul-double v6, v4, p0

    .line 598
    .restart local v6    # "u4":D
    mul-double v8, v6, p0

    .line 599
    .restart local v8    # "u5":D
    mul-double v10, v8, p0

    .line 600
    .restart local v10    # "u6":D
    const-wide v12, 0x409898cccccccccdL    # 1574.2

    const-wide v14, 0x408160147ae147aeL    # 556.01

    mul-double p0, p0, v14

    sub-double p0, v12, p0

    const-wide v12, 0x4051cf05a708ede5L    # 71.23472

    mul-double/2addr v2, v12

    add-double p0, p0, v2

    const-wide v2, 0x3fd4774aba387592L    # 0.319781

    mul-double/2addr v2, v4

    add-double p0, p0, v2

    .line 601
    const-wide v2, 0x3feb36097198c990L    # 0.8503463

    mul-double/2addr v2, v6

    .line 600
    sub-double p0, p0, v2

    .line 601
    const-wide v2, 0x3f74b05af38df91fL    # 0.005050998

    mul-double/2addr v2, v8

    .line 600
    sub-double p0, p0, v2

    .line 601
    const-wide v2, 0x3f811d956050acffL    # 0.0083572073

    mul-double/2addr v2, v10

    .line 600
    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 602
    .end local v4    # "u3":D
    .end local v6    # "u4":D
    .end local v8    # "u5":D
    .end local v10    # "u6":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_2
    const/16 p1, 0x6a4

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 603
    const-wide/high16 p0, 0x4099000000000000L    # 1600.0

    sub-double p0, v2, p0

    .line 604
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 605
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 606
    .local v4, "t3":D
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const-wide v8, 0x3fef62b6ae7d566dL    # 0.9808

    mul-double p0, p0, v8

    sub-double p0, v6, p0

    const-wide v6, 0x3f8f601797cc3a00L    # 0.01532

    mul-double/2addr v2, v6

    sub-double p0, p0, v2

    const-wide v2, 0x40bbd90000000000L    # 7129.0

    div-double v2, v4, v2

    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 607
    .end local v4    # "t3":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_3
    const/16 p1, 0x708

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    .line 608
    const-wide p0, 0x409a900000000000L    # 1700.0

    sub-double p0, v2, p0

    .line 609
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 610
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 611
    .restart local v4    # "t3":D
    mul-double v6, v4, p0

    .line 612
    .local v6, "t4":D
    const-wide v8, 0x4021a8f5c28f5c29L    # 8.83

    const-wide v10, 0x3fc484b5dcc63f14L    # 0.1603

    mul-double p0, p0, v10

    add-double p0, p0, v8

    const-wide v8, 0x3f78487b99d451fcL    # 0.0059285

    mul-double/2addr v2, v8

    sub-double p0, p0, v2

    .line 613
    const-wide v2, 0x3f217ad1ad5c4424L    # 1.3336E-4

    mul-double/2addr v2, v4

    .line 612
    add-double p0, p0, v2

    .line 613
    const-wide v2, 0x4131e9f000000000L    # 1174000.0

    div-double v2, v6, v2

    .line 612
    sub-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 614
    .end local v4    # "t3":D
    .end local v6    # "t4":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_4
    const/16 p1, 0x744

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 615
    const-wide p0, 0x409c200000000000L    # 1800.0

    sub-double p0, v2, p0

    .line 616
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 617
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 618
    .restart local v4    # "t3":D
    mul-double v6, v4, p0

    .line 619
    .restart local v6    # "t4":D
    mul-double v8, v6, p0

    .line 620
    .local v8, "t5":D
    mul-double v10, v8, p0

    .line 621
    .local v10, "t6":D
    mul-double v12, v10, p0

    .line 622
    .local v12, "t7":D
    const-wide v14, 0x402b70a3d70a3d71L    # 13.72

    const-wide v16, 0x3fd546cfc829cfddL    # 0.332447

    mul-double p0, p0, v16

    sub-double p0, v14, p0

    const-wide v14, 0x3f7c1a7d59c7f272L    # 0.0068612

    mul-double/2addr v2, v14

    add-double p0, p0, v2

    const-wide v2, 0x3f70d753388c3888L    # 0.0041116

    mul-double/2addr v2, v4

    add-double p0, p0, v2

    .line 623
    const-wide v2, 0x3f3888b7f4f966b4L    # 3.7436E-4

    mul-double/2addr v2, v6

    .line 622
    sub-double p0, p0, v2

    .line 623
    const-wide v2, 0x3ee96ebdad32184fL    # 1.21272E-5

    mul-double/2addr v2, v8

    .line 622
    add-double p0, p0, v2

    .line 624
    const-wide v2, 0x3e86cdb834585a06L    # 1.699E-7

    mul-double/2addr v2, v10

    .line 622
    sub-double p0, p0, v2

    .line 624
    const-wide v2, 0x3e0e1094d643f784L    # 8.75E-10

    mul-double/2addr v2, v12

    .line 622
    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 625
    .end local v4    # "t3":D
    .end local v6    # "t4":D
    .end local v8    # "t5":D
    .end local v10    # "t6":D
    .end local v12    # "t7":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_5
    const/16 p1, 0x76c

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 626
    const-wide p0, 0x409d100000000000L    # 1860.0

    sub-double p0, v2, p0

    .line 627
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 628
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 629
    .restart local v4    # "t3":D
    mul-double v6, v4, p0

    .line 630
    .restart local v6    # "t4":D
    mul-double v8, v6, p0

    .line 631
    .restart local v8    # "t5":D
    const-wide v10, 0x401e7ae147ae147bL    # 7.62

    const-wide v12, 0x3fe25bc01a36e2ebL    # 0.5737

    mul-double p0, p0, v12

    add-double p0, p0, v10

    const-wide v10, 0x3fd01cbccf28c79fL    # 0.251754

    mul-double/2addr v2, v10

    sub-double p0, p0, v2

    const-wide v2, 0x3f9135c533d13dcbL    # 0.01680668

    mul-double/2addr v2, v4

    add-double p0, p0, v2

    .line 632
    const-wide v2, 0x3f3d517ee0a13922L    # 4.473624E-4

    mul-double/2addr v2, v6

    .line 631
    sub-double p0, p0, v2

    .line 632
    const-wide v2, 0x410c76b000000000L    # 233174.0

    div-double v2, v8, v2

    .line 631
    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 633
    .end local v4    # "t3":D
    .end local v6    # "t4":D
    .end local v8    # "t5":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_6
    const/16 p1, 0x780

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_7

    .line 634
    const-wide p0, 0x409db00000000000L    # 1900.0

    sub-double p0, v2, p0

    .line 635
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 636
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 637
    .restart local v4    # "t3":D
    mul-double v6, v4, p0

    .line 638
    .restart local v6    # "t4":D
    const-wide v8, -0x3ff9ae147ae147aeL    # -2.79

    const-wide v10, 0x3ff7e7e9531550caL    # 1.494119

    mul-double p0, p0, v10

    add-double p0, p0, v8

    const-wide v8, 0x3faeaa69cb75b4b8L    # 0.0598939

    mul-double/2addr v2, v8

    sub-double p0, p0, v2

    .line 639
    const-wide v2, 0x3f79619b258ad404L    # 0.0061966

    mul-double/2addr v2, v4

    .line 638
    add-double p0, p0, v2

    .line 639
    const-wide v2, 0x3f29d2391d57ff9bL    # 1.97E-4

    mul-double/2addr v2, v6

    .line 638
    sub-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 640
    .end local v4    # "t3":D
    .end local v6    # "t4":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_7
    const/16 p1, 0x795

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_8

    .line 641
    const-wide/high16 p0, 0x409e000000000000L    # 1920.0

    sub-double p0, v2, p0

    .line 642
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 643
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 644
    .restart local v4    # "t3":D
    const-wide v6, 0x4035333333333333L    # 21.2

    const-wide v8, 0x3feb09aaa3ad18d2L    # 0.84493

    mul-double p0, p0, v8

    add-double p0, p0, v6

    const-wide v6, 0x3fb37b4a2339c0ecL    # 0.0761

    mul-double/2addr v2, v6

    sub-double p0, p0, v2

    const-wide v2, 0x3f612698f0fd2dbeL    # 0.0020936

    mul-double/2addr v2, v4

    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 645
    .end local v4    # "t3":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_8
    const/16 p1, 0x7a9

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_9

    .line 646
    const-wide p0, 0x409e780000000000L    # 1950.0

    sub-double p0, v2, p0

    .line 647
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 648
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 649
    .restart local v4    # "t3":D
    const-wide v6, 0x403d11eb851eb852L    # 29.07

    const-wide v8, 0x3fda0c49ba5e353fL    # 0.407

    mul-double p0, p0, v8

    add-double p0, p0, v6

    const-wide v6, 0x406d200000000000L    # 233.0

    div-double/2addr v2, v6

    sub-double p0, p0, v2

    const-wide v2, 0x40a3e60000000000L    # 2547.0

    div-double v2, v4, v2

    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 650
    .end local v4    # "t3":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_9
    const/16 p1, 0x7c2

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_a

    .line 651
    const-wide p0, 0x409edc0000000000L    # 1975.0

    sub-double p0, v2, p0

    .line 652
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 653
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 654
    .restart local v4    # "t3":D
    const-wide v6, 0x4046b9999999999aL    # 45.45

    const-wide v8, 0x3ff1126e978d4fdfL    # 1.067

    mul-double p0, p0, v8

    add-double p0, p0, v6

    const-wide v6, 0x4070400000000000L    # 260.0

    div-double/2addr v2, v6

    sub-double p0, p0, v2

    const-wide v2, 0x4086700000000000L    # 718.0

    div-double v2, v4, v2

    sub-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 655
    .end local v4    # "t3":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_a
    const/16 p1, 0x7d5

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_b

    .line 656
    const-wide p0, 0x409f400000000000L    # 2000.0

    sub-double p0, v2, p0

    .line 657
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 658
    .local v2, "t2":D
    mul-double v4, v2, p0

    .line 659
    .restart local v4    # "t3":D
    mul-double v6, v4, p0

    .line 660
    .restart local v6    # "t4":D
    mul-double v8, v6, p0

    .line 661
    .restart local v8    # "t5":D
    const-wide v10, 0x404fee147ae147aeL    # 63.86

    const-wide v12, 0x3fd56872b020c49cL    # 0.3345

    mul-double p0, p0, v12

    add-double p0, p0, v10

    const-wide v10, 0x3faee957470eb24aL    # 0.060374

    mul-double/2addr v2, v10

    sub-double p0, p0, v2

    const-wide v2, 0x3f5c4da9003eea21L    # 0.0017275

    mul-double/2addr v2, v4

    add-double p0, p0, v2

    .line 662
    const-wide v2, 0x3f455bcfe812d6fbL    # 6.51814E-4

    mul-double/2addr v2, v6

    .line 661
    add-double p0, p0, v2

    .line 662
    const-wide v2, 0x3ef8e394d0074513L    # 2.373599E-5

    mul-double/2addr v2, v8

    .line 661
    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 663
    .end local v4    # "t3":D
    .end local v6    # "t4":D
    .end local v8    # "t5":D
    .local v2, "y":D
    .local p0, "year":I
    :cond_b
    const/16 p1, 0x802

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_c

    .line 670
    const-wide p0, 0x409f400000000000L    # 2000.0

    sub-double p0, v2, p0

    .line 671
    .local p0, "t":D
    mul-double v2, p0, p0

    .line 672
    .local v2, "t2":D
    const-wide v4, 0x404f75c28f5c28f6L    # 62.92

    const-wide v6, 0x3fd49e6eeb702603L    # 0.32217

    mul-double p0, p0, v6

    add-double p0, p0, v4

    const-wide v4, 0x3f76e47dc37a3db4L    # 0.005589

    mul-double/2addr v2, v4

    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 673
    .local v2, "y":D
    .local p0, "year":I
    :cond_c
    const/16 p1, 0x866

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_d

    .line 676
    const-wide p0, 0x409c700000000000L    # 1820.0

    sub-double p0, v2, p0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double p0, p0, v4

    .line 677
    .local p0, "u":D
    mul-double p0, p0, p0

    .line 678
    .local p0, "u2":D
    const-wide/high16 v4, -0x3fcc000000000000L    # -20.0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    mul-double p0, p0, v6

    add-double p0, p0, v4

    const-wide v4, 0x3fe2027525460aa6L    # 0.5628

    const-wide v6, 0x40a0cc0000000000L    # 2150.0

    sub-double v2, v6, v2

    mul-double/2addr v2, v4

    sub-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0

    .line 680
    .local p0, "year":I
    :cond_d
    const-wide p0, 0x409c700000000000L    # 1820.0

    sub-double p0, v2, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double p0, p0, v2

    .line 681
    .local p0, "u":D
    mul-double p0, p0, p0

    .line 682
    .local p0, "u2":D
    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    mul-double p0, p0, v4

    add-double p0, p0, v2

    .local p0, "\u0394T":D
    goto/16 :goto_0
.end method

.method public static fromTd(D)Lorg/hermit/astro/Instant;
    .locals 3
    .param p0, "td"    # D

    .prologue
    .line 126
    new-instance v0, Lorg/hermit/astro/Instant;

    invoke-static {p0, p1}, Lorg/hermit/astro/Instant;->tdToUt(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Instant;-><init>(D)V

    return-object v0
.end method

.method public static fromTd(IID)Lorg/hermit/astro/Instant;
    .locals 5
    .param p0, "y"    # I
    .param p1, "m"    # I
    .param p2, "d"    # D

    .prologue
    .line 141
    invoke-static {p0, p1, p2, p3}, Lorg/hermit/astro/Instant;->ymdToJulian(IID)D

    move-result-wide v0

    .line 142
    .local v0, "td":D
    new-instance v2, Lorg/hermit/astro/Instant;

    invoke-static {v0, v1}, Lorg/hermit/astro/Instant;->tdToUt(D)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/hermit/astro/Instant;-><init>(D)V

    return-object v2
.end method

.method public static gstToLst(DD)D
    .locals 10
    .param p0, "GST"    # D
    .param p2, "\u039b"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    .line 474
    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    div-double v0, v4, v6

    .line 475
    .local v0, "H":D
    add-double v4, p0, v0

    rem-double v2, v4, v8

    .line 476
    .local v2, "L":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 477
    add-double/2addr v2, v8

    .line 478
    :cond_0
    return-wide v2
.end method

.method public static gstToUt(DD)D
    .locals 4
    .param p0, "JD"    # D
    .param p2, "GST"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    const-wide v0, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr p0, v0

    .line 447
    .local p0, "S":D
    const-wide v0, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr p0, v0

    .line 448
    .local p0, "T":D
    const-wide v0, 0x401aca1c8e5eb098L    # 6.697374558

    const-wide v2, 0x40a2c01a48b65237L    # 2400.051336

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide v2, 0x3efb1e471b7b0e47L    # 2.5862E-5

    mul-double/2addr v2, p0

    mul-double/2addr p0, v2

    add-double/2addr p0, v0

    .line 449
    .local p0, "T0":D
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    rem-double/2addr p0, v0

    .line 450
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 451
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    add-double/2addr p0, v0

    .line 453
    :cond_0
    sub-double p0, p2, p0

    const-wide/high16 p2, 0x4038000000000000L    # 24.0

    rem-double/2addr p0, p2

    .line 454
    .local p0, "UT":D
    const-wide/16 p2, 0x0

    cmpg-double p2, p0, p2

    if-gez p2, :cond_1

    .line 455
    .end local p2    # "GST":D
    const-wide/high16 p2, 0x4038000000000000L    # 24.0

    add-double/2addr p0, p2

    .line 456
    :cond_1
    const-wide p2, 0x3fefe9a1dd91bf50L    # 0.9972695663

    mul-double/2addr p0, p2

    .line 458
    return-wide p0
.end method

.method public static javaToJulian(J)D
    .locals 6
    .param p0, "time"    # J

    .prologue
    .line 370
    long-to-double v2, p0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    div-double v0, v2, v4

    .line 373
    .local v0, "days":D
    const-wide v2, 0x41429ec5c0000000L    # 2440587.5

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public static julianToJava(D)J
    .locals 6
    .param p0, "julian"    # D

    .prologue
    .line 389
    const-wide v2, 0x41429ec5c0000000L    # 2440587.5

    sub-double v0, p0, v2

    .line 392
    .local v0, "ubase":D
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v0

    const-wide v4, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method public static julianToYmd(D)[D
    .locals 10
    .param p0, "jd"    # D

    .prologue
    .line 332
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    .line 333
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 334
    .local v0, "z":D
    sub-double v6, p0, v0

    .line 337
    .local v6, "f":D
    const-wide p0, 0x41418a8c80000000L    # 2299161.0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    .line 338
    .end local p0    # "jd":D
    move-wide p0, v0

    .line 344
    .end local v0    # "z":D
    .local p0, "a":D
    :goto_0
    const-wide v0, 0x4097d00000000000L    # 1524.0

    add-double/2addr p0, v0

    .line 345
    .local p0, "b":D
    const-wide v0, 0x405e866666666666L    # 122.1

    sub-double v0, p0, v0

    const-wide v2, 0x4076d40000000000L    # 365.25

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 346
    .local v0, "c":D
    const-wide v2, 0x4076d40000000000L    # 365.25

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 347
    .local v2, "d":D
    sub-double v4, p0, v2

    const-wide v8, 0x403e99a027525461L    # 30.6001

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 349
    .local v4, "e":D
    sub-double/2addr p0, v2

    const-wide v2, 0x403e99a027525461L    # 30.6001

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .end local v2    # "d":D
    .end local p0    # "b":D
    move-result-wide v2

    sub-double/2addr p0, v2

    add-double/2addr p0, v6

    .line 350
    .local p0, "day":D
    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    .line 351
    .local v2, "month":D
    :goto_1
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    .end local v4    # "e":D
    const-wide v4, 0x40b26c0000000000L    # 4716.0

    sub-double/2addr v0, v4

    .line 353
    .local v0, "year":D
    :goto_2
    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    .end local v0    # "year":D
    const/4 v0, 0x2

    aput-wide p0, v4, v0

    return-object v4

    .line 340
    .end local v2    # "month":D
    .end local p0    # "day":D
    .local v0, "z":D
    :cond_0
    const-wide p0, 0x413c7dd040000000L    # 1867216.25

    sub-double p0, v0, p0

    const-wide v2, 0x40e1d58800000000L    # 36524.25

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    .line 341
    .local p0, "\u03b1":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .end local v0    # "z":D
    .end local p0    # "\u03b1":D
    move-result-wide p0

    sub-double p0, v0, p0

    .local p0, "a":D
    goto :goto_0

    .line 350
    .local v0, "c":D
    .restart local v4    # "e":D
    .local p0, "day":D
    :cond_1
    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    sub-double v2, v4, v2

    goto :goto_1

    .line 351
    .end local v4    # "e":D
    .restart local v2    # "month":D
    :cond_2
    const-wide v4, 0x40b26b0000000000L    # 4715.0

    sub-double/2addr v0, v4

    goto :goto_2
.end method

.method public static lstToGst(DD)D
    .locals 10
    .param p0, "LST"    # D
    .param p2, "\u039b"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    .line 494
    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    div-double v2, v4, v6

    .line 495
    .local v2, "H":D
    sub-double v4, p0, v2

    rem-double v0, v4, v8

    .line 496
    .local v0, "G":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 497
    add-double/2addr v0, v8

    .line 498
    :cond_0
    return-wide v0
.end method

.method public static tdToUt(D)D
    .locals 10
    .param p0, "jd"    # D

    .prologue
    .line 256
    invoke-static {p0, p1}, Lorg/hermit/astro/Instant;->julianToYmd(D)[D

    move-result-object v0

    .line 259
    .local v0, "ymd":[D
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    double-to-int v3, v3

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    const-wide/high16 v8, 0x403f000000000000L    # 31.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v3, v4, v5}, Lorg/hermit/astro/Instant;->calculateDeltaT(ID)D

    move-result-wide v1

    .line 260
    .local v1, "\u0394T":D
    const-wide v3, 0x40f5180000000000L    # 86400.0

    div-double v3, v1, v3

    sub-double v3, p0, v3

    return-wide v3
.end method

.method public static timeAsHm(Ljava/lang/Double;)Ljava/lang/String;
    .locals 8
    .param p0, "hv"    # Ljava/lang/Double;

    .prologue
    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    .line 513
    if-nez p0, :cond_0

    .line 514
    const-string v4, "--"

    .line 523
    :goto_0
    return-object v4

    .line 516
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    rem-double v0, v4, v6

    .line 517
    .local v0, "h":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    .line 518
    add-double/2addr v0, v6

    .line 520
    :cond_1
    double-to-int v2, v0

    .line 521
    .local v2, "hour":I
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v0

    double-to-int v4, v4

    rem-int/lit8 v3, v4, 0x3c

    .line 523
    .local v3, "min":I
    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static timeAsHms(Ljava/lang/Double;)Ljava/lang/String;
    .locals 9
    .param p0, "hv"    # Ljava/lang/Double;

    .prologue
    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    .line 534
    if-nez p0, :cond_0

    .line 535
    const-string v5, "--"

    .line 545
    :goto_0
    return-object v5

    .line 537
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    rem-double v0, v5, v7

    .line 538
    .local v0, "h":D
    const-wide/16 v5, 0x0

    cmpg-double v5, v0, v5

    if-gez v5, :cond_1

    .line 539
    add-double/2addr v0, v7

    .line 541
    :cond_1
    double-to-int v2, v0

    .line 542
    .local v2, "hour":I
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rem-int/lit8 v3, v5, 0x3c

    .line 543
    .local v3, "min":I
    const-wide v5, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v5, v0

    double-to-float v5, v5

    const/high16 v6, 0x42700000    # 60.0f

    rem-float v4, v5, v6

    .line 545
    .local v4, "sec":F
    const-string v5, "%02d:%02d:%04.1f"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static utToGmst(D)D
    .locals 10
    .param p0, "jd"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    .line 410
    .local v0, "midnight":D
    sub-double/2addr p0, v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double v4, p0, v2

    .line 412
    .local v4, "hour":D
    const-wide p0, 0x4142b42c80000000L    # 2451545.0

    sub-double p0, v0, p0

    .line 413
    .local p0, "d_u":D
    const-wide v0, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr p0, v0

    .line 414
    .local p0, "T_u":D
    mul-double v0, p0, p0

    .line 415
    .local v0, "T_u2":D
    mul-double v2, v0, p0

    .line 418
    .local v2, "T_u3":D
    const-wide v6, 0x40d78ba3192641b3L    # 24110.54841

    const-wide v8, 0x41607ad71a02ff8fL    # 8640184.812866

    mul-double/2addr p0, v8

    add-double/2addr p0, v6

    .line 419
    const-wide v6, 0x3fb7d5a9eb2074ebL    # 0.093104

    mul-double/2addr v0, v6

    .line 418
    add-double/2addr p0, v0

    .line 419
    const-wide v0, 0x3eda013305e6c9ceL    # 6.2E-6

    mul-double/2addr v0, v2

    .line 418
    sub-double/2addr p0, v0

    .line 420
    .local p0, "T0":D
    const-wide v0, 0x40ac200000000000L    # 3600.0

    div-double/2addr p0, v0

    .line 422
    const-wide v0, 0x3ff00b36e7f1e1f2L    # 1.00273790935

    mul-double/2addr v0, v4

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    rem-double/2addr p0, v0

    .line 423
    .local p0, "GMST":D
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 424
    .end local v0    # "T_u2":D
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    add-double/2addr p0, v0

    .line 425
    :cond_0
    return-wide p0
.end method

.method public static utToTd(D)D
    .locals 10
    .param p0, "jd"    # D

    .prologue
    .line 235
    invoke-static {p0, p1}, Lorg/hermit/astro/Instant;->julianToYmd(D)[D

    move-result-object v0

    .line 238
    .local v0, "ymd":[D
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    double-to-int v3, v3

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    const-wide/high16 v8, 0x403f000000000000L    # 31.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v3, v4, v5}, Lorg/hermit/astro/Instant;->calculateDeltaT(ID)D

    move-result-wide v1

    .line 239
    .local v1, "\u0394T":D
    const-wide v3, 0x40f5180000000000L    # 86400.0

    div-double v3, v1, v3

    add-double/2addr v3, p0

    return-wide v3
.end method

.method public static ymdToJulian(IID)D
    .locals 7
    .param p0, "y"    # I
    .param p1, "m"    # I
    .param p2, "d"    # D

    .prologue
    const/4 v4, 0x2

    .line 282
    if-gt p1, v4, :cond_0

    .line 283
    add-int/lit8 p0, p0, -0x1

    .line 284
    add-int/lit8 p1, p1, 0xc

    .line 287
    :cond_0
    int-to-float v2, p0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 288
    .local v0, "a":I
    sub-int v2, v4, v0

    int-to-float v3, v0

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int v1, v2, v3

    .line 290
    .local v1, "b":I
    const-wide v2, 0x4076d40000000000L    # 365.25

    add-int/lit16 v4, p0, 0x126c

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 291
    const-wide v3, 0x403e99a027525461L    # 30.6001

    add-int/lit8 v5, p1, 0x1

    int-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 290
    add-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, p2

    .line 292
    int-to-double v4, v1

    .line 290
    add-double/2addr v2, v4

    .line 292
    const-wide v4, 0x4097d20000000000L    # 1524.5

    .line 290
    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public static ymdToJulian(IIDIII)D
    .locals 8
    .param p0, "y"    # I
    .param p1, "m"    # I
    .param p2, "d"    # D
    .param p4, "ho"    # I
    .param p5, "mn"    # I
    .param p6, "se"    # I

    .prologue
    .line 314
    int-to-double v2, p6

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    int-to-double v4, p5

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    int-to-double v4, p4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    div-double v0, v2, v4

    .line 315
    .local v0, "df":D
    add-double v2, p2, v0

    invoke-static {p0, p1, v2, v3}, Lorg/hermit/astro/Instant;->ymdToJulian(IID)D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public getGmst()D
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/hermit/astro/Instant;->julianDateUt:D

    invoke-static {v0, v1}, Lorg/hermit/astro/Instant;->utToGmst(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getJavaTime()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/hermit/astro/Instant;->julianDateUt:D

    invoke-static {v0, v1}, Lorg/hermit/astro/Instant;->julianToJava(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTd()D
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/hermit/astro/Instant;->julianDateTd:D

    return-wide v0
.end method

.method public getUt()D
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/hermit/astro/Instant;->julianDateUt:D

    return-wide v0
.end method

.method public getYmd()[D
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/hermit/astro/Instant;->julianDateUt:D

    invoke-static {v0, v1}, Lorg/hermit/astro/Instant;->julianToYmd(D)[D

    move-result-object v0

    return-object v0
.end method

.method public getΔT()D
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/hermit/astro/Instant;->deltaT:D

    return-wide v0
.end method
