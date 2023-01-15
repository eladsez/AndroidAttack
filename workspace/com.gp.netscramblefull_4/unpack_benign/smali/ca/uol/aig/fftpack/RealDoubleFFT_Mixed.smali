.class Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;
.super Ljava/lang/Object;
.source "RealDoubleFFT_Mixed.java"


# static fields
.field private static final NTRY_H:[I

.field private static final SQRT_2:D = 1.414213562373095

.field private static final TAU_I:D = 0.866025403784439

.field private static final TAU_R:D = -0.5

.field private static final TWO_PI:D = 6.283185307179586


# instance fields
.field private tempData:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->NTRY_H:[I

    .line 9
    return-void

    .line 1251
    nop

    :array_0
    .array-data 4
        0x4
        0x2
        0x3
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->tempData:[D

    .line 9
    return-void
.end method

.method private radb2(II[D[D[DI)V
    .locals 13
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 791
    move/from16 v2, p6

    .line 793
    .local v2, "iw1":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-lt v3, p2, :cond_1

    .line 798
    const/4 v8, 0x2

    if-ge p1, v8, :cond_2

    .line 821
    :cond_0
    return-void

    .line 795
    :cond_1
    mul-int v8, v3, p1

    mul-int/lit8 v9, v3, 0x2

    mul-int/2addr v9, p1

    aget-wide v9, p3, v9

    const/4 v11, 0x1

    sub-int v11, p1, v11

    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, p1

    add-int/2addr v11, v12

    aget-wide v11, p3, v11

    add-double/2addr v9, v11

    aput-wide v9, p4, v8

    .line 796
    add-int v8, v3, p2

    mul-int/2addr v8, p1

    mul-int/lit8 v9, v3, 0x2

    mul-int/2addr v9, p1

    aget-wide v9, p3, v9

    const/4 v11, 0x1

    sub-int v11, p1, v11

    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, p1

    add-int/2addr v11, v12

    aget-wide v11, p3, v11

    sub-double/2addr v9, v11

    aput-wide v9, p4, v8

    .line 793
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 799
    :cond_2
    const/4 v8, 0x2

    if-eq p1, v8, :cond_3

    .line 801
    const/4 v3, 0x0

    :goto_1
    if-lt v3, p2, :cond_4

    .line 814
    rem-int/lit8 v8, p1, 0x2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 816
    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_0

    .line 818
    const/4 v8, 0x1

    sub-int v8, p1, v8

    mul-int v9, v3, p1

    add-int/2addr v8, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v11, 0x1

    sub-int v11, p1, v11

    mul-int/lit8 v12, v3, 0x2

    mul-int/2addr v12, p1

    add-int/2addr v11, v12

    aget-wide v11, p3, v11

    mul-double/2addr v9, v11

    aput-wide v9, p4, v8

    .line 819
    const/4 v8, 0x1

    sub-int v8, p1, v8

    add-int v9, v3, p2

    mul-int/2addr v9, p1

    add-int/2addr v8, v9

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v11, p1

    aget-wide v11, p3, v11

    mul-double/2addr v9, v11

    aput-wide v9, p4, v8

    .line 816
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 803
    :cond_4
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_3
    if-lt v0, p1, :cond_5

    .line 801
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 805
    :cond_5
    sub-int v1, p1, v0

    .line 806
    .local v1, "ic":I
    const/4 v8, 0x1

    sub-int v8, v0, v8

    mul-int v9, v3, p1

    add-int/2addr v8, v9

    const/4 v9, 0x1

    sub-int v9, v0, v9

    mul-int/lit8 v10, v3, 0x2

    mul-int/2addr v10, p1

    add-int/2addr v9, v10

    aget-wide v9, p3, v9

    const/4 v11, 0x1

    sub-int v11, v1, v11

    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, p1

    add-int/2addr v11, v12

    aget-wide v11, p3, v11

    add-double/2addr v9, v11

    aput-wide v9, p4, v8

    .line 807
    const/4 v8, 0x1

    sub-int v8, v0, v8

    mul-int/lit8 v9, v3, 0x2

    mul-int/2addr v9, p1

    add-int/2addr v8, v9

    aget-wide v8, p3, v8

    const/4 v10, 0x1

    sub-int v10, v1, v10

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v11, p1

    add-int/2addr v10, v11

    aget-wide v10, p3, v10

    sub-double v6, v8, v10

    .line 808
    .local v6, "tr2":D
    mul-int v8, v3, p1

    add-int/2addr v8, v0

    mul-int/lit8 v9, v3, 0x2

    mul-int/2addr v9, p1

    add-int/2addr v9, v0

    aget-wide v9, p3, v9

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v11, p1

    add-int/2addr v11, v1

    aget-wide v11, p3, v11

    sub-double/2addr v9, v11

    aput-wide v9, p4, v8

    .line 809
    mul-int/lit8 v8, v3, 0x2

    mul-int/2addr v8, p1

    add-int/2addr v8, v0

    aget-wide v8, p3, v8

    mul-int/lit8 v10, v3, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v10, p1

    add-int/2addr v10, v1

    aget-wide v10, p3, v10

    add-double v4, v8, v10

    .line 810
    .local v4, "ti2":D
    const/4 v8, 0x1

    sub-int v8, v0, v8

    add-int v9, v3, p2

    mul-int/2addr v9, p1

    add-int/2addr v8, v9

    const/4 v9, 0x2

    sub-int v9, v0, v9

    add-int/2addr v9, v2

    aget-wide v9, p5, v9

    mul-double/2addr v9, v6

    const/4 v11, 0x1

    sub-int v11, v0, v11

    add-int/2addr v11, v2

    aget-wide v11, p5, v11

    mul-double/2addr v11, v4

    sub-double/2addr v9, v11

    aput-wide v9, p4, v8

    .line 811
    add-int v8, v3, p2

    mul-int/2addr v8, p1

    add-int/2addr v8, v0

    const/4 v9, 0x2

    sub-int v9, v0, v9

    add-int/2addr v9, v2

    aget-wide v9, p5, v9

    mul-double/2addr v9, v4

    const/4 v11, 0x1

    sub-int v11, v0, v11

    add-int/2addr v11, v2

    aget-wide v11, p5, v11

    mul-double/2addr v11, v6

    add-double/2addr v9, v11

    aput-wide v9, p4, v8

    .line 803
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_3
.end method

.method private radb3(II[D[D[DI)V
    .locals 33
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 881
    move/from16 v20, p6

    .line 882
    .local v20, "iw1":I
    add-int v21, v20, p1

    .line 884
    .local v21, "iw2":I
    const/16 v22, 0x0

    .local v22, "k":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 893
    const/16 v27, 0x1

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 921
    :cond_0
    return-void

    .line 886
    :cond_1
    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    const/16 v29, 0x1

    sub-int v29, p1, v29

    mul-int/lit8 v30, v22, 0x3

    add-int/lit8 v30, v30, 0x1

    mul-int v30, v30, p1

    add-int v29, v29, v30

    aget-wide v29, p3, v29

    mul-double v25, v27, v29

    .line 887
    .local v25, "tr2":D
    mul-int/lit8 v27, v22, 0x3

    mul-int v27, v27, p1

    aget-wide v27, p3, v27

    const-wide/high16 v29, -0x4020000000000000L    # -0.5

    mul-double v29, v29, v25

    add-double v6, v27, v29

    .line 888
    .local v6, "cr2":D
    mul-int v27, v22, p1

    mul-int/lit8 v28, v22, 0x3

    mul-int v28, v28, p1

    aget-wide v28, p3, v28

    add-double v28, v28, v25

    aput-wide v28, p4, v27

    .line 889
    const-wide v27, 0x3ffbb67ae8584caeL    # 1.732050807568878

    mul-int/lit8 v29, v22, 0x3

    add-int/lit8 v29, v29, 0x2

    mul-int v29, v29, p1

    aget-wide v29, p3, v29

    mul-double v4, v27, v29

    .line 890
    .local v4, "ci3":D
    add-int v27, v22, p2

    mul-int v27, v27, p1

    sub-double v28, v6, v4

    aput-wide v28, p4, v27

    .line 891
    mul-int/lit8 v27, p2, 0x2

    add-int v27, v27, v22

    mul-int v27, v27, p1

    add-double v28, v6, v4

    aput-wide v28, p4, v27

    .line 884
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 894
    .end local v4    # "ci3":D
    .end local v6    # "cr2":D
    .end local v25    # "tr2":D
    :cond_2
    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 896
    const/16 v18, 0x2

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 894
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 898
    :cond_3
    sub-int v19, p1, v18

    .line 899
    .local v19, "ic":I
    const/16 v27, 0x1

    sub-int v27, v18, v27

    mul-int/lit8 v28, v22, 0x3

    add-int/lit8 v28, v28, 0x2

    mul-int v28, v28, p1

    add-int v27, v27, v28

    aget-wide v27, p3, v27

    const/16 v29, 0x1

    sub-int v29, v19, v29

    mul-int/lit8 v30, v22, 0x3

    add-int/lit8 v30, v30, 0x1

    mul-int v30, v30, p1

    add-int v29, v29, v30

    aget-wide v29, p3, v29

    add-double v25, v27, v29

    .line 900
    .restart local v25    # "tr2":D
    const/16 v27, 0x1

    sub-int v27, v18, v27

    mul-int/lit8 v28, v22, 0x3

    mul-int v28, v28, p1

    add-int v27, v27, v28

    aget-wide v27, p3, v27

    const-wide/high16 v29, -0x4020000000000000L    # -0.5

    mul-double v29, v29, v25

    add-double v6, v27, v29

    .line 901
    .restart local v6    # "cr2":D
    const/16 v27, 0x1

    sub-int v27, v18, v27

    mul-int v28, v22, p1

    add-int v27, v27, v28

    const/16 v28, 0x1

    sub-int v28, v18, v28

    mul-int/lit8 v29, v22, 0x3

    mul-int v29, v29, p1

    add-int v28, v28, v29

    aget-wide v28, p3, v28

    add-double v28, v28, v25

    aput-wide v28, p4, v27

    .line 902
    mul-int/lit8 v27, v22, 0x3

    add-int/lit8 v27, v27, 0x2

    mul-int v27, v27, p1

    add-int v27, v27, v18

    aget-wide v27, p3, v27

    mul-int/lit8 v29, v22, 0x3

    add-int/lit8 v29, v29, 0x1

    mul-int v29, v29, p1

    add-int v29, v29, v19

    aget-wide v29, p3, v29

    sub-double v23, v27, v29

    .line 903
    .local v23, "ti2":D
    mul-int/lit8 v27, v22, 0x3

    mul-int v27, v27, p1

    add-int v27, v27, v18

    aget-wide v27, p3, v27

    const-wide/high16 v29, -0x4020000000000000L    # -0.5

    mul-double v29, v29, v23

    add-double v2, v27, v29

    .line 904
    .local v2, "ci2":D
    mul-int v27, v22, p1

    add-int v27, v27, v18

    mul-int/lit8 v28, v22, 0x3

    mul-int v28, v28, p1

    add-int v28, v28, v18

    aget-wide v28, p3, v28

    add-double v28, v28, v23

    aput-wide v28, p4, v27

    .line 905
    const-wide v27, 0x3febb67ae8584caeL    # 0.866025403784439

    const/16 v29, 0x1

    sub-int v29, v18, v29

    mul-int/lit8 v30, v22, 0x3

    add-int/lit8 v30, v30, 0x2

    mul-int v30, v30, p1

    add-int v29, v29, v30

    aget-wide v29, p3, v29

    const/16 v31, 0x1

    sub-int v31, v19, v31

    mul-int/lit8 v32, v22, 0x3

    add-int/lit8 v32, v32, 0x1

    mul-int v32, v32, p1

    add-int v31, v31, v32

    aget-wide v31, p3, v31

    sub-double v29, v29, v31

    mul-double v8, v27, v29

    .line 906
    .local v8, "cr3":D
    const-wide v27, 0x3febb67ae8584caeL    # 0.866025403784439

    mul-int/lit8 v29, v22, 0x3

    add-int/lit8 v29, v29, 0x2

    mul-int v29, v29, p1

    add-int v29, v29, v18

    aget-wide v29, p3, v29

    mul-int/lit8 v31, v22, 0x3

    add-int/lit8 v31, v31, 0x1

    mul-int v31, v31, p1

    add-int v31, v31, v19

    aget-wide v31, p3, v31

    add-double v29, v29, v31

    mul-double v4, v27, v29

    .line 907
    .restart local v4    # "ci3":D
    sub-double v14, v6, v4

    .line 908
    .local v14, "dr2":D
    add-double v16, v6, v4

    .line 909
    .local v16, "dr3":D
    add-double v10, v2, v8

    .line 910
    .local v10, "di2":D
    sub-double v12, v2, v8

    .line 911
    .local v12, "di3":D
    const/16 v27, 0x1

    sub-int v27, v18, v27

    add-int v28, v22, p2

    mul-int v28, v28, p1

    add-int v27, v27, v28

    const/16 v28, 0x2

    sub-int v28, v18, v28

    add-int v28, v28, v20

    aget-wide v28, p5, v28

    mul-double v28, v28, v14

    .line 912
    const/16 v30, 0x1

    sub-int v30, v18, v30

    add-int v30, v30, v20

    aget-wide v30, p5, v30

    mul-double v30, v30, v10

    sub-double v28, v28, v30

    .line 911
    aput-wide v28, p4, v27

    .line 913
    add-int v27, v22, p2

    mul-int v27, v27, p1

    add-int v27, v27, v18

    const/16 v28, 0x2

    sub-int v28, v18, v28

    add-int v28, v28, v20

    aget-wide v28, p5, v28

    mul-double v28, v28, v10

    .line 914
    const/16 v30, 0x1

    sub-int v30, v18, v30

    add-int v30, v30, v20

    aget-wide v30, p5, v30

    mul-double v30, v30, v14

    add-double v28, v28, v30

    .line 913
    aput-wide v28, p4, v27

    .line 915
    const/16 v27, 0x1

    sub-int v27, v18, v27

    mul-int/lit8 v28, p2, 0x2

    add-int v28, v28, v22

    mul-int v28, v28, p1

    add-int v27, v27, v28

    const/16 v28, 0x2

    sub-int v28, v18, v28

    add-int v28, v28, v21

    aget-wide v28, p5, v28

    mul-double v28, v28, v16

    .line 916
    const/16 v30, 0x1

    sub-int v30, v18, v30

    add-int v30, v30, v21

    aget-wide v30, p5, v30

    mul-double v30, v30, v12

    sub-double v28, v28, v30

    .line 915
    aput-wide v28, p4, v27

    .line 917
    mul-int/lit8 v27, p2, 0x2

    add-int v27, v27, v22

    mul-int v27, v27, p1

    add-int v27, v27, v18

    const/16 v28, 0x2

    sub-int v28, v18, v28

    add-int v28, v28, v21

    aget-wide v28, p5, v28

    mul-double v28, v28, v12

    .line 918
    const/16 v30, 0x1

    sub-int v30, v18, v30

    add-int v30, v30, v21

    aget-wide v30, p5, v30

    mul-double v30, v30, v16

    add-double v28, v28, v30

    .line 917
    aput-wide v28, p4, v27

    .line 896
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_2
.end method

.method private radb4(II[D[D[DI)V
    .locals 41
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 1006
    move/from16 v16, p6

    .line 1007
    .local v16, "iw1":I
    add-int v17, v16, p1

    .line 1008
    .local v17, "iw2":I
    add-int v18, v17, p1

    .line 1010
    .local v18, "iw3":I
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 1021
    const/16 v36, 0x2

    move/from16 v0, p1

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 1072
    :cond_0
    return-void

    .line 1012
    :cond_1
    mul-int/lit8 v36, v19, 0x4

    mul-int v36, v36, p1

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x3

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    sub-double v28, v36, v38

    .line 1013
    .local v28, "tr1":D
    mul-int/lit8 v36, v19, 0x4

    mul-int v36, v36, p1

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x3

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    add-double v30, v36, v38

    .line 1014
    .local v30, "tr2":D
    const/16 v36, 0x1

    sub-int v36, p1, v36

    mul-int/lit8 v37, v19, 0x4

    add-int/lit8 v37, v37, 0x1

    mul-int v37, v37, p1

    add-int v36, v36, v37

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x1

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    add-double v32, v36, v38

    .line 1015
    .local v32, "tr3":D
    mul-int/lit8 v36, v19, 0x4

    add-int/lit8 v36, v36, 0x2

    mul-int v36, v36, p1

    aget-wide v36, p3, v36

    mul-int/lit8 v38, v19, 0x4

    add-int/lit8 v38, v38, 0x2

    mul-int v38, v38, p1

    aget-wide v38, p3, v38

    add-double v34, v36, v38

    .line 1016
    .local v34, "tr4":D
    mul-int v36, v19, p1

    add-double v37, v30, v32

    aput-wide v37, p4, v36

    .line 1017
    add-int v36, v19, p2

    mul-int v36, v36, p1

    sub-double v37, v28, v34

    aput-wide v37, p4, v36

    .line 1018
    mul-int/lit8 v36, p2, 0x2

    add-int v36, v36, v19

    mul-int v36, v36, p1

    sub-double v37, v30, v32

    aput-wide v37, p4, v36

    .line 1019
    mul-int/lit8 v36, p2, 0x3

    add-int v36, v36, v19

    mul-int v36, v36, p1

    add-double v37, v28, v34

    aput-wide v37, p4, v36

    .line 1010
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 1022
    .end local v28    # "tr1":D
    .end local v30    # "tr2":D
    .end local v32    # "tr3":D
    .end local v34    # "tr4":D
    :cond_2
    const/16 v36, 0x2

    move/from16 v0, p1

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    .line 1024
    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    .line 1059
    rem-int/lit8 v36, p1, 0x2

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_0

    .line 1061
    :cond_3
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 1063
    mul-int/lit8 v36, v19, 0x4

    add-int/lit8 v36, v36, 0x1

    mul-int v36, v36, p1

    aget-wide v36, p3, v36

    mul-int/lit8 v38, v19, 0x4

    add-int/lit8 v38, v38, 0x3

    mul-int v38, v38, p1

    aget-wide v38, p3, v38

    add-double v20, v36, v38

    .line 1064
    .local v20, "ti1":D
    mul-int/lit8 v36, v19, 0x4

    add-int/lit8 v36, v36, 0x3

    mul-int v36, v36, p1

    aget-wide v36, p3, v36

    mul-int/lit8 v38, v19, 0x4

    add-int/lit8 v38, v38, 0x1

    mul-int v38, v38, p1

    aget-wide v38, p3, v38

    sub-double v22, v36, v38

    .line 1065
    .local v22, "ti2":D
    const/16 v36, 0x1

    sub-int v36, p1, v36

    mul-int/lit8 v37, v19, 0x4

    mul-int v37, v37, p1

    add-int v36, v36, v37

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x2

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    sub-double v28, v36, v38

    .line 1066
    .restart local v28    # "tr1":D
    const/16 v36, 0x1

    sub-int v36, p1, v36

    mul-int/lit8 v37, v19, 0x4

    mul-int v37, v37, p1

    add-int v36, v36, v37

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x2

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    add-double v30, v36, v38

    .line 1067
    .restart local v30    # "tr2":D
    const/16 v36, 0x1

    sub-int v36, p1, v36

    mul-int v37, v19, p1

    add-int v36, v36, v37

    add-double v37, v30, v30

    aput-wide v37, p4, v36

    .line 1068
    const/16 v36, 0x1

    sub-int v36, p1, v36

    add-int v37, v19, p2

    mul-int v37, v37, p1

    add-int v36, v36, v37

    const-wide v37, 0x3ff6a09e667f3bccL    # 1.414213562373095

    sub-double v39, v28, v20

    mul-double v37, v37, v39

    aput-wide v37, p4, v36

    .line 1069
    const/16 v36, 0x1

    sub-int v36, p1, v36

    mul-int/lit8 v37, p2, 0x2

    add-int v37, v37, v19

    mul-int v37, v37, p1

    add-int v36, v36, v37

    add-double v37, v22, v22

    aput-wide v37, p4, v36

    .line 1070
    const/16 v36, 0x1

    sub-int v36, p1, v36

    mul-int/lit8 v37, p2, 0x3

    add-int v37, v37, v19

    mul-int v37, v37, p1

    add-int v36, v36, v37

    const-wide v37, -0x40095f619980c434L    # -1.414213562373095

    add-double v39, v28, v20

    mul-double v37, v37, v39

    aput-wide v37, p4, v36

    .line 1061
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 1026
    .end local v20    # "ti1":D
    .end local v22    # "ti2":D
    .end local v28    # "tr1":D
    .end local v30    # "tr2":D
    :cond_4
    const/4 v14, 0x2

    .local v14, "i":I
    :goto_3
    move v0, v14

    move/from16 v1, p1

    if-lt v0, v1, :cond_5

    .line 1024
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 1028
    :cond_5
    sub-int v15, p1, v14

    .line 1029
    .local v15, "ic":I
    mul-int/lit8 v36, v19, 0x4

    mul-int v36, v36, p1

    add-int v36, v36, v14

    aget-wide v36, p3, v36

    mul-int/lit8 v38, v19, 0x4

    add-int/lit8 v38, v38, 0x3

    mul-int v38, v38, p1

    add-int v38, v38, v15

    aget-wide v38, p3, v38

    add-double v20, v36, v38

    .line 1030
    .restart local v20    # "ti1":D
    mul-int/lit8 v36, v19, 0x4

    mul-int v36, v36, p1

    add-int v36, v36, v14

    aget-wide v36, p3, v36

    mul-int/lit8 v38, v19, 0x4

    add-int/lit8 v38, v38, 0x3

    mul-int v38, v38, p1

    add-int v38, v38, v15

    aget-wide v38, p3, v38

    sub-double v22, v36, v38

    .line 1031
    .restart local v22    # "ti2":D
    mul-int/lit8 v36, v19, 0x4

    add-int/lit8 v36, v36, 0x2

    mul-int v36, v36, p1

    add-int v36, v36, v14

    aget-wide v36, p3, v36

    mul-int/lit8 v38, v19, 0x4

    add-int/lit8 v38, v38, 0x1

    mul-int v38, v38, p1

    add-int v38, v38, v15

    aget-wide v38, p3, v38

    sub-double v24, v36, v38

    .line 1032
    .local v24, "ti3":D
    mul-int/lit8 v36, v19, 0x4

    add-int/lit8 v36, v36, 0x2

    mul-int v36, v36, p1

    add-int v36, v36, v14

    aget-wide v36, p3, v36

    mul-int/lit8 v38, v19, 0x4

    add-int/lit8 v38, v38, 0x1

    mul-int v38, v38, p1

    add-int v38, v38, v15

    aget-wide v38, p3, v38

    add-double v34, v36, v38

    .line 1033
    .restart local v34    # "tr4":D
    const/16 v36, 0x1

    sub-int v36, v14, v36

    mul-int/lit8 v37, v19, 0x4

    mul-int v37, v37, p1

    add-int v36, v36, v37

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, v15, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x3

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    sub-double v28, v36, v38

    .line 1034
    .restart local v28    # "tr1":D
    const/16 v36, 0x1

    sub-int v36, v14, v36

    mul-int/lit8 v37, v19, 0x4

    mul-int v37, v37, p1

    add-int v36, v36, v37

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, v15, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x3

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    add-double v30, v36, v38

    .line 1035
    .restart local v30    # "tr2":D
    const/16 v36, 0x1

    sub-int v36, v14, v36

    mul-int/lit8 v37, v19, 0x4

    add-int/lit8 v37, v37, 0x2

    mul-int v37, v37, p1

    add-int v36, v36, v37

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, v15, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x1

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    sub-double v26, v36, v38

    .line 1036
    .local v26, "ti4":D
    const/16 v36, 0x1

    sub-int v36, v14, v36

    mul-int/lit8 v37, v19, 0x4

    add-int/lit8 v37, v37, 0x2

    mul-int v37, v37, p1

    add-int v36, v36, v37

    aget-wide v36, p3, v36

    const/16 v38, 0x1

    sub-int v38, v15, v38

    mul-int/lit8 v39, v19, 0x4

    add-int/lit8 v39, v39, 0x1

    mul-int v39, v39, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    add-double v32, v36, v38

    .line 1037
    .restart local v32    # "tr3":D
    const/16 v36, 0x1

    sub-int v36, v14, v36

    mul-int v37, v19, p1

    add-int v36, v36, v37

    add-double v37, v30, v32

    aput-wide v37, p4, v36

    .line 1038
    sub-double v10, v30, v32

    .line 1039
    .local v10, "cr3":D
    mul-int v36, v19, p1

    add-int v36, v36, v14

    add-double v37, v22, v24

    aput-wide v37, p4, v36

    .line 1040
    sub-double v4, v22, v24

    .line 1041
    .local v4, "ci3":D
    sub-double v8, v28, v34

    .line 1042
    .local v8, "cr2":D
    add-double v12, v28, v34

    .line 1043
    .local v12, "cr4":D
    add-double v2, v20, v26

    .line 1044
    .local v2, "ci2":D
    sub-double v6, v20, v26

    .line 1045
    .local v6, "ci4":D
    const/16 v36, 0x1

    sub-int v36, v14, v36

    add-int v37, v19, p2

    mul-int v37, v37, p1

    add-int v36, v36, v37

    const/16 v37, 0x2

    sub-int v37, v14, v37

    add-int v37, v37, v16

    aget-wide v37, p5, v37

    mul-double v37, v37, v8

    .line 1046
    const/16 v39, 0x1

    sub-int v39, v14, v39

    add-int v39, v39, v16

    aget-wide v39, p5, v39

    mul-double v39, v39, v2

    sub-double v37, v37, v39

    .line 1045
    aput-wide v37, p4, v36

    .line 1047
    add-int v36, v19, p2

    mul-int v36, v36, p1

    add-int v36, v36, v14

    const/16 v37, 0x2

    sub-int v37, v14, v37

    add-int v37, v37, v16

    aget-wide v37, p5, v37

    mul-double v37, v37, v2

    .line 1048
    const/16 v39, 0x1

    sub-int v39, v14, v39

    add-int v39, v39, v16

    aget-wide v39, p5, v39

    mul-double v39, v39, v8

    add-double v37, v37, v39

    .line 1047
    aput-wide v37, p4, v36

    .line 1049
    const/16 v36, 0x1

    sub-int v36, v14, v36

    mul-int/lit8 v37, p2, 0x2

    add-int v37, v37, v19

    mul-int v37, v37, p1

    add-int v36, v36, v37

    const/16 v37, 0x2

    sub-int v37, v14, v37

    add-int v37, v37, v17

    aget-wide v37, p5, v37

    mul-double v37, v37, v10

    .line 1050
    const/16 v39, 0x1

    sub-int v39, v14, v39

    add-int v39, v39, v17

    aget-wide v39, p5, v39

    mul-double v39, v39, v4

    sub-double v37, v37, v39

    .line 1049
    aput-wide v37, p4, v36

    .line 1051
    mul-int/lit8 v36, p2, 0x2

    add-int v36, v36, v19

    mul-int v36, v36, p1

    add-int v36, v36, v14

    const/16 v37, 0x2

    sub-int v37, v14, v37

    add-int v37, v37, v17

    aget-wide v37, p5, v37

    mul-double v37, v37, v4

    .line 1052
    const/16 v39, 0x1

    sub-int v39, v14, v39

    add-int v39, v39, v17

    aget-wide v39, p5, v39

    mul-double v39, v39, v10

    add-double v37, v37, v39

    .line 1051
    aput-wide v37, p4, v36

    .line 1053
    const/16 v36, 0x1

    sub-int v36, v14, v36

    mul-int/lit8 v37, p2, 0x3

    add-int v37, v37, v19

    mul-int v37, v37, p1

    add-int v36, v36, v37

    const/16 v37, 0x2

    sub-int v37, v14, v37

    add-int v37, v37, v18

    aget-wide v37, p5, v37

    mul-double v37, v37, v12

    .line 1054
    const/16 v39, 0x1

    sub-int v39, v14, v39

    add-int v39, v39, v18

    aget-wide v39, p5, v39

    mul-double v39, v39, v6

    sub-double v37, v37, v39

    .line 1053
    aput-wide v37, p4, v36

    .line 1055
    mul-int/lit8 v36, p2, 0x3

    add-int v36, v36, v19

    mul-int v36, v36, p1

    add-int v36, v36, v14

    const/16 v37, 0x2

    sub-int v37, v14, v37

    add-int v37, v37, v18

    aget-wide v37, p5, v37

    mul-double v37, v37, v6

    .line 1056
    const/16 v39, 0x1

    sub-int v39, v14, v39

    add-int v39, v39, v18

    aget-wide v39, p5, v39

    mul-double v39, v39, v12

    add-double v37, v37, v39

    .line 1055
    aput-wide v37, p4, v36

    .line 1026
    add-int/lit8 v14, v14, 0x2

    goto/16 :goto_3
.end method

.method private radb5(II[D[D[DI)V
    .locals 70
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 1163
    const-wide v53, 0x3fd3c6ef372fe948L    # 0.309016994374947

    .line 1164
    .local v53, "tr11":D
    const-wide v41, 0x3fee6f0e13445503L    # 0.951056516295154

    .line 1165
    .local v41, "ti11":D
    const-wide v55, -0x40161c8864680b5cL    # -0.809016994374947

    .line 1166
    .local v55, "tr12":D
    const-wide v43, 0x3fe2cf2304755a5dL    # 0.587785252292473

    .line 1171
    .local v43, "ti12":D
    move/from16 v36, p6

    .line 1172
    .local v36, "iw1":I
    add-int v37, v36, p1

    .line 1173
    .local v37, "iw2":I
    add-int v38, v37, p1

    .line 1174
    .local v38, "iw3":I
    add-int v39, v38, p1

    .line 1176
    .local v39, "iw4":I
    const/16 v40, 0x0

    .local v40, "k":I
    :goto_0
    move/from16 v0, v40

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 1192
    const/16 v65, 0x1

    move/from16 v0, p1

    move/from16 v1, v65

    if-ne v0, v1, :cond_2

    .line 1244
    :cond_0
    return-void

    .line 1178
    :cond_1
    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    mul-int/lit8 v67, v40, 0x5

    add-int/lit8 v67, v67, 0x2

    mul-int v67, v67, p1

    aget-wide v67, p3, v67

    mul-double v51, v65, v67

    .line 1179
    .local v51, "ti5":D
    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    mul-int/lit8 v67, v40, 0x5

    add-int/lit8 v67, v67, 0x4

    mul-int v67, v67, p1

    aget-wide v67, p3, v67

    mul-double v49, v65, v67

    .line 1180
    .local v49, "ti4":D
    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    const/16 v67, 0x1

    sub-int v67, p1, v67

    mul-int/lit8 v68, v40, 0x5

    add-int/lit8 v68, v68, 0x1

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    mul-double v57, v65, v67

    .line 1181
    .local v57, "tr2":D
    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    const/16 v67, 0x1

    sub-int v67, p1, v67

    mul-int/lit8 v68, v40, 0x5

    add-int/lit8 v68, v68, 0x3

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    mul-double v59, v65, v67

    .line 1182
    .local v59, "tr3":D
    mul-int v65, v40, p1

    mul-int/lit8 v66, v40, 0x5

    mul-int v66, v66, p1

    aget-wide v66, p3, v66

    add-double v66, v66, v57

    add-double v66, v66, v59

    aput-wide v66, p4, v65

    .line 1183
    mul-int/lit8 v65, v40, 0x5

    mul-int v65, v65, p1

    aget-wide v65, p3, v65

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v57

    add-double v65, v65, v67

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v59

    add-double v10, v65, v67

    .line 1184
    .local v10, "cr2":D
    mul-int/lit8 v65, v40, 0x5

    mul-int v65, v65, p1

    aget-wide v65, p3, v65

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v57

    add-double v65, v65, v67

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v59

    add-double v12, v65, v67

    .line 1185
    .local v12, "cr3":D
    const-wide v65, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v65, v65, v51

    const-wide v67, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v67, v67, v49

    add-double v8, v65, v67

    .line 1186
    .local v8, "ci5":D
    const-wide v65, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v65, v65, v51

    const-wide v67, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v67, v67, v49

    sub-double v6, v65, v67

    .line 1187
    .local v6, "ci4":D
    add-int v65, v40, p2

    mul-int v65, v65, p1

    sub-double v66, v10, v8

    aput-wide v66, p4, v65

    .line 1188
    mul-int/lit8 v65, p2, 0x2

    add-int v65, v65, v40

    mul-int v65, v65, p1

    sub-double v66, v12, v6

    aput-wide v66, p4, v65

    .line 1189
    mul-int/lit8 v65, p2, 0x3

    add-int v65, v65, v40

    mul-int v65, v65, p1

    add-double v66, v12, v6

    aput-wide v66, p4, v65

    .line 1190
    mul-int/lit8 v65, p2, 0x4

    add-int v65, v65, v40

    mul-int v65, v65, p1

    add-double v66, v10, v8

    aput-wide v66, p4, v65

    .line 1176
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_0

    .line 1193
    .end local v6    # "ci4":D
    .end local v8    # "ci5":D
    .end local v10    # "cr2":D
    .end local v12    # "cr3":D
    .end local v49    # "ti4":D
    .end local v51    # "ti5":D
    .end local v57    # "tr2":D
    .end local v59    # "tr3":D
    :cond_2
    const/16 v40, 0x0

    :goto_1
    move/from16 v0, v40

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 1195
    const/16 v34, 0x2

    .local v34, "i":I
    :goto_2
    move/from16 v0, v34

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 1193
    add-int/lit8 v40, v40, 0x1

    goto :goto_1

    .line 1197
    :cond_3
    sub-int v35, p1, v34

    .line 1198
    .local v35, "ic":I
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x2

    mul-int v65, v65, p1

    add-int v65, v65, v34

    aget-wide v65, p3, v65

    mul-int/lit8 v67, v40, 0x5

    add-int/lit8 v67, v67, 0x1

    mul-int v67, v67, p1

    add-int v67, v67, v35

    aget-wide v67, p3, v67

    add-double v51, v65, v67

    .line 1199
    .restart local v51    # "ti5":D
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x2

    mul-int v65, v65, p1

    add-int v65, v65, v34

    aget-wide v65, p3, v65

    mul-int/lit8 v67, v40, 0x5

    add-int/lit8 v67, v67, 0x1

    mul-int v67, v67, p1

    add-int v67, v67, v35

    aget-wide v67, p3, v67

    sub-double v45, v65, v67

    .line 1200
    .local v45, "ti2":D
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x4

    mul-int v65, v65, p1

    add-int v65, v65, v34

    aget-wide v65, p3, v65

    mul-int/lit8 v67, v40, 0x5

    add-int/lit8 v67, v67, 0x3

    mul-int v67, v67, p1

    add-int v67, v67, v35

    aget-wide v67, p3, v67

    add-double v49, v65, v67

    .line 1201
    .restart local v49    # "ti4":D
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x4

    mul-int v65, v65, p1

    add-int v65, v65, v34

    aget-wide v65, p3, v65

    mul-int/lit8 v67, v40, 0x5

    add-int/lit8 v67, v67, 0x3

    mul-int v67, v67, p1

    add-int v67, v67, v35

    aget-wide v67, p3, v67

    sub-double v47, v65, v67

    .line 1202
    .local v47, "ti3":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x2

    mul-int v66, v66, p1

    add-int v65, v65, v66

    aget-wide v65, p3, v65

    const/16 v67, 0x1

    sub-int v67, v35, v67

    mul-int/lit8 v68, v40, 0x5

    add-int/lit8 v68, v68, 0x1

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    sub-double v63, v65, v67

    .line 1203
    .local v63, "tr5":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x2

    mul-int v66, v66, p1

    add-int v65, v65, v66

    aget-wide v65, p3, v65

    const/16 v67, 0x1

    sub-int v67, v35, v67

    mul-int/lit8 v68, v40, 0x5

    add-int/lit8 v68, v68, 0x1

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    add-double v57, v65, v67

    .line 1204
    .restart local v57    # "tr2":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x4

    mul-int v66, v66, p1

    add-int v65, v65, v66

    aget-wide v65, p3, v65

    const/16 v67, 0x1

    sub-int v67, v35, v67

    mul-int/lit8 v68, v40, 0x5

    add-int/lit8 v68, v68, 0x3

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    sub-double v61, v65, v67

    .line 1205
    .local v61, "tr4":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x4

    mul-int v66, v66, p1

    add-int v65, v65, v66

    aget-wide v65, p3, v65

    const/16 v67, 0x1

    sub-int v67, v35, v67

    mul-int/lit8 v68, v40, 0x5

    add-int/lit8 v68, v68, 0x3

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    add-double v59, v65, v67

    .line 1206
    .restart local v59    # "tr3":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int v66, v40, p1

    add-int v65, v65, v66

    const/16 v66, 0x1

    sub-int v66, v34, v66

    mul-int/lit8 v67, v40, 0x5

    mul-int v67, v67, p1

    add-int v66, v66, v67

    aget-wide v66, p3, v66

    add-double v66, v66, v57

    add-double v66, v66, v59

    aput-wide v66, p4, v65

    .line 1207
    mul-int v65, v40, p1

    add-int v65, v65, v34

    mul-int/lit8 v66, v40, 0x5

    mul-int v66, v66, p1

    add-int v66, v66, v34

    aget-wide v66, p3, v66

    add-double v66, v66, v45

    add-double v66, v66, v47

    aput-wide v66, p4, v65

    .line 1208
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    mul-int v66, v66, p1

    add-int v65, v65, v66

    aget-wide v65, p3, v65

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v57

    add-double v65, v65, v67

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v59

    add-double v10, v65, v67

    .line 1210
    .restart local v10    # "cr2":D
    mul-int/lit8 v65, v40, 0x5

    mul-int v65, v65, p1

    add-int v65, v65, v34

    aget-wide v65, p3, v65

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v45

    add-double v65, v65, v67

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v47

    add-double v2, v65, v67

    .line 1211
    .local v2, "ci2":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    mul-int v66, v66, p1

    add-int v65, v65, v66

    aget-wide v65, p3, v65

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v57

    add-double v65, v65, v67

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v59

    add-double v12, v65, v67

    .line 1213
    .restart local v12    # "cr3":D
    mul-int/lit8 v65, v40, 0x5

    mul-int v65, v65, p1

    add-int v65, v65, v34

    aget-wide v65, p3, v65

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v45

    add-double v65, v65, v67

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v47

    add-double v4, v65, v67

    .line 1214
    .local v4, "ci3":D
    const-wide v65, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v65, v65, v63

    const-wide v67, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v67, v67, v61

    add-double v16, v65, v67

    .line 1215
    .local v16, "cr5":D
    const-wide v65, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v65, v65, v51

    const-wide v67, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v67, v67, v49

    add-double v8, v65, v67

    .line 1216
    .restart local v8    # "ci5":D
    const-wide v65, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v65, v65, v63

    const-wide v67, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v67, v67, v61

    sub-double v14, v65, v67

    .line 1217
    .local v14, "cr4":D
    const-wide v65, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v65, v65, v51

    const-wide v67, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v67, v67, v49

    sub-double v6, v65, v67

    .line 1218
    .restart local v6    # "ci4":D
    sub-double v28, v12, v6

    .line 1219
    .local v28, "dr3":D
    add-double v30, v12, v6

    .line 1220
    .local v30, "dr4":D
    add-double v20, v4, v14

    .line 1221
    .local v20, "di3":D
    sub-double v22, v4, v14

    .line 1222
    .local v22, "di4":D
    add-double v32, v10, v8

    .line 1223
    .local v32, "dr5":D
    sub-double v26, v10, v8

    .line 1224
    .local v26, "dr2":D
    sub-double v24, v2, v16

    .line 1225
    .local v24, "di5":D
    add-double v18, v2, v16

    .line 1226
    .local v18, "di2":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    add-int v66, v40, p2

    mul-int v66, v66, p1

    add-int v65, v65, v66

    const/16 v66, 0x2

    sub-int v66, v34, v66

    add-int v66, v66, v36

    aget-wide v66, p5, v66

    mul-double v66, v66, v26

    .line 1227
    const/16 v68, 0x1

    sub-int v68, v34, v68

    add-int v68, v68, v36

    aget-wide v68, p5, v68

    mul-double v68, v68, v18

    sub-double v66, v66, v68

    .line 1226
    aput-wide v66, p4, v65

    .line 1228
    add-int v65, v40, p2

    mul-int v65, v65, p1

    add-int v65, v65, v34

    const/16 v66, 0x2

    sub-int v66, v34, v66

    add-int v66, v66, v36

    aget-wide v66, p5, v66

    mul-double v66, v66, v18

    .line 1229
    const/16 v68, 0x1

    sub-int v68, v34, v68

    add-int v68, v68, v36

    aget-wide v68, p5, v68

    mul-double v68, v68, v26

    add-double v66, v66, v68

    .line 1228
    aput-wide v66, p4, v65

    .line 1230
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, p2, 0x2

    add-int v66, v66, v40

    mul-int v66, v66, p1

    add-int v65, v65, v66

    const/16 v66, 0x2

    sub-int v66, v34, v66

    add-int v66, v66, v37

    aget-wide v66, p5, v66

    mul-double v66, v66, v28

    .line 1231
    const/16 v68, 0x1

    sub-int v68, v34, v68

    add-int v68, v68, v37

    aget-wide v68, p5, v68

    mul-double v68, v68, v20

    sub-double v66, v66, v68

    .line 1230
    aput-wide v66, p4, v65

    .line 1232
    mul-int/lit8 v65, p2, 0x2

    add-int v65, v65, v40

    mul-int v65, v65, p1

    add-int v65, v65, v34

    const/16 v66, 0x2

    sub-int v66, v34, v66

    add-int v66, v66, v37

    aget-wide v66, p5, v66

    mul-double v66, v66, v20

    .line 1233
    const/16 v68, 0x1

    sub-int v68, v34, v68

    add-int v68, v68, v37

    aget-wide v68, p5, v68

    mul-double v68, v68, v28

    add-double v66, v66, v68

    .line 1232
    aput-wide v66, p4, v65

    .line 1234
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, p2, 0x3

    add-int v66, v66, v40

    mul-int v66, v66, p1

    add-int v65, v65, v66

    const/16 v66, 0x2

    sub-int v66, v34, v66

    add-int v66, v66, v38

    aget-wide v66, p5, v66

    mul-double v66, v66, v30

    .line 1235
    const/16 v68, 0x1

    sub-int v68, v34, v68

    add-int v68, v68, v38

    aget-wide v68, p5, v68

    mul-double v68, v68, v22

    sub-double v66, v66, v68

    .line 1234
    aput-wide v66, p4, v65

    .line 1236
    mul-int/lit8 v65, p2, 0x3

    add-int v65, v65, v40

    mul-int v65, v65, p1

    add-int v65, v65, v34

    const/16 v66, 0x2

    sub-int v66, v34, v66

    add-int v66, v66, v38

    aget-wide v66, p5, v66

    mul-double v66, v66, v22

    .line 1237
    const/16 v68, 0x1

    sub-int v68, v34, v68

    add-int v68, v68, v38

    aget-wide v68, p5, v68

    mul-double v68, v68, v30

    add-double v66, v66, v68

    .line 1236
    aput-wide v66, p4, v65

    .line 1238
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, p2, 0x4

    add-int v66, v66, v40

    mul-int v66, v66, p1

    add-int v65, v65, v66

    const/16 v66, 0x2

    sub-int v66, v34, v66

    add-int v66, v66, v39

    aget-wide v66, p5, v66

    mul-double v66, v66, v32

    .line 1239
    const/16 v68, 0x1

    sub-int v68, v34, v68

    add-int v68, v68, v39

    aget-wide v68, p5, v68

    mul-double v68, v68, v24

    sub-double v66, v66, v68

    .line 1238
    aput-wide v66, p4, v65

    .line 1240
    mul-int/lit8 v65, p2, 0x4

    add-int v65, v65, v40

    mul-int v65, v65, p1

    add-int v65, v65, v34

    const/16 v66, 0x2

    sub-int v66, v34, v66

    add-int v66, v66, v39

    aget-wide v66, p5, v66

    mul-double v66, v66, v24

    .line 1241
    const/16 v68, 0x1

    sub-int v68, v34, v68

    add-int v68, v68, v39

    aget-wide v68, p5, v68

    mul-double v68, v68, v32

    add-double v66, v66, v68

    .line 1240
    aput-wide v66, p4, v65

    .line 1195
    add-int/lit8 v34, v34, 0x2

    goto/16 :goto_2
.end method

.method private radbg(IIII[D[D[D[D[D[DI)V
    .locals 45
    .param p1, "ido"    # I
    .param p2, "ip"    # I
    .param p3, "l1"    # I
    .param p4, "idl1"    # I
    .param p5, "cc"    # [D
    .param p6, "c1"    # [D
    .param p7, "c2"    # [D
    .param p8, "ch"    # [D
    .param p9, "ch2"    # [D
    .param p10, "wtable"    # [D
    .param p11, "offset"    # I

    .prologue
    .line 529
    move/from16 v30, p11

    .line 531
    .local v30, "iw1":I
    const-wide v38, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v14, v38, v40

    .line 532
    .local v14, "arg":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 533
    .local v18, "dcp":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 534
    .local v22, "dsp":D
    const/16 v38, 0x1

    sub-int v38, p1, v38

    div-int/lit8 v37, v38, 0x2

    .line 535
    .local v37, "nbd":I
    add-int/lit8 v38, p2, 0x1

    div-int/lit8 v28, v38, 0x2

    .line 536
    .local v28, "ipph":I
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_5

    .line 538
    const/16 v34, 0x0

    .local v34, "k":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_3

    .line 556
    .end local v34    # "k":I
    :cond_0
    const/16 v31, 0x1

    .local v31, "j":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_7

    .line 567
    const/16 v38, 0x1

    move/from16 v0, p1

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    .line 569
    move/from16 v0, v37

    move/from16 v1, p3

    if-lt v0, v1, :cond_c

    .line 571
    const/16 v31, 0x1

    :goto_2
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_9

    .line 607
    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 608
    .local v6, "ar1":D
    const-wide/16 v2, 0x0

    .line 609
    .local v2, "ai1":D
    const/16 v35, 0x1

    .local v35, "l":I
    :goto_3
    move/from16 v0, v35

    move/from16 v1, v28

    if-lt v0, v1, :cond_f

    .line 637
    const/16 v31, 0x1

    :goto_4
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_13

    .line 644
    const/16 v31, 0x1

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_15

    .line 654
    const/16 v38, 0x1

    move/from16 v0, p1

    move/from16 v1, v38

    if-ne v0, v1, :cond_17

    .line 733
    :cond_2
    return-void

    .line 540
    .end local v2    # "ai1":D
    .end local v6    # "ar1":D
    .end local v31    # "j":I
    .end local v35    # "l":I
    .restart local v34    # "k":I
    :cond_3
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_6
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_4

    .line 538
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 542
    :cond_4
    mul-int v38, v34, p1

    add-int v38, v38, v24

    mul-int v39, v34, p2

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p5, v39

    aput-wide v39, p8, v38

    .line 540
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 548
    .end local v24    # "i":I
    .end local v34    # "k":I
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_7
    move/from16 v0, v24

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 550
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_8
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_6

    .line 548
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 552
    :cond_6
    mul-int v38, v34, p1

    add-int v38, v38, v24

    mul-int v39, v34, p2

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p5, v39

    aput-wide v39, p8, v38

    .line 550
    add-int/lit8 v34, v34, 0x1

    goto :goto_8

    .line 558
    .end local v24    # "i":I
    .end local v34    # "k":I
    .restart local v31    # "j":I
    :cond_7
    sub-int v33, p2, v31

    .line 559
    .local v33, "jc":I
    mul-int/lit8 v32, v31, 0x2

    .line 560
    .local v32, "j2":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_9
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_8

    .line 556
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 562
    :cond_8
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    const/16 v39, 0x1

    sub-int v39, p1, v39

    const/16 v40, 0x1

    sub-int v40, v32, v40

    mul-int v41, v34, p2

    add-int v40, v40, v41

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p5, v39

    const/16 v41, 0x1

    sub-int v41, p1, v41

    const/16 v42, 0x1

    sub-int v42, v32, v42

    mul-int v43, v34, p2

    add-int v42, v42, v43

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p5, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 563
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    mul-int v39, v34, p2

    add-int v39, v39, v32

    mul-int v39, v39, p1

    aget-wide v39, p5, v39

    mul-int v41, v34, p2

    add-int v41, v41, v32

    mul-int v41, v41, p1

    aget-wide v41, p5, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 560
    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    .line 573
    .end local v32    # "j2":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    :cond_9
    sub-int v33, p2, v31

    .line 574
    .restart local v33    # "jc":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_a
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_a

    .line 571
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    .line 576
    :cond_a
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_b
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_b

    .line 574
    add-int/lit8 v34, v34, 0x1

    goto :goto_a

    .line 578
    :cond_b
    sub-int v25, p1, v24

    .line 579
    .local v25, "ic":I
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int/lit8 v40, v31, 0x2

    mul-int v41, v34, p2

    add-int v40, v40, v41

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p5, v39

    const/16 v41, 0x1

    sub-int v41, v25, v41

    mul-int/lit8 v42, v31, 0x2

    const/16 v43, 0x1

    sub-int v42, v42, v43

    mul-int v43, v34, p2

    add-int v42, v42, v43

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p5, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 580
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int/lit8 v40, v31, 0x2

    mul-int v41, v34, p2

    add-int v40, v40, v41

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p5, v39

    const/16 v41, 0x1

    sub-int v41, v25, v41

    mul-int/lit8 v42, v31, 0x2

    const/16 v43, 0x1

    sub-int v42, v42, v43

    mul-int v43, v34, p2

    add-int v42, v42, v43

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p5, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 581
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int/lit8 v39, v31, 0x2

    mul-int v40, v34, p2

    add-int v39, v39, v40

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p5, v39

    mul-int/lit8 v41, v31, 0x2

    const/16 v42, 0x1

    sub-int v41, v41, v42

    mul-int v42, v34, p2

    add-int v41, v41, v42

    mul-int v41, v41, p1

    add-int v41, v41, v25

    aget-wide v41, p5, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 582
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int/lit8 v39, v31, 0x2

    mul-int v40, v34, p2

    add-int v39, v39, v40

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p5, v39

    mul-int/lit8 v41, v31, 0x2

    const/16 v42, 0x1

    sub-int v41, v41, v42

    mul-int v42, v34, p2

    add-int v41, v41, v42

    mul-int v41, v41, p1

    add-int v41, v41, v25

    aget-wide v41, p5, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 576
    add-int/lit8 v24, v24, 0x2

    goto/16 :goto_b

    .line 589
    .end local v24    # "i":I
    .end local v25    # "ic":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    :cond_c
    const/16 v31, 0x1

    :goto_c
    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 591
    sub-int v33, p2, v31

    .line 592
    .restart local v33    # "jc":I
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_d
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_d

    .line 589
    add-int/lit8 v31, v31, 0x1

    goto :goto_c

    .line 594
    :cond_d
    sub-int v25, p1, v24

    .line 595
    .restart local v25    # "ic":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_e
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_e

    .line 592
    add-int/lit8 v24, v24, 0x2

    goto :goto_d

    .line 597
    :cond_e
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int/lit8 v40, v31, 0x2

    mul-int v41, v34, p2

    add-int v40, v40, v41

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p5, v39

    const/16 v41, 0x1

    sub-int v41, v25, v41

    mul-int/lit8 v42, v31, 0x2

    const/16 v43, 0x1

    sub-int v42, v42, v43

    mul-int v43, v34, p2

    add-int v42, v42, v43

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p5, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 598
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int/lit8 v40, v31, 0x2

    mul-int v41, v34, p2

    add-int v40, v40, v41

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p5, v39

    const/16 v41, 0x1

    sub-int v41, v25, v41

    mul-int/lit8 v42, v31, 0x2

    const/16 v43, 0x1

    sub-int v42, v42, v43

    mul-int v43, v34, p2

    add-int v42, v42, v43

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p5, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 599
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int/lit8 v39, v31, 0x2

    mul-int v40, v34, p2

    add-int v39, v39, v40

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p5, v39

    mul-int/lit8 v41, v31, 0x2

    const/16 v42, 0x1

    sub-int v41, v41, v42

    mul-int v42, v34, p2

    add-int v41, v41, v42

    mul-int v41, v41, p1

    add-int v41, v41, v25

    aget-wide v41, p5, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 600
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int/lit8 v39, v31, 0x2

    mul-int v40, v34, p2

    add-int v39, v39, v40

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p5, v39

    mul-int/lit8 v41, v31, 0x2

    const/16 v42, 0x1

    sub-int v41, v41, v42

    mul-int v42, v34, p2

    add-int v41, v41, v42

    mul-int v41, v41, p1

    add-int v41, v41, v25

    aget-wide v41, p5, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 595
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_e

    .line 611
    .end local v24    # "i":I
    .end local v25    # "ic":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    .restart local v2    # "ai1":D
    .restart local v6    # "ar1":D
    .restart local v35    # "l":I
    :cond_f
    sub-int v36, p2, v35

    .line 612
    .local v36, "lc":I
    mul-double v38, v18, v6

    mul-double v40, v22, v2

    sub-double v8, v38, v40

    .line 613
    .local v8, "ar1h":D
    mul-double v38, v18, v2

    mul-double v40, v22, v6

    add-double v2, v38, v40

    .line 614
    move-wide v6, v8

    .line 615
    const/16 v27, 0x0

    .local v27, "ik":I
    :goto_f
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_10

    .line 620
    move-wide/from16 v16, v6

    .line 621
    .local v16, "dc2":D
    move-wide/from16 v20, v2

    .line 622
    .local v20, "ds2":D
    move-wide v10, v6

    .line 623
    .local v10, "ar2":D
    move-wide v4, v2

    .line 624
    .local v4, "ai2":D
    const/16 v31, 0x2

    :goto_10
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_11

    .line 609
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_3

    .line 617
    .end local v4    # "ai2":D
    .end local v10    # "ar2":D
    .end local v16    # "dc2":D
    .end local v20    # "ds2":D
    :cond_10
    mul-int v38, v35, p4

    add-int v38, v38, v27

    aget-wide v39, p9, v27

    add-int v41, v27, p4

    aget-wide v41, p9, v41

    mul-double v41, v41, v6

    add-double v39, v39, v41

    aput-wide v39, p7, v38

    .line 618
    mul-int v38, v36, p4

    add-int v38, v38, v27

    const/16 v39, 0x1

    sub-int v39, p2, v39

    mul-int v39, v39, p4

    add-int v39, v39, v27

    aget-wide v39, p9, v39

    mul-double v39, v39, v2

    aput-wide v39, p7, v38

    .line 615
    add-int/lit8 v27, v27, 0x1

    goto :goto_f

    .line 626
    .restart local v4    # "ai2":D
    .restart local v10    # "ar2":D
    .restart local v16    # "dc2":D
    .restart local v20    # "ds2":D
    :cond_11
    sub-int v33, p2, v31

    .line 627
    .restart local v33    # "jc":I
    mul-double v38, v16, v10

    mul-double v40, v20, v4

    sub-double v12, v38, v40

    .line 628
    .local v12, "ar2h":D
    mul-double v38, v16, v4

    mul-double v40, v20, v10

    add-double v4, v38, v40

    .line 629
    move-wide v10, v12

    .line 630
    const/16 v27, 0x0

    :goto_11
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_12

    .line 624
    add-int/lit8 v31, v31, 0x1

    goto :goto_10

    .line 632
    :cond_12
    mul-int v38, v35, p4

    add-int v38, v38, v27

    aget-wide v39, p7, v38

    mul-int v41, v31, p4

    add-int v41, v41, v27

    aget-wide v41, p9, v41

    mul-double v41, v41, v10

    add-double v39, v39, v41

    aput-wide v39, p7, v38

    .line 633
    mul-int v38, v36, p4

    add-int v38, v38, v27

    aget-wide v39, p7, v38

    mul-int v41, v33, p4

    add-int v41, v41, v27

    aget-wide v41, p9, v41

    mul-double v41, v41, v4

    add-double v39, v39, v41

    aput-wide v39, p7, v38

    .line 630
    add-int/lit8 v27, v27, 0x1

    goto :goto_11

    .line 639
    .end local v4    # "ai2":D
    .end local v8    # "ar1h":D
    .end local v10    # "ar2":D
    .end local v12    # "ar2h":D
    .end local v16    # "dc2":D
    .end local v20    # "ds2":D
    .end local v27    # "ik":I
    .end local v33    # "jc":I
    .end local v36    # "lc":I
    :cond_13
    const/16 v27, 0x0

    .restart local v27    # "ik":I
    :goto_12
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_14

    .line 637
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_4

    .line 641
    :cond_14
    aget-wide v38, p9, v27

    mul-int v40, v31, p4

    add-int v40, v40, v27

    aget-wide v40, p9, v40

    add-double v38, v38, v40

    aput-wide v38, p9, v27

    .line 639
    add-int/lit8 v27, v27, 0x1

    goto :goto_12

    .line 646
    .end local v27    # "ik":I
    :cond_15
    sub-int v33, p2, v31

    .line 647
    .restart local v33    # "jc":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_13
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_16

    .line 644
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_5

    .line 649
    :cond_16
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    aget-wide v39, p6, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    aget-wide v41, p6, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 650
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    aget-wide v39, p6, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    aget-wide v41, p6, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 647
    add-int/lit8 v34, v34, 0x1

    goto :goto_13

    .line 655
    .end local v33    # "jc":I
    .end local v34    # "k":I
    :cond_17
    move/from16 v0, v37

    move/from16 v1, p3

    if-lt v0, v1, :cond_1c

    .line 657
    const/16 v31, 0x1

    :goto_14
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_19

    .line 689
    :cond_18
    const/16 v27, 0x0

    .restart local v27    # "ik":I
    :goto_15
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_1f

    .line 690
    const/16 v31, 0x1

    :goto_16
    move/from16 v0, v31

    move/from16 v1, p2

    if-lt v0, v1, :cond_20

    .line 693
    move/from16 v0, v37

    move/from16 v1, p3

    if-gt v0, v1, :cond_24

    .line 695
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v29, v0

    .line 696
    .local v29, "is":I
    const/16 v31, 0x1

    :goto_17
    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 698
    add-int v29, v29, p1

    .line 699
    const/16 v38, 0x1

    sub-int v26, v29, v38

    .line 700
    .local v26, "idij":I
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_18
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_22

    .line 696
    add-int/lit8 v31, v31, 0x1

    goto :goto_17

    .line 659
    .end local v24    # "i":I
    .end local v26    # "idij":I
    .end local v27    # "ik":I
    .end local v29    # "is":I
    :cond_19
    sub-int v33, p2, v31

    .line 660
    .restart local v33    # "jc":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_19
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_1a

    .line 657
    add-int/lit8 v31, v31, 0x1

    goto :goto_14

    .line 662
    :cond_1a
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_1a
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_1b

    .line 660
    add-int/lit8 v34, v34, 0x1

    goto :goto_19

    .line 664
    :cond_1b
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p6, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p6, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 665
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p6, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p6, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 666
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p6, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p6, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 667
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p6, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p6, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 662
    add-int/lit8 v24, v24, 0x2

    goto/16 :goto_1a

    .line 674
    .end local v24    # "i":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    :cond_1c
    const/16 v31, 0x1

    :goto_1b
    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 676
    sub-int v33, p2, v31

    .line 677
    .restart local v33    # "jc":I
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_1c
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_1d

    .line 674
    add-int/lit8 v31, v31, 0x1

    goto :goto_1b

    .line 679
    :cond_1d
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_1d
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_1e

    .line 677
    add-int/lit8 v24, v24, 0x2

    goto :goto_1c

    .line 681
    :cond_1e
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p6, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p6, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 682
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p6, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p6, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 683
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p6, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p6, v41

    add-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 684
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p6, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p6, v41

    sub-double v39, v39, v41

    aput-wide v39, p8, v38

    .line 679
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1d

    .line 689
    .end local v24    # "i":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    .restart local v27    # "ik":I
    :cond_1f
    aget-wide v38, p9, v27

    aput-wide v38, p7, v27

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_15

    .line 691
    :cond_20
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_1e
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_21

    .line 690
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_16

    .line 692
    :cond_21
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    aget-wide v39, p8, v39

    aput-wide v39, p6, v38

    .line 691
    add-int/lit8 v34, v34, 0x1

    goto :goto_1e

    .line 702
    .end local v34    # "k":I
    .restart local v24    # "i":I
    .restart local v26    # "idij":I
    .restart local v29    # "is":I
    :cond_22
    add-int/lit8 v26, v26, 0x2

    .line 703
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_1f
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_23

    .line 700
    add-int/lit8 v24, v24, 0x2

    goto/16 :goto_18

    .line 705
    :cond_23
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v26, v39

    add-int v39, v39, v30

    aget-wide v39, p10, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v31, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    mul-double v39, v39, v41

    .line 706
    add-int v41, v26, v30

    aget-wide v41, p10, v41

    mul-int v43, v31, p3

    add-int v43, v43, v34

    mul-int v43, v43, p1

    add-int v43, v43, v24

    aget-wide v43, p8, v43

    mul-double v41, v41, v43

    sub-double v39, v39, v41

    .line 705
    aput-wide v39, p6, v38

    .line 707
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    const/16 v39, 0x1

    sub-int v39, v26, v39

    add-int v39, v39, v30

    aget-wide v39, p10, v39

    mul-int v41, v31, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    mul-double v39, v39, v41

    .line 708
    add-int v41, v26, v30

    aget-wide v41, p10, v41

    const/16 v43, 0x1

    sub-int v43, v24, v43

    mul-int v44, v31, p3

    add-int v44, v44, v34

    mul-int v44, v44, p1

    add-int v43, v43, v44

    aget-wide v43, p8, v43

    mul-double v41, v41, v43

    add-double v39, v39, v41

    .line 707
    aput-wide v39, p6, v38

    .line 703
    add-int/lit8 v34, v34, 0x1

    goto :goto_1f

    .line 715
    .end local v24    # "i":I
    .end local v26    # "idij":I
    .end local v29    # "is":I
    .end local v34    # "k":I
    :cond_24
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v29, v0

    .line 716
    .restart local v29    # "is":I
    const/16 v31, 0x1

    :goto_20
    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 718
    add-int v29, v29, p1

    .line 719
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_21
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_25

    .line 716
    add-int/lit8 v31, v31, 0x1

    goto :goto_20

    .line 721
    :cond_25
    const/16 v38, 0x1

    sub-int v26, v29, v38

    .line 722
    .restart local v26    # "idij":I
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_22
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_26

    .line 719
    add-int/lit8 v34, v34, 0x1

    goto :goto_21

    .line 724
    :cond_26
    add-int/lit8 v26, v26, 0x2

    .line 725
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v26, v39

    add-int v39, v39, v30

    aget-wide v39, p10, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v31, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    mul-double v39, v39, v41

    .line 726
    add-int v41, v26, v30

    aget-wide v41, p10, v41

    mul-int v43, v31, p3

    add-int v43, v43, v34

    mul-int v43, v43, p1

    add-int v43, v43, v24

    aget-wide v43, p8, v43

    mul-double v41, v41, v43

    sub-double v39, v39, v41

    .line 725
    aput-wide v39, p6, v38

    .line 727
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    const/16 v39, 0x1

    sub-int v39, v26, v39

    add-int v39, v39, v30

    aget-wide v39, p10, v39

    mul-int v41, v31, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    mul-double v39, v39, v41

    .line 728
    add-int v41, v26, v30

    aget-wide v41, p10, v41

    const/16 v43, 0x1

    sub-int v43, v24, v43

    mul-int v44, v31, p3

    add-int v44, v44, v34

    mul-int v44, v44, p1

    add-int v43, v43, v44

    aget-wide v43, p8, v43

    mul-double v41, v41, v43

    add-double v39, v39, v41

    .line 727
    aput-wide v39, p6, v38

    .line 722
    add-int/lit8 v24, v24, 0x2

    goto :goto_22
.end method

.method private radf2(II[D[D[DI)V
    .locals 16
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 749
    move/from16 v4, p6

    .line 751
    .local v4, "iw1":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 756
    const/4 v10, 0x2

    move/from16 v0, p1

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 781
    :cond_0
    return-void

    .line 753
    :cond_1
    mul-int/lit8 v10, v5, 0x2

    mul-int v10, v10, p1

    mul-int v11, v5, p1

    aget-wide v11, p3, v11

    add-int v13, v5, p2

    mul-int v13, v13, p1

    aget-wide v13, p3, v13

    add-double/2addr v11, v13

    aput-wide v11, p4, v10

    .line 754
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int v10, v10, p1

    add-int v10, v10, p1

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    mul-int v11, v5, p1

    aget-wide v11, p3, v11

    add-int v13, v5, p2

    mul-int v13, v13, p1

    aget-wide v13, p3, v13

    sub-double/2addr v11, v13

    aput-wide v11, p4, v10

    .line 751
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 757
    :cond_2
    const/4 v10, 0x2

    move/from16 v0, p1

    move v1, v10

    if-eq v0, v1, :cond_3

    .line 759
    const/4 v5, 0x0

    :goto_1
    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    .line 774
    rem-int/lit8 v10, p1, 0x2

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 776
    :cond_3
    const/4 v5, 0x0

    :goto_2
    move v0, v5

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 778
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int v10, v10, p1

    const/4 v11, 0x1

    sub-int v11, p1, v11

    add-int v12, v5, p2

    mul-int v12, v12, p1

    add-int/2addr v11, v12

    aget-wide v11, p3, v11

    neg-double v11, v11

    aput-wide v11, p4, v10

    .line 779
    const/4 v10, 0x1

    sub-int v10, p1, v10

    mul-int/lit8 v11, v5, 0x2

    mul-int v11, v11, p1

    add-int/2addr v10, v11

    const/4 v11, 0x1

    sub-int v11, p1, v11

    mul-int v12, v5, p1

    add-int/2addr v11, v12

    aget-wide v11, p3, v11

    aput-wide v11, p4, v10

    .line 776
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 761
    :cond_4
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_3
    move v0, v2

    move/from16 v1, p1

    if-lt v0, v1, :cond_5

    .line 759
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 763
    :cond_5
    sub-int v3, p1, v2

    .line 764
    .local v3, "ic":I
    const/4 v10, 0x2

    sub-int v10, v2, v10

    add-int/2addr v10, v4

    aget-wide v10, p5, v10

    const/4 v12, 0x1

    sub-int v12, v2, v12

    add-int v13, v5, p2

    mul-int v13, v13, p1

    add-int/2addr v12, v13

    aget-wide v12, p3, v12

    mul-double/2addr v10, v12

    .line 765
    const/4 v12, 0x1

    sub-int v12, v2, v12

    add-int/2addr v12, v4

    aget-wide v12, p5, v12

    add-int v14, v5, p2

    mul-int v14, v14, p1

    add-int/2addr v14, v2

    aget-wide v14, p3, v14

    mul-double/2addr v12, v14

    .line 764
    add-double v8, v10, v12

    .line 766
    .local v8, "tr2":D
    const/4 v10, 0x2

    sub-int v10, v2, v10

    add-int/2addr v10, v4

    aget-wide v10, p5, v10

    add-int v12, v5, p2

    mul-int v12, v12, p1

    add-int/2addr v12, v2

    aget-wide v12, p3, v12

    mul-double/2addr v10, v12

    .line 767
    const/4 v12, 0x1

    sub-int v12, v2, v12

    add-int/2addr v12, v4

    aget-wide v12, p5, v12

    const/4 v14, 0x1

    sub-int v14, v2, v14

    add-int v15, v5, p2

    mul-int v15, v15, p1

    add-int/2addr v14, v15

    aget-wide v14, p3, v14

    mul-double/2addr v12, v14

    .line 766
    sub-double v6, v10, v12

    .line 768
    .local v6, "ti2":D
    mul-int/lit8 v10, v5, 0x2

    mul-int v10, v10, p1

    add-int/2addr v10, v2

    mul-int v11, v5, p1

    add-int/2addr v11, v2

    aget-wide v11, p3, v11

    add-double/2addr v11, v6

    aput-wide v11, p4, v10

    .line 769
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int v10, v10, p1

    add-int/2addr v10, v3

    mul-int v11, v5, p1

    add-int/2addr v11, v2

    aget-wide v11, p3, v11

    sub-double v11, v6, v11

    aput-wide v11, p4, v10

    .line 770
    const/4 v10, 0x1

    sub-int v10, v2, v10

    mul-int/lit8 v11, v5, 0x2

    mul-int v11, v11, p1

    add-int/2addr v10, v11

    const/4 v11, 0x1

    sub-int v11, v2, v11

    mul-int v12, v5, p1

    add-int/2addr v11, v12

    aget-wide v11, p3, v11

    add-double/2addr v11, v8

    aput-wide v11, p4, v10

    .line 771
    const/4 v10, 0x1

    sub-int v10, v3, v10

    mul-int/lit8 v11, v5, 0x2

    add-int/lit8 v11, v11, 0x1

    mul-int v11, v11, p1

    add-int/2addr v10, v11

    const/4 v11, 0x1

    sub-int v11, v2, v11

    mul-int v12, v5, p1

    add-int/2addr v11, v12

    aget-wide v11, p3, v11

    sub-double/2addr v11, v8

    aput-wide v11, p4, v10

    .line 761
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_3
.end method

.method private radf3(II[D[D[DI)V
    .locals 34
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 832
    move/from16 v16, p6

    .line 833
    .local v16, "iw1":I
    add-int v17, v16, p1

    .line 835
    .local v17, "iw2":I
    const/16 v18, 0x0

    .local v18, "k":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 842
    const/16 v27, 0x1

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 870
    :cond_0
    return-void

    .line 837
    :cond_1
    add-int v27, v18, p2

    mul-int v27, v27, p1

    aget-wide v27, p3, v27

    mul-int/lit8 v29, p2, 0x2

    add-int v29, v29, v18

    mul-int v29, v29, p1

    aget-wide v29, p3, v29

    add-double v4, v27, v29

    .line 838
    .local v4, "cr2":D
    mul-int/lit8 v27, v18, 0x3

    mul-int v27, v27, p1

    mul-int v28, v18, p1

    aget-wide v28, p3, v28

    add-double v28, v28, v4

    aput-wide v28, p4, v27

    .line 839
    mul-int/lit8 v27, v18, 0x3

    add-int/lit8 v27, v27, 0x2

    mul-int v27, v27, p1

    const-wide v28, 0x3febb67ae8584caeL    # 0.866025403784439

    mul-int/lit8 v30, p2, 0x2

    add-int v30, v30, v18

    mul-int v30, v30, p1

    aget-wide v30, p3, v30

    add-int v32, v18, p2

    mul-int v32, v32, p1

    aget-wide v32, p3, v32

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    aput-wide v28, p4, v27

    .line 840
    const/16 v27, 0x1

    sub-int v27, p1, v27

    mul-int/lit8 v28, v18, 0x3

    add-int/lit8 v28, v28, 0x1

    mul-int v28, v28, p1

    add-int v27, v27, v28

    mul-int v28, v18, p1

    aget-wide v28, p3, v28

    const-wide/high16 v30, -0x4020000000000000L    # -0.5

    mul-double v30, v30, v4

    add-double v28, v28, v30

    aput-wide v28, p4, v27

    .line 835
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 843
    .end local v4    # "cr2":D
    :cond_2
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 845
    const/4 v14, 0x2

    .local v14, "i":I
    :goto_2
    move v0, v14

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 843
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 847
    :cond_3
    sub-int v15, p1, v14

    .line 848
    .local v15, "ic":I
    const/16 v27, 0x2

    sub-int v27, v14, v27

    add-int v27, v27, v16

    aget-wide v27, p5, v27

    const/16 v29, 0x1

    sub-int v29, v14, v29

    add-int v30, v18, p2

    mul-int v30, v30, p1

    add-int v29, v29, v30

    aget-wide v29, p3, v29

    mul-double v27, v27, v29

    .line 849
    const/16 v29, 0x1

    sub-int v29, v14, v29

    add-int v29, v29, v16

    aget-wide v29, p5, v29

    add-int v31, v18, p2

    mul-int v31, v31, p1

    add-int v31, v31, v14

    aget-wide v31, p3, v31

    mul-double v29, v29, v31

    .line 848
    add-double v10, v27, v29

    .line 850
    .local v10, "dr2":D
    const/16 v27, 0x2

    sub-int v27, v14, v27

    add-int v27, v27, v16

    aget-wide v27, p5, v27

    add-int v29, v18, p2

    mul-int v29, v29, p1

    add-int v29, v29, v14

    aget-wide v29, p3, v29

    mul-double v27, v27, v29

    .line 851
    const/16 v29, 0x1

    sub-int v29, v14, v29

    add-int v29, v29, v16

    aget-wide v29, p5, v29

    const/16 v31, 0x1

    sub-int v31, v14, v31

    add-int v32, v18, p2

    mul-int v32, v32, p1

    add-int v31, v31, v32

    aget-wide v31, p3, v31

    mul-double v29, v29, v31

    .line 850
    sub-double v6, v27, v29

    .line 852
    .local v6, "di2":D
    const/16 v27, 0x2

    sub-int v27, v14, v27

    add-int v27, v27, v17

    aget-wide v27, p5, v27

    const/16 v29, 0x1

    sub-int v29, v14, v29

    mul-int/lit8 v30, p2, 0x2

    add-int v30, v30, v18

    mul-int v30, v30, p1

    add-int v29, v29, v30

    aget-wide v29, p3, v29

    mul-double v27, v27, v29

    .line 853
    const/16 v29, 0x1

    sub-int v29, v14, v29

    add-int v29, v29, v17

    aget-wide v29, p5, v29

    mul-int/lit8 v31, p2, 0x2

    add-int v31, v31, v18

    mul-int v31, v31, p1

    add-int v31, v31, v14

    aget-wide v31, p3, v31

    mul-double v29, v29, v31

    .line 852
    add-double v12, v27, v29

    .line 854
    .local v12, "dr3":D
    const/16 v27, 0x2

    sub-int v27, v14, v27

    add-int v27, v27, v17

    aget-wide v27, p5, v27

    mul-int/lit8 v29, p2, 0x2

    add-int v29, v29, v18

    mul-int v29, v29, p1

    add-int v29, v29, v14

    aget-wide v29, p3, v29

    mul-double v27, v27, v29

    .line 855
    const/16 v29, 0x1

    sub-int v29, v14, v29

    add-int v29, v29, v17

    aget-wide v29, p5, v29

    const/16 v31, 0x1

    sub-int v31, v14, v31

    mul-int/lit8 v32, p2, 0x2

    add-int v32, v32, v18

    mul-int v32, v32, p1

    add-int v31, v31, v32

    aget-wide v31, p3, v31

    mul-double v29, v29, v31

    .line 854
    sub-double v8, v27, v29

    .line 856
    .local v8, "di3":D
    add-double v4, v10, v12

    .line 857
    .restart local v4    # "cr2":D
    add-double v2, v6, v8

    .line 858
    .local v2, "ci2":D
    const/16 v27, 0x1

    sub-int v27, v14, v27

    mul-int/lit8 v28, v18, 0x3

    mul-int v28, v28, p1

    add-int v27, v27, v28

    const/16 v28, 0x1

    sub-int v28, v14, v28

    mul-int v29, v18, p1

    add-int v28, v28, v29

    aget-wide v28, p3, v28

    add-double v28, v28, v4

    aput-wide v28, p4, v27

    .line 859
    mul-int/lit8 v27, v18, 0x3

    mul-int v27, v27, p1

    add-int v27, v27, v14

    mul-int v28, v18, p1

    add-int v28, v28, v14

    aget-wide v28, p3, v28

    add-double v28, v28, v2

    aput-wide v28, p4, v27

    .line 860
    const/16 v27, 0x1

    sub-int v27, v14, v27

    mul-int v28, v18, p1

    add-int v27, v27, v28

    aget-wide v27, p3, v27

    const-wide/high16 v29, -0x4020000000000000L    # -0.5

    mul-double v29, v29, v4

    add-double v23, v27, v29

    .line 861
    .local v23, "tr2":D
    mul-int v27, v18, p1

    add-int v27, v27, v14

    aget-wide v27, p3, v27

    const-wide/high16 v29, -0x4020000000000000L    # -0.5

    mul-double v29, v29, v2

    add-double v19, v27, v29

    .line 862
    .local v19, "ti2":D
    const-wide v27, 0x3febb67ae8584caeL    # 0.866025403784439

    sub-double v29, v6, v8

    mul-double v25, v27, v29

    .line 863
    .local v25, "tr3":D
    const-wide v27, 0x3febb67ae8584caeL    # 0.866025403784439

    sub-double v29, v12, v10

    mul-double v21, v27, v29

    .line 864
    .local v21, "ti3":D
    const/16 v27, 0x1

    sub-int v27, v14, v27

    mul-int/lit8 v28, v18, 0x3

    add-int/lit8 v28, v28, 0x2

    mul-int v28, v28, p1

    add-int v27, v27, v28

    add-double v28, v23, v25

    aput-wide v28, p4, v27

    .line 865
    const/16 v27, 0x1

    sub-int v27, v15, v27

    mul-int/lit8 v28, v18, 0x3

    add-int/lit8 v28, v28, 0x1

    mul-int v28, v28, p1

    add-int v27, v27, v28

    sub-double v28, v23, v25

    aput-wide v28, p4, v27

    .line 866
    mul-int/lit8 v27, v18, 0x3

    add-int/lit8 v27, v27, 0x2

    mul-int v27, v27, p1

    add-int v27, v27, v14

    add-double v28, v19, v21

    aput-wide v28, p4, v27

    .line 867
    mul-int/lit8 v27, v18, 0x3

    add-int/lit8 v27, v27, 0x1

    mul-int v27, v27, p1

    add-int v27, v27, v15

    sub-double v28, v21, v19

    aput-wide v28, p4, v27

    .line 845
    add-int/lit8 v14, v14, 0x2

    goto/16 :goto_2
.end method

.method private radf4(II[D[D[DI)V
    .locals 44
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 929
    const-wide v14, 0x3fe6a09e667f3bccL    # 0.7071067811865475

    .line 933
    .local v14, "hsqt2":D
    move/from16 v18, p6

    .line 934
    .local v18, "iw1":I
    add-int v19, p6, p1

    .line 935
    .local v19, "iw2":I
    add-int v20, v19, p1

    .line 936
    .local v20, "iw3":I
    const/16 v21, 0x0

    .local v21, "k":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 945
    const/16 v38, 0x2

    move/from16 v0, p1

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 994
    :cond_0
    return-void

    .line 938
    :cond_1
    add-int v38, v21, p2

    mul-int v38, v38, p1

    aget-wide v38, p3, v38

    mul-int/lit8 v40, p2, 0x3

    add-int v40, v40, v21

    mul-int v40, v40, p1

    aget-wide v40, p3, v40

    add-double v30, v38, v40

    .line 939
    .local v30, "tr1":D
    mul-int v38, v21, p1

    aget-wide v38, p3, v38

    mul-int/lit8 v40, p2, 0x2

    add-int v40, v40, v21

    mul-int v40, v40, p1

    aget-wide v40, p3, v40

    add-double v32, v38, v40

    .line 940
    .local v32, "tr2":D
    mul-int/lit8 v38, v21, 0x4

    mul-int v38, v38, p1

    add-double v39, v30, v32

    aput-wide v39, p4, v38

    .line 941
    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v21, 0x4

    add-int/lit8 v39, v39, 0x3

    mul-int v39, v39, p1

    add-int v38, v38, v39

    sub-double v39, v32, v30

    aput-wide v39, p4, v38

    .line 942
    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v21, 0x4

    add-int/lit8 v39, v39, 0x1

    mul-int v39, v39, p1

    add-int v38, v38, v39

    mul-int v39, v21, p1

    aget-wide v39, p3, v39

    mul-int/lit8 v41, p2, 0x2

    add-int v41, v41, v21

    mul-int v41, v41, p1

    aget-wide v41, p3, v41

    sub-double v39, v39, v41

    aput-wide v39, p4, v38

    .line 943
    mul-int/lit8 v38, v21, 0x4

    add-int/lit8 v38, v38, 0x2

    mul-int v38, v38, p1

    mul-int/lit8 v39, p2, 0x3

    add-int v39, v39, v21

    mul-int v39, v39, p1

    aget-wide v39, p3, v39

    add-int v41, v21, p2

    mul-int v41, v41, p1

    aget-wide v41, p3, v41

    sub-double v39, v39, v41

    aput-wide v39, p4, v38

    .line 936
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 946
    .end local v30    # "tr1":D
    .end local v32    # "tr2":D
    :cond_2
    const/16 v38, 0x2

    move/from16 v0, p1

    move/from16 v1, v38

    if-eq v0, v1, :cond_3

    .line 948
    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    .line 983
    rem-int/lit8 v38, p1, 0x2

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_0

    .line 985
    :cond_3
    const/16 v21, 0x0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 987
    const-wide v38, -0x40195f619980c434L    # -0.7071067811865475

    const/16 v40, 0x1

    sub-int v40, p1, v40

    add-int v41, v21, p2

    mul-int v41, v41, p1

    add-int v40, v40, v41

    aget-wide v40, p3, v40

    const/16 v42, 0x1

    sub-int v42, p1, v42

    mul-int/lit8 v43, p2, 0x3

    add-int v43, v43, v21

    mul-int v43, v43, p1

    add-int v42, v42, v43

    aget-wide v42, p3, v42

    add-double v40, v40, v42

    mul-double v22, v38, v40

    .line 988
    .local v22, "ti1":D
    const-wide v38, 0x3fe6a09e667f3bccL    # 0.7071067811865475

    const/16 v40, 0x1

    sub-int v40, p1, v40

    add-int v41, v21, p2

    mul-int v41, v41, p1

    add-int v40, v40, v41

    aget-wide v40, p3, v40

    const/16 v42, 0x1

    sub-int v42, p1, v42

    mul-int/lit8 v43, p2, 0x3

    add-int v43, v43, v21

    mul-int v43, v43, p1

    add-int v42, v42, v43

    aget-wide v42, p3, v42

    sub-double v40, v40, v42

    mul-double v30, v38, v40

    .line 989
    .restart local v30    # "tr1":D
    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v21, 0x4

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, p1, v39

    mul-int v40, v21, p1

    add-int v39, v39, v40

    aget-wide v39, p3, v39

    add-double v39, v39, v30

    aput-wide v39, p4, v38

    .line 990
    const/16 v38, 0x1

    sub-int v38, p1, v38

    mul-int/lit8 v39, v21, 0x4

    add-int/lit8 v39, v39, 0x2

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, p1, v39

    mul-int v40, v21, p1

    add-int v39, v39, v40

    aget-wide v39, p3, v39

    sub-double v39, v39, v30

    aput-wide v39, p4, v38

    .line 991
    mul-int/lit8 v38, v21, 0x4

    add-int/lit8 v38, v38, 0x1

    mul-int v38, v38, p1

    const/16 v39, 0x1

    sub-int v39, p1, v39

    mul-int/lit8 v40, p2, 0x2

    add-int v40, v40, v21

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p3, v39

    sub-double v39, v22, v39

    aput-wide v39, p4, v38

    .line 992
    mul-int/lit8 v38, v21, 0x4

    add-int/lit8 v38, v38, 0x3

    mul-int v38, v38, p1

    const/16 v39, 0x1

    sub-int v39, p1, v39

    mul-int/lit8 v40, p2, 0x2

    add-int v40, v40, v21

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p3, v39

    add-double v39, v39, v22

    aput-wide v39, p4, v38

    .line 985
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 950
    .end local v22    # "ti1":D
    .end local v30    # "tr1":D
    :cond_4
    const/16 v16, 0x2

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, p1

    if-lt v0, v1, :cond_5

    .line 948
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 952
    :cond_5
    sub-int v17, p1, v16

    .line 953
    .local v17, "ic":I
    const/16 v38, 0x2

    sub-int v38, v16, v38

    add-int v38, v38, v18

    aget-wide v38, p5, v38

    const/16 v40, 0x1

    sub-int v40, v16, v40

    add-int v41, v21, p2

    mul-int v41, v41, p1

    add-int v40, v40, v41

    aget-wide v40, p3, v40

    mul-double v38, v38, v40

    .line 954
    const/16 v40, 0x1

    sub-int v40, v16, v40

    add-int v40, v40, v18

    aget-wide v40, p5, v40

    add-int v42, v21, p2

    mul-int v42, v42, p1

    add-int v42, v42, v16

    aget-wide v42, p3, v42

    mul-double v40, v40, v42

    .line 953
    add-double v8, v38, v40

    .line 955
    .local v8, "cr2":D
    const/16 v38, 0x2

    sub-int v38, v16, v38

    add-int v38, v38, v18

    aget-wide v38, p5, v38

    add-int v40, v21, p2

    mul-int v40, v40, p1

    add-int v40, v40, v16

    aget-wide v40, p3, v40

    mul-double v38, v38, v40

    .line 956
    const/16 v40, 0x1

    sub-int v40, v16, v40

    add-int v40, v40, v18

    aget-wide v40, p5, v40

    const/16 v42, 0x1

    sub-int v42, v16, v42

    add-int v43, v21, p2

    mul-int v43, v43, p1

    add-int v42, v42, v43

    aget-wide v42, p3, v42

    mul-double v40, v40, v42

    .line 955
    sub-double v2, v38, v40

    .line 957
    .local v2, "ci2":D
    const/16 v38, 0x2

    sub-int v38, v16, v38

    add-int v38, v38, v19

    aget-wide v38, p5, v38

    const/16 v40, 0x1

    sub-int v40, v16, v40

    mul-int/lit8 v41, p2, 0x2

    add-int v41, v41, v21

    mul-int v41, v41, p1

    add-int v40, v40, v41

    aget-wide v40, p3, v40

    mul-double v38, v38, v40

    .line 958
    const/16 v40, 0x1

    sub-int v40, v16, v40

    add-int v40, v40, v19

    aget-wide v40, p5, v40

    mul-int/lit8 v42, p2, 0x2

    add-int v42, v42, v21

    mul-int v42, v42, p1

    add-int v42, v42, v16

    aget-wide v42, p3, v42

    mul-double v40, v40, v42

    .line 957
    add-double v10, v38, v40

    .line 959
    .local v10, "cr3":D
    const/16 v38, 0x2

    sub-int v38, v16, v38

    add-int v38, v38, v19

    aget-wide v38, p5, v38

    mul-int/lit8 v40, p2, 0x2

    add-int v40, v40, v21

    mul-int v40, v40, p1

    add-int v40, v40, v16

    aget-wide v40, p3, v40

    mul-double v38, v38, v40

    .line 960
    const/16 v40, 0x1

    sub-int v40, v16, v40

    add-int v40, v40, v19

    aget-wide v40, p5, v40

    const/16 v42, 0x1

    sub-int v42, v16, v42

    mul-int/lit8 v43, p2, 0x2

    add-int v43, v43, v21

    mul-int v43, v43, p1

    add-int v42, v42, v43

    aget-wide v42, p3, v42

    mul-double v40, v40, v42

    .line 959
    sub-double v4, v38, v40

    .line 961
    .local v4, "ci3":D
    const/16 v38, 0x2

    sub-int v38, v16, v38

    add-int v38, v38, v20

    aget-wide v38, p5, v38

    const/16 v40, 0x1

    sub-int v40, v16, v40

    mul-int/lit8 v41, p2, 0x3

    add-int v41, v41, v21

    mul-int v41, v41, p1

    add-int v40, v40, v41

    aget-wide v40, p3, v40

    mul-double v38, v38, v40

    .line 962
    const/16 v40, 0x1

    sub-int v40, v16, v40

    add-int v40, v40, v20

    aget-wide v40, p5, v40

    mul-int/lit8 v42, p2, 0x3

    add-int v42, v42, v21

    mul-int v42, v42, p1

    add-int v42, v42, v16

    aget-wide v42, p3, v42

    mul-double v40, v40, v42

    .line 961
    add-double v12, v38, v40

    .line 963
    .local v12, "cr4":D
    const/16 v38, 0x2

    sub-int v38, v16, v38

    add-int v38, v38, v20

    aget-wide v38, p5, v38

    mul-int/lit8 v40, p2, 0x3

    add-int v40, v40, v21

    mul-int v40, v40, p1

    add-int v40, v40, v16

    aget-wide v40, p3, v40

    mul-double v38, v38, v40

    .line 964
    const/16 v40, 0x1

    sub-int v40, v16, v40

    add-int v40, v40, v20

    aget-wide v40, p5, v40

    const/16 v42, 0x1

    sub-int v42, v16, v42

    mul-int/lit8 v43, p2, 0x3

    add-int v43, v43, v21

    mul-int v43, v43, p1

    add-int v42, v42, v43

    aget-wide v42, p3, v42

    mul-double v40, v40, v42

    .line 963
    sub-double v6, v38, v40

    .line 965
    .local v6, "ci4":D
    add-double v30, v8, v12

    .line 966
    .restart local v30    # "tr1":D
    sub-double v36, v12, v8

    .line 967
    .local v36, "tr4":D
    add-double v22, v2, v6

    .line 968
    .restart local v22    # "ti1":D
    sub-double v28, v2, v6

    .line 969
    .local v28, "ti4":D
    mul-int v38, v21, p1

    add-int v38, v38, v16

    aget-wide v38, p3, v38

    add-double v24, v38, v4

    .line 970
    .local v24, "ti2":D
    mul-int v38, v21, p1

    add-int v38, v38, v16

    aget-wide v38, p3, v38

    sub-double v26, v38, v4

    .line 971
    .local v26, "ti3":D
    const/16 v38, 0x1

    sub-int v38, v16, v38

    mul-int v39, v21, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    add-double v32, v38, v10

    .line 972
    .restart local v32    # "tr2":D
    const/16 v38, 0x1

    sub-int v38, v16, v38

    mul-int v39, v21, p1

    add-int v38, v38, v39

    aget-wide v38, p3, v38

    sub-double v34, v38, v10

    .line 973
    .local v34, "tr3":D
    const/16 v38, 0x1

    sub-int v38, v16, v38

    mul-int/lit8 v39, v21, 0x4

    mul-int v39, v39, p1

    add-int v38, v38, v39

    add-double v39, v30, v32

    aput-wide v39, p4, v38

    .line 974
    const/16 v38, 0x1

    sub-int v38, v17, v38

    mul-int/lit8 v39, v21, 0x4

    add-int/lit8 v39, v39, 0x3

    mul-int v39, v39, p1

    add-int v38, v38, v39

    sub-double v39, v32, v30

    aput-wide v39, p4, v38

    .line 975
    mul-int/lit8 v38, v21, 0x4

    mul-int v38, v38, p1

    add-int v38, v38, v16

    add-double v39, v22, v24

    aput-wide v39, p4, v38

    .line 976
    mul-int/lit8 v38, v21, 0x4

    add-int/lit8 v38, v38, 0x3

    mul-int v38, v38, p1

    add-int v38, v38, v17

    sub-double v39, v22, v24

    aput-wide v39, p4, v38

    .line 977
    const/16 v38, 0x1

    sub-int v38, v16, v38

    mul-int/lit8 v39, v21, 0x4

    add-int/lit8 v39, v39, 0x2

    mul-int v39, v39, p1

    add-int v38, v38, v39

    add-double v39, v28, v34

    aput-wide v39, p4, v38

    .line 978
    const/16 v38, 0x1

    sub-int v38, v17, v38

    mul-int/lit8 v39, v21, 0x4

    add-int/lit8 v39, v39, 0x1

    mul-int v39, v39, p1

    add-int v38, v38, v39

    sub-double v39, v34, v28

    aput-wide v39, p4, v38

    .line 979
    mul-int/lit8 v38, v21, 0x4

    add-int/lit8 v38, v38, 0x2

    mul-int v38, v38, p1

    add-int v38, v38, v16

    add-double v39, v36, v26

    aput-wide v39, p4, v38

    .line 980
    mul-int/lit8 v38, v21, 0x4

    add-int/lit8 v38, v38, 0x1

    mul-int v38, v38, p1

    add-int v38, v38, v17

    sub-double v39, v36, v26

    aput-wide v39, p4, v38

    .line 950
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_3
.end method

.method private radf5(II[D[D[DI)V
    .locals 71
    .param p1, "ido"    # I
    .param p2, "l1"    # I
    .param p3, "cc"    # [D
    .param p4, "ch"    # [D
    .param p5, "wtable"    # [D
    .param p6, "offset"    # I

    .prologue
    .line 1080
    const-wide v53, 0x3fd3c6ef372fe948L    # 0.309016994374947

    .line 1081
    .local v53, "tr11":D
    const-wide v41, 0x3fee6f0e13445503L    # 0.951056516295154

    .line 1082
    .local v41, "ti11":D
    const-wide v55, -0x40161c8864680b5cL    # -0.809016994374947

    .line 1083
    .local v55, "tr12":D
    const-wide v43, 0x3fe2cf2304755a5dL    # 0.587785252292473

    .line 1088
    .local v43, "ti12":D
    move/from16 v36, p6

    .line 1089
    .local v36, "iw1":I
    add-int v37, v36, p1

    .line 1090
    .local v37, "iw2":I
    add-int v38, v37, p1

    .line 1091
    .local v38, "iw3":I
    add-int v39, v38, p1

    .line 1093
    .local v39, "iw4":I
    const/16 v40, 0x0

    .local v40, "k":I
    :goto_0
    move/from16 v0, v40

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 1105
    const/16 v65, 0x1

    move/from16 v0, p1

    move/from16 v1, v65

    if-ne v0, v1, :cond_2

    .line 1155
    :cond_0
    return-void

    .line 1095
    :cond_1
    mul-int/lit8 v65, p2, 0x4

    add-int v65, v65, v40

    mul-int v65, v65, p1

    aget-wide v65, p3, v65

    add-int v67, v40, p2

    mul-int v67, v67, p1

    aget-wide v67, p3, v67

    add-double v10, v65, v67

    .line 1096
    .local v10, "cr2":D
    mul-int/lit8 v65, p2, 0x4

    add-int v65, v65, v40

    mul-int v65, v65, p1

    aget-wide v65, p3, v65

    add-int v67, v40, p2

    mul-int v67, v67, p1

    aget-wide v67, p3, v67

    sub-double v8, v65, v67

    .line 1097
    .local v8, "ci5":D
    mul-int/lit8 v65, p2, 0x3

    add-int v65, v65, v40

    mul-int v65, v65, p1

    aget-wide v65, p3, v65

    mul-int/lit8 v67, p2, 0x2

    add-int v67, v67, v40

    mul-int v67, v67, p1

    aget-wide v67, p3, v67

    add-double v12, v65, v67

    .line 1098
    .local v12, "cr3":D
    mul-int/lit8 v65, p2, 0x3

    add-int v65, v65, v40

    mul-int v65, v65, p1

    aget-wide v65, p3, v65

    mul-int/lit8 v67, p2, 0x2

    add-int v67, v67, v40

    mul-int v67, v67, p1

    aget-wide v67, p3, v67

    sub-double v6, v65, v67

    .line 1099
    .local v6, "ci4":D
    mul-int/lit8 v65, v40, 0x5

    mul-int v65, v65, p1

    mul-int v66, v40, p1

    aget-wide v66, p3, v66

    add-double v66, v66, v10

    add-double v66, v66, v12

    aput-wide v66, p4, v65

    .line 1100
    const/16 v65, 0x1

    sub-int v65, p1, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x1

    mul-int v66, v66, p1

    add-int v65, v65, v66

    mul-int v66, v40, p1

    aget-wide v66, p3, v66

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v10

    add-double v66, v66, v68

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v12

    add-double v66, v66, v68

    aput-wide v66, p4, v65

    .line 1101
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x2

    mul-int v65, v65, p1

    const-wide v66, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v66, v66, v8

    const-wide v68, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v68, v68, v6

    add-double v66, v66, v68

    aput-wide v66, p4, v65

    .line 1102
    const/16 v65, 0x1

    sub-int v65, p1, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x3

    mul-int v66, v66, p1

    add-int v65, v65, v66

    mul-int v66, v40, p1

    aget-wide v66, p3, v66

    const-wide v68, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v68, v68, v10

    add-double v66, v66, v68

    const-wide v68, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v68, v68, v12

    add-double v66, v66, v68

    aput-wide v66, p4, v65

    .line 1103
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x4

    mul-int v65, v65, p1

    const-wide v66, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v66, v66, v8

    const-wide v68, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v68, v68, v6

    sub-double v66, v66, v68

    aput-wide v66, p4, v65

    .line 1093
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_0

    .line 1106
    .end local v6    # "ci4":D
    .end local v8    # "ci5":D
    .end local v10    # "cr2":D
    .end local v12    # "cr3":D
    :cond_2
    const/16 v40, 0x0

    :goto_1
    move/from16 v0, v40

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 1108
    const/16 v34, 0x2

    .local v34, "i":I
    :goto_2
    move/from16 v0, v34

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 1106
    add-int/lit8 v40, v40, 0x1

    goto :goto_1

    .line 1110
    :cond_3
    sub-int v35, p1, v34

    .line 1111
    .local v35, "ic":I
    const/16 v65, 0x2

    sub-int v65, v34, v65

    add-int v65, v65, v36

    aget-wide v65, p5, v65

    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v68, v40, p2

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    mul-double v65, v65, v67

    .line 1112
    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v67, v67, v36

    aget-wide v67, p5, v67

    add-int v69, v40, p2

    mul-int v69, v69, p1

    add-int v69, v69, v34

    aget-wide v69, p3, v69

    mul-double v67, v67, v69

    .line 1111
    add-double v26, v65, v67

    .line 1113
    .local v26, "dr2":D
    const/16 v65, 0x2

    sub-int v65, v34, v65

    add-int v65, v65, v36

    aget-wide v65, p5, v65

    add-int v67, v40, p2

    mul-int v67, v67, p1

    add-int v67, v67, v34

    aget-wide v67, p3, v67

    mul-double v65, v65, v67

    .line 1114
    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v67, v67, v36

    aget-wide v67, p5, v67

    const/16 v69, 0x1

    sub-int v69, v34, v69

    add-int v70, v40, p2

    mul-int v70, v70, p1

    add-int v69, v69, v70

    aget-wide v69, p3, v69

    mul-double v67, v67, v69

    .line 1113
    sub-double v18, v65, v67

    .line 1115
    .local v18, "di2":D
    const/16 v65, 0x2

    sub-int v65, v34, v65

    add-int v65, v65, v37

    aget-wide v65, p5, v65

    const/16 v67, 0x1

    sub-int v67, v34, v67

    mul-int/lit8 v68, p2, 0x2

    add-int v68, v68, v40

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    mul-double v65, v65, v67

    .line 1116
    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v67, v67, v37

    aget-wide v67, p5, v67

    mul-int/lit8 v69, p2, 0x2

    add-int v69, v69, v40

    mul-int v69, v69, p1

    add-int v69, v69, v34

    aget-wide v69, p3, v69

    mul-double v67, v67, v69

    .line 1115
    add-double v28, v65, v67

    .line 1117
    .local v28, "dr3":D
    const/16 v65, 0x2

    sub-int v65, v34, v65

    add-int v65, v65, v37

    aget-wide v65, p5, v65

    mul-int/lit8 v67, p2, 0x2

    add-int v67, v67, v40

    mul-int v67, v67, p1

    add-int v67, v67, v34

    aget-wide v67, p3, v67

    mul-double v65, v65, v67

    .line 1118
    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v67, v67, v37

    aget-wide v67, p5, v67

    const/16 v69, 0x1

    sub-int v69, v34, v69

    mul-int/lit8 v70, p2, 0x2

    add-int v70, v70, v40

    mul-int v70, v70, p1

    add-int v69, v69, v70

    aget-wide v69, p3, v69

    mul-double v67, v67, v69

    .line 1117
    sub-double v20, v65, v67

    .line 1119
    .local v20, "di3":D
    const/16 v65, 0x2

    sub-int v65, v34, v65

    add-int v65, v65, v38

    aget-wide v65, p5, v65

    const/16 v67, 0x1

    sub-int v67, v34, v67

    mul-int/lit8 v68, p2, 0x3

    add-int v68, v68, v40

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    mul-double v65, v65, v67

    .line 1120
    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v67, v67, v38

    aget-wide v67, p5, v67

    mul-int/lit8 v69, p2, 0x3

    add-int v69, v69, v40

    mul-int v69, v69, p1

    add-int v69, v69, v34

    aget-wide v69, p3, v69

    mul-double v67, v67, v69

    .line 1119
    add-double v30, v65, v67

    .line 1121
    .local v30, "dr4":D
    const/16 v65, 0x2

    sub-int v65, v34, v65

    add-int v65, v65, v38

    aget-wide v65, p5, v65

    mul-int/lit8 v67, p2, 0x3

    add-int v67, v67, v40

    mul-int v67, v67, p1

    add-int v67, v67, v34

    aget-wide v67, p3, v67

    mul-double v65, v65, v67

    .line 1122
    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v67, v67, v38

    aget-wide v67, p5, v67

    const/16 v69, 0x1

    sub-int v69, v34, v69

    mul-int/lit8 v70, p2, 0x3

    add-int v70, v70, v40

    mul-int v70, v70, p1

    add-int v69, v69, v70

    aget-wide v69, p3, v69

    mul-double v67, v67, v69

    .line 1121
    sub-double v22, v65, v67

    .line 1123
    .local v22, "di4":D
    const/16 v65, 0x2

    sub-int v65, v34, v65

    add-int v65, v65, v39

    aget-wide v65, p5, v65

    const/16 v67, 0x1

    sub-int v67, v34, v67

    mul-int/lit8 v68, p2, 0x4

    add-int v68, v68, v40

    mul-int v68, v68, p1

    add-int v67, v67, v68

    aget-wide v67, p3, v67

    mul-double v65, v65, v67

    .line 1124
    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v67, v67, v39

    aget-wide v67, p5, v67

    mul-int/lit8 v69, p2, 0x4

    add-int v69, v69, v40

    mul-int v69, v69, p1

    add-int v69, v69, v34

    aget-wide v69, p3, v69

    mul-double v67, v67, v69

    .line 1123
    add-double v32, v65, v67

    .line 1125
    .local v32, "dr5":D
    const/16 v65, 0x2

    sub-int v65, v34, v65

    add-int v65, v65, v39

    aget-wide v65, p5, v65

    mul-int/lit8 v67, p2, 0x4

    add-int v67, v67, v40

    mul-int v67, v67, p1

    add-int v67, v67, v34

    aget-wide v67, p3, v67

    mul-double v65, v65, v67

    .line 1126
    const/16 v67, 0x1

    sub-int v67, v34, v67

    add-int v67, v67, v39

    aget-wide v67, p5, v67

    const/16 v69, 0x1

    sub-int v69, v34, v69

    mul-int/lit8 v70, p2, 0x4

    add-int v70, v70, v40

    mul-int v70, v70, p1

    add-int v69, v69, v70

    aget-wide v69, p3, v69

    mul-double v67, v67, v69

    .line 1125
    sub-double v24, v65, v67

    .line 1127
    .local v24, "di5":D
    add-double v10, v26, v32

    .line 1128
    .restart local v10    # "cr2":D
    sub-double v8, v32, v26

    .line 1129
    .restart local v8    # "ci5":D
    sub-double v16, v18, v24

    .line 1130
    .local v16, "cr5":D
    add-double v2, v18, v24

    .line 1131
    .local v2, "ci2":D
    add-double v12, v28, v30

    .line 1132
    .restart local v12    # "cr3":D
    sub-double v6, v30, v28

    .line 1133
    .restart local v6    # "ci4":D
    sub-double v14, v20, v22

    .line 1134
    .local v14, "cr4":D
    add-double v4, v20, v22

    .line 1135
    .local v4, "ci3":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    mul-int v66, v66, p1

    add-int v65, v65, v66

    const/16 v66, 0x1

    sub-int v66, v34, v66

    mul-int v67, v40, p1

    add-int v66, v66, v67

    aget-wide v66, p3, v66

    add-double v66, v66, v10

    add-double v66, v66, v12

    aput-wide v66, p4, v65

    .line 1136
    mul-int/lit8 v65, v40, 0x5

    mul-int v65, v65, p1

    add-int v65, v65, v34

    mul-int v66, v40, p1

    add-int v66, v66, v34

    aget-wide v66, p3, v66

    add-double v66, v66, v2

    add-double v66, v66, v4

    aput-wide v66, p4, v65

    .line 1137
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int v66, v40, p1

    add-int v65, v65, v66

    aget-wide v65, p3, v65

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v10

    add-double v65, v65, v67

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v12

    add-double v57, v65, v67

    .line 1138
    .local v57, "tr2":D
    mul-int v65, v40, p1

    add-int v65, v65, v34

    aget-wide v65, p3, v65

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v2

    add-double v65, v65, v67

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v4

    add-double v45, v65, v67

    .line 1139
    .local v45, "ti2":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int v66, v40, p1

    add-int v65, v65, v66

    aget-wide v65, p3, v65

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v10

    add-double v65, v65, v67

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v12

    add-double v59, v65, v67

    .line 1140
    .local v59, "tr3":D
    mul-int v65, v40, p1

    add-int v65, v65, v34

    aget-wide v65, p3, v65

    const-wide v67, -0x40161c8864680b5cL    # -0.809016994374947

    mul-double v67, v67, v2

    add-double v65, v65, v67

    const-wide v67, 0x3fd3c6ef372fe948L    # 0.309016994374947

    mul-double v67, v67, v4

    add-double v47, v65, v67

    .line 1141
    .local v47, "ti3":D
    const-wide v65, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v65, v65, v16

    const-wide v67, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v67, v67, v14

    add-double v63, v65, v67

    .line 1142
    .local v63, "tr5":D
    const-wide v65, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v65, v65, v8

    const-wide v67, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v67, v67, v6

    add-double v51, v65, v67

    .line 1143
    .local v51, "ti5":D
    const-wide v65, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v65, v65, v16

    const-wide v67, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v67, v67, v14

    sub-double v61, v65, v67

    .line 1144
    .local v61, "tr4":D
    const-wide v65, 0x3fe2cf2304755a5dL    # 0.587785252292473

    mul-double v65, v65, v8

    const-wide v67, 0x3fee6f0e13445503L    # 0.951056516295154

    mul-double v67, v67, v6

    sub-double v49, v65, v67

    .line 1145
    .local v49, "ti4":D
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x2

    mul-int v66, v66, p1

    add-int v65, v65, v66

    add-double v66, v57, v63

    aput-wide v66, p4, v65

    .line 1146
    const/16 v65, 0x1

    sub-int v65, v35, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x1

    mul-int v66, v66, p1

    add-int v65, v65, v66

    sub-double v66, v57, v63

    aput-wide v66, p4, v65

    .line 1147
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x2

    mul-int v65, v65, p1

    add-int v65, v65, v34

    add-double v66, v45, v51

    aput-wide v66, p4, v65

    .line 1148
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x1

    mul-int v65, v65, p1

    add-int v65, v65, v35

    sub-double v66, v51, v45

    aput-wide v66, p4, v65

    .line 1149
    const/16 v65, 0x1

    sub-int v65, v34, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x4

    mul-int v66, v66, p1

    add-int v65, v65, v66

    add-double v66, v59, v61

    aput-wide v66, p4, v65

    .line 1150
    const/16 v65, 0x1

    sub-int v65, v35, v65

    mul-int/lit8 v66, v40, 0x5

    add-int/lit8 v66, v66, 0x3

    mul-int v66, v66, p1

    add-int v65, v65, v66

    sub-double v66, v59, v61

    aput-wide v66, p4, v65

    .line 1151
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x4

    mul-int v65, v65, p1

    add-int v65, v65, v34

    add-double v66, v47, v49

    aput-wide v66, p4, v65

    .line 1152
    mul-int/lit8 v65, v40, 0x5

    add-int/lit8 v65, v65, 0x3

    mul-int v65, v65, p1

    add-int v65, v65, v35

    sub-double v66, v49, v47

    aput-wide v66, p4, v65

    .line 1108
    add-int/lit8 v34, v34, 0x2

    goto/16 :goto_2
.end method

.method private radfg(IIII[D[D[D[D[D[DI)V
    .locals 45
    .param p1, "ido"    # I
    .param p2, "ip"    # I
    .param p3, "l1"    # I
    .param p4, "idl1"    # I
    .param p5, "cc"    # [D
    .param p6, "c1"    # [D
    .param p7, "c2"    # [D
    .param p8, "ch"    # [D
    .param p9, "ch2"    # [D
    .param p10, "wtable"    # [D
    .param p11, "offset"    # I

    .prologue
    .line 307
    move/from16 v30, p11

    .line 309
    .local v30, "iw1":I
    const-wide v38, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v14, v38, v40

    .line 310
    .local v14, "arg":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 311
    .local v18, "dcp":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 312
    .local v22, "dsp":D
    add-int/lit8 v38, p2, 0x1

    div-int/lit8 v28, v38, 0x2

    .line 313
    .local v28, "ipph":I
    const/16 v38, 0x1

    sub-int v38, p1, v38

    div-int/lit8 v37, v38, 0x2

    .line 314
    .local v37, "nbd":I
    const/16 v38, 0x1

    move/from16 v0, p1

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    .line 316
    const/16 v27, 0x0

    .local v27, "ik":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_4

    .line 317
    const/16 v31, 0x1

    .local v31, "j":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, p2

    if-lt v0, v1, :cond_5

    .line 320
    move/from16 v0, v37

    move/from16 v1, p3

    if-gt v0, v1, :cond_a

    .line 322
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v29, v0

    .line 323
    .local v29, "is":I
    const/16 v31, 0x1

    :goto_2
    move/from16 v0, v31

    move/from16 v1, p2

    if-lt v0, v1, :cond_7

    .line 364
    :cond_0
    move/from16 v0, v37

    move/from16 v1, p3

    if-lt v0, v1, :cond_10

    .line 366
    const/16 v31, 0x1

    :goto_3
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_d

    .line 404
    .end local v29    # "is":I
    .end local v31    # "j":I
    :cond_1
    const/16 v31, 0x1

    .restart local v31    # "j":I
    :goto_4
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_14

    .line 414
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 415
    .local v6, "ar1":D
    const-wide/16 v2, 0x0

    .line 416
    .local v2, "ai1":D
    const/16 v35, 0x1

    .local v35, "l":I
    :goto_5
    move/from16 v0, v35

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 444
    const/16 v31, 0x1

    :goto_6
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_1a

    .line 448
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_1e

    .line 450
    const/16 v34, 0x0

    .local v34, "k":I
    :goto_7
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_1c

    .line 468
    .end local v34    # "k":I
    :cond_2
    const/16 v31, 0x1

    :goto_8
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_20

    .line 478
    const/16 v38, 0x1

    move/from16 v0, p1

    move/from16 v1, v38

    if-ne v0, v1, :cond_22

    .line 517
    :cond_3
    return-void

    .line 316
    .end local v2    # "ai1":D
    .end local v6    # "ar1":D
    .end local v31    # "j":I
    .end local v35    # "l":I
    :cond_4
    aget-wide v38, p7, v27

    aput-wide v38, p9, v27

    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 318
    .restart local v31    # "j":I
    :cond_5
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_9
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_6

    .line 317
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 319
    :cond_6
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    aget-wide v39, p6, v39

    aput-wide v39, p8, v38

    .line 318
    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    .line 325
    .end local v34    # "k":I
    .restart local v29    # "is":I
    :cond_7
    add-int v29, v29, p1

    .line 326
    const/16 v38, 0x1

    sub-int v26, v29, v38

    .line 327
    .local v26, "idij":I
    const/16 v24, 0x2

    .local v24, "i":I
    :goto_a
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_8

    .line 323
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    .line 329
    :cond_8
    add-int/lit8 v26, v26, 0x2

    .line 330
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_b
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_9

    .line 327
    add-int/lit8 v24, v24, 0x2

    goto :goto_a

    .line 332
    :cond_9
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    .line 333
    const/16 v39, 0x1

    sub-int v39, v26, v39

    add-int v39, v39, v30

    aget-wide v39, p10, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v31, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p6, v41

    mul-double v39, v39, v41

    .line 334
    add-int v41, v26, v30

    aget-wide v41, p10, v41

    mul-int v43, v31, p3

    add-int v43, v43, v34

    mul-int v43, v43, p1

    add-int v43, v43, v24

    aget-wide v43, p6, v43

    mul-double v41, v41, v43

    .line 333
    add-double v39, v39, v41

    .line 332
    aput-wide v39, p8, v38

    .line 335
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    .line 336
    const/16 v39, 0x1

    sub-int v39, v26, v39

    add-int v39, v39, v30

    aget-wide v39, p10, v39

    mul-int v41, v31, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p6, v41

    mul-double v39, v39, v41

    .line 337
    add-int v41, v26, v30

    aget-wide v41, p10, v41

    const/16 v43, 0x1

    sub-int v43, v24, v43

    mul-int v44, v31, p3

    add-int v44, v44, v34

    mul-int v44, v44, p1

    add-int v43, v43, v44

    aget-wide v43, p6, v43

    mul-double v41, v41, v43

    .line 336
    sub-double v39, v39, v41

    .line 335
    aput-wide v39, p8, v38

    .line 330
    add-int/lit8 v34, v34, 0x1

    goto :goto_b

    .line 344
    .end local v24    # "i":I
    .end local v26    # "idij":I
    .end local v29    # "is":I
    .end local v34    # "k":I
    :cond_a
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v29, v0

    .line 345
    .restart local v29    # "is":I
    const/16 v31, 0x1

    :goto_c
    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 347
    add-int v29, v29, p1

    .line 348
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_d
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_b

    .line 345
    add-int/lit8 v31, v31, 0x1

    goto :goto_c

    .line 350
    :cond_b
    const/16 v38, 0x1

    sub-int v26, v29, v38

    .line 351
    .restart local v26    # "idij":I
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_e
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_c

    .line 348
    add-int/lit8 v34, v34, 0x1

    goto :goto_d

    .line 353
    :cond_c
    add-int/lit8 v26, v26, 0x2

    .line 354
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    .line 355
    const/16 v39, 0x1

    sub-int v39, v26, v39

    add-int v39, v39, v30

    aget-wide v39, p10, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v31, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p6, v41

    mul-double v39, v39, v41

    .line 356
    add-int v41, v26, v30

    aget-wide v41, p10, v41

    mul-int v43, v31, p3

    add-int v43, v43, v34

    mul-int v43, v43, p1

    add-int v43, v43, v24

    aget-wide v43, p6, v43

    mul-double v41, v41, v43

    .line 355
    add-double v39, v39, v41

    .line 354
    aput-wide v39, p8, v38

    .line 357
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    .line 358
    const/16 v39, 0x1

    sub-int v39, v26, v39

    add-int v39, v39, v30

    aget-wide v39, p10, v39

    mul-int v41, v31, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p6, v41

    mul-double v39, v39, v41

    .line 359
    add-int v41, v26, v30

    aget-wide v41, p10, v41

    const/16 v43, 0x1

    sub-int v43, v24, v43

    mul-int v44, v31, p3

    add-int v44, v44, v34

    mul-int v44, v44, p1

    add-int v43, v43, v44

    aget-wide v43, p6, v43

    mul-double v41, v41, v43

    .line 358
    sub-double v39, v39, v41

    .line 357
    aput-wide v39, p8, v38

    .line 351
    add-int/lit8 v24, v24, 0x2

    goto :goto_e

    .line 368
    .end local v24    # "i":I
    .end local v26    # "idij":I
    .end local v34    # "k":I
    :cond_d
    sub-int v33, p2, v31

    .line 369
    .local v33, "jc":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_f
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_e

    .line 366
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_3

    .line 371
    :cond_e
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_10
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_f

    .line 369
    add-int/lit8 v34, v34, 0x1

    goto :goto_f

    .line 373
    :cond_f
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p8, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 374
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 375
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 376
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v33, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p8, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v31, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 371
    add-int/lit8 v24, v24, 0x2

    goto/16 :goto_10

    .line 383
    .end local v24    # "i":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    :cond_10
    const/16 v31, 0x1

    :goto_11
    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 385
    sub-int v33, p2, v31

    .line 386
    .restart local v33    # "jc":I
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_12
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_11

    .line 383
    add-int/lit8 v31, v31, 0x1

    goto :goto_11

    .line 388
    :cond_11
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_13
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_12

    .line 386
    add-int/lit8 v24, v24, 0x2

    goto :goto_12

    .line 390
    :cond_12
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    .line 391
    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p8, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    .line 390
    aput-wide v39, p6, v38

    .line 392
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v38, v38, v39

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 393
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 394
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    add-int v38, v38, v24

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v33, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p8, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v31, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 388
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_13

    .line 402
    .end local v24    # "i":I
    .end local v27    # "ik":I
    .end local v29    # "is":I
    .end local v31    # "j":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    :cond_13
    const/16 v27, 0x0

    .restart local v27    # "ik":I
    :goto_14
    move/from16 v0, v27

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    aget-wide v38, p9, v27

    aput-wide v38, p7, v27

    add-int/lit8 v27, v27, 0x1

    goto :goto_14

    .line 406
    .restart local v31    # "j":I
    :cond_14
    sub-int v33, p2, v31

    .line 407
    .restart local v33    # "jc":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_15
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_15

    .line 404
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_4

    .line 409
    :cond_15
    mul-int v38, v31, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    aget-wide v39, p8, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 410
    mul-int v38, v33, p3

    add-int v38, v38, v34

    mul-int v38, v38, p1

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    aget-wide v39, p8, v39

    mul-int v41, v31, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p6, v38

    .line 407
    add-int/lit8 v34, v34, 0x1

    goto :goto_15

    .line 418
    .end local v33    # "jc":I
    .end local v34    # "k":I
    .restart local v2    # "ai1":D
    .restart local v6    # "ar1":D
    .restart local v35    # "l":I
    :cond_16
    sub-int v36, p2, v35

    .line 419
    .local v36, "lc":I
    mul-double v38, v18, v6

    mul-double v40, v22, v2

    sub-double v8, v38, v40

    .line 420
    .local v8, "ar1h":D
    mul-double v38, v18, v2

    mul-double v40, v22, v6

    add-double v2, v38, v40

    .line 421
    move-wide v6, v8

    .line 422
    const/16 v27, 0x0

    :goto_16
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_17

    .line 427
    move-wide/from16 v16, v6

    .line 428
    .local v16, "dc2":D
    move-wide/from16 v20, v2

    .line 429
    .local v20, "ds2":D
    move-wide v10, v6

    .line 430
    .local v10, "ar2":D
    move-wide v4, v2

    .line 431
    .local v4, "ai2":D
    const/16 v31, 0x2

    :goto_17
    move/from16 v0, v31

    move/from16 v1, v28

    if-lt v0, v1, :cond_18

    .line 416
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_5

    .line 424
    .end local v4    # "ai2":D
    .end local v10    # "ar2":D
    .end local v16    # "dc2":D
    .end local v20    # "ds2":D
    :cond_17
    mul-int v38, v35, p4

    add-int v38, v38, v27

    aget-wide v39, p7, v27

    add-int v41, v27, p4

    aget-wide v41, p7, v41

    mul-double v41, v41, v6

    add-double v39, v39, v41

    aput-wide v39, p9, v38

    .line 425
    mul-int v38, v36, p4

    add-int v38, v38, v27

    const/16 v39, 0x1

    sub-int v39, p2, v39

    mul-int v39, v39, p4

    add-int v39, v39, v27

    aget-wide v39, p7, v39

    mul-double v39, v39, v2

    aput-wide v39, p9, v38

    .line 422
    add-int/lit8 v27, v27, 0x1

    goto :goto_16

    .line 433
    .restart local v4    # "ai2":D
    .restart local v10    # "ar2":D
    .restart local v16    # "dc2":D
    .restart local v20    # "ds2":D
    :cond_18
    sub-int v33, p2, v31

    .line 434
    .restart local v33    # "jc":I
    mul-double v38, v16, v10

    mul-double v40, v20, v4

    sub-double v12, v38, v40

    .line 435
    .local v12, "ar2h":D
    mul-double v38, v16, v4

    mul-double v40, v20, v10

    add-double v4, v38, v40

    .line 436
    move-wide v10, v12

    .line 437
    const/16 v27, 0x0

    :goto_18
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_19

    .line 431
    add-int/lit8 v31, v31, 0x1

    goto :goto_17

    .line 439
    :cond_19
    mul-int v38, v35, p4

    add-int v38, v38, v27

    aget-wide v39, p9, v38

    mul-int v41, v31, p4

    add-int v41, v41, v27

    aget-wide v41, p7, v41

    mul-double v41, v41, v10

    add-double v39, v39, v41

    aput-wide v39, p9, v38

    .line 440
    mul-int v38, v36, p4

    add-int v38, v38, v27

    aget-wide v39, p9, v38

    mul-int v41, v33, p4

    add-int v41, v41, v27

    aget-wide v41, p7, v41

    mul-double v41, v41, v4

    add-double v39, v39, v41

    aput-wide v39, p9, v38

    .line 437
    add-int/lit8 v27, v27, 0x1

    goto :goto_18

    .line 445
    .end local v4    # "ai2":D
    .end local v8    # "ar1h":D
    .end local v10    # "ar2":D
    .end local v12    # "ar2h":D
    .end local v16    # "dc2":D
    .end local v20    # "ds2":D
    .end local v33    # "jc":I
    .end local v36    # "lc":I
    :cond_1a
    const/16 v27, 0x0

    :goto_19
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_1b

    .line 444
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_6

    .line 446
    :cond_1b
    aget-wide v38, p9, v27

    mul-int v40, v31, p4

    add-int v40, v40, v27

    aget-wide v40, p7, v40

    add-double v38, v38, v40

    aput-wide v38, p9, v27

    .line 445
    add-int/lit8 v27, v27, 0x1

    goto :goto_19

    .line 452
    .restart local v34    # "k":I
    :cond_1c
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_1a
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_1d

    .line 450
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_7

    .line 454
    :cond_1d
    mul-int v38, v34, p2

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v34, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    aput-wide v39, p5, v38

    .line 452
    add-int/lit8 v24, v24, 0x1

    goto :goto_1a

    .line 460
    .end local v24    # "i":I
    .end local v34    # "k":I
    :cond_1e
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_1b
    move/from16 v0, v24

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 462
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_1c
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_1f

    .line 460
    add-int/lit8 v24, v24, 0x1

    goto :goto_1b

    .line 464
    :cond_1f
    mul-int v38, v34, p2

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v34, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    aput-wide v39, p5, v38

    .line 462
    add-int/lit8 v34, v34, 0x1

    goto :goto_1c

    .line 470
    .end local v24    # "i":I
    .end local v34    # "k":I
    :cond_20
    sub-int v33, p2, v31

    .line 471
    .restart local v33    # "jc":I
    mul-int/lit8 v32, v31, 0x2

    .line 472
    .local v32, "j2":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_1d
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_21

    .line 468
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_8

    .line 474
    :cond_21
    const/16 v38, 0x1

    sub-int v38, p1, v38

    const/16 v39, 0x1

    sub-int v39, v32, v39

    mul-int v40, v34, p2

    add-int v39, v39, v40

    mul-int v39, v39, p1

    add-int v38, v38, v39

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    aget-wide v39, p8, v39

    aput-wide v39, p5, v38

    .line 475
    mul-int v38, v34, p2

    add-int v38, v38, v32

    mul-int v38, v38, p1

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    aget-wide v39, p8, v39

    aput-wide v39, p5, v38

    .line 472
    add-int/lit8 v34, v34, 0x1

    goto :goto_1d

    .line 479
    .end local v32    # "j2":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    :cond_22
    move/from16 v0, v37

    move/from16 v1, p3

    if-lt v0, v1, :cond_25

    .line 481
    const/16 v31, 0x1

    :goto_1e
    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 483
    sub-int v33, p2, v31

    .line 484
    .restart local v33    # "jc":I
    mul-int/lit8 v32, v31, 0x2

    .line 485
    .restart local v32    # "j2":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_1f
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_23

    .line 481
    add-int/lit8 v31, v31, 0x1

    goto :goto_1e

    .line 487
    :cond_23
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_20
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_24

    .line 485
    add-int/lit8 v34, v34, 0x1

    goto :goto_1f

    .line 489
    :cond_24
    sub-int v25, p1, v24

    .line 490
    .local v25, "ic":I
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v34, p2

    add-int v39, v39, v32

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p8, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 491
    const/16 v38, 0x1

    sub-int v38, v25, v38

    const/16 v39, 0x1

    sub-int v39, v32, v39

    mul-int v40, v34, p2

    add-int v39, v39, v40

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p8, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 492
    mul-int v38, v34, p2

    add-int v38, v38, v32

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 493
    const/16 v38, 0x1

    sub-int v38, v32, v38

    mul-int v39, v34, p2

    add-int v38, v38, v39

    mul-int v38, v38, p1

    add-int v38, v38, v25

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    mul-int v41, v31, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 487
    add-int/lit8 v24, v24, 0x2

    goto/16 :goto_20

    .line 500
    .end local v24    # "i":I
    .end local v25    # "ic":I
    .end local v32    # "j2":I
    .end local v33    # "jc":I
    .end local v34    # "k":I
    :cond_25
    const/16 v31, 0x1

    :goto_21
    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 502
    sub-int v33, p2, v31

    .line 503
    .restart local v33    # "jc":I
    mul-int/lit8 v32, v31, 0x2

    .line 504
    .restart local v32    # "j2":I
    const/16 v24, 0x2

    .restart local v24    # "i":I
    :goto_22
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_26

    .line 500
    add-int/lit8 v31, v31, 0x1

    goto :goto_21

    .line 506
    :cond_26
    sub-int v25, p1, v24

    .line 507
    .restart local v25    # "ic":I
    const/16 v34, 0x0

    .restart local v34    # "k":I
    :goto_23
    move/from16 v0, v34

    move/from16 v1, p3

    if-lt v0, v1, :cond_27

    .line 504
    add-int/lit8 v24, v24, 0x2

    goto :goto_22

    .line 509
    :cond_27
    const/16 v38, 0x1

    sub-int v38, v24, v38

    mul-int v39, v34, p2

    add-int v39, v39, v32

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p8, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 510
    const/16 v38, 0x1

    sub-int v38, v25, v38

    const/16 v39, 0x1

    sub-int v39, v32, v39

    mul-int v40, v34, p2

    add-int v39, v39, v40

    mul-int v39, v39, p1

    add-int v38, v38, v39

    const/16 v39, 0x1

    sub-int v39, v24, v39

    mul-int v40, v31, p3

    add-int v40, v40, v34

    mul-int v40, v40, p1

    add-int v39, v39, v40

    aget-wide v39, p8, v39

    const/16 v41, 0x1

    sub-int v41, v24, v41

    mul-int v42, v33, p3

    add-int v42, v42, v34

    mul-int v42, v42, p1

    add-int v41, v41, v42

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 511
    mul-int v38, v34, p2

    add-int v38, v38, v32

    mul-int v38, v38, p1

    add-int v38, v38, v24

    mul-int v39, v31, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    mul-int v41, v33, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    add-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 512
    const/16 v38, 0x1

    sub-int v38, v32, v38

    mul-int v39, v34, p2

    add-int v38, v38, v39

    mul-int v38, v38, p1

    add-int v38, v38, v25

    mul-int v39, v33, p3

    add-int v39, v39, v34

    mul-int v39, v39, p1

    add-int v39, v39, v24

    aget-wide v39, p8, v39

    mul-int v41, v31, p3

    add-int v41, v41, v34

    mul-int v41, v41, p1

    add-int v41, v41, v24

    aget-wide v41, p8, v41

    sub-double v39, v39, v41

    aput-wide v39, p5, v38

    .line 507
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_23
.end method


# virtual methods
.method rfftb(I[D[D)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "r"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 199
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->rfftb1(I[D[DI)V

    goto :goto_0
.end method

.method rfftb1(I[D[DI)V
    .locals 30
    .param p1, "n"    # I
    .param p2, "c"    # [D
    .param p3, "wtable"    # [D
    .param p4, "offset"    # I

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->tempData:[D

    move-object v9, v0

    .line 212
    .local v9, "td":[D
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object v2, v9

    move v3, v5

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    add-int v5, v5, p4

    aget-wide v12, p3, v5

    move-wide v0, v12

    double-to-int v0, v0

    move/from16 v29, v0

    .line 215
    .local v29, "nf":I
    const/16 v28, 0x0

    .line 216
    .local v28, "na":I
    const/4 v7, 0x1

    .line 217
    .local v7, "l1":I
    add-int v11, p1, p4

    .line 218
    .local v11, "iw":I
    const/16 v26, 0x1

    .local v26, "k1":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 288
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_0

    .line 289
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_c

    .line 291
    .end local v24    # "i":I
    :cond_0
    return-void

    .line 220
    :cond_1
    add-int/lit8 v5, v26, 0x1

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v5, v6

    add-int v5, v5, p4

    aget-wide v12, p3, v5

    move-wide v0, v12

    double-to-int v0, v0

    move/from16 v25, v0

    .line 221
    .local v25, "ip":I
    mul-int v27, v25, v7

    .line 222
    .local v27, "l2":I
    div-int v6, p1, v27

    .line 223
    .local v6, "ido":I
    mul-int v16, v6, v7

    .line 224
    .local v16, "idl1":I
    const/4 v5, 0x4

    move/from16 v0, v25

    move v1, v5

    if-ne v0, v1, :cond_4

    .line 226
    if-nez v28, :cond_3

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 228
    invoke-direct/range {v5 .. v11}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radb4(II[D[D[DI)V

    .line 234
    .end local v16    # "idl1":I
    :goto_2
    const/4 v5, 0x1

    sub-int v28, v5, v28

    .line 284
    :cond_2
    :goto_3
    move/from16 v7, v27

    .line 285
    const/4 v5, 0x1

    sub-int v5, v25, v5

    mul-int/2addr v5, v6

    add-int/2addr v11, v5

    .line 218
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .restart local v16    # "idl1":I
    :cond_3
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    .line 232
    invoke-direct/range {v12 .. v18}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radb4(II[D[D[DI)V

    goto :goto_2

    .line 236
    :cond_4
    const/4 v5, 0x2

    move/from16 v0, v25

    move v1, v5

    if-ne v0, v1, :cond_6

    .line 238
    if-nez v28, :cond_5

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 240
    invoke-direct/range {v5 .. v11}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radb2(II[D[D[DI)V

    .line 246
    .end local v16    # "idl1":I
    :goto_4
    const/4 v5, 0x1

    sub-int v28, v5, v28

    goto :goto_3

    .restart local v16    # "idl1":I
    :cond_5
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    .line 244
    invoke-direct/range {v12 .. v18}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radb2(II[D[D[DI)V

    goto :goto_4

    .line 248
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, v25

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 250
    if-nez v28, :cond_7

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 252
    invoke-direct/range {v5 .. v11}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radb3(II[D[D[DI)V

    .line 258
    .end local v16    # "idl1":I
    :goto_5
    const/4 v5, 0x1

    sub-int v28, v5, v28

    goto :goto_3

    .restart local v16    # "idl1":I
    :cond_7
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    .line 256
    invoke-direct/range {v12 .. v18}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radb3(II[D[D[DI)V

    goto :goto_5

    .line 260
    :cond_8
    const/4 v5, 0x5

    move/from16 v0, v25

    move v1, v5

    if-ne v0, v1, :cond_a

    .line 262
    if-nez v28, :cond_9

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 264
    invoke-direct/range {v5 .. v11}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radb5(II[D[D[DI)V

    .line 270
    .end local v16    # "idl1":I
    :goto_6
    const/4 v5, 0x1

    sub-int v28, v5, v28

    goto :goto_3

    .restart local v16    # "idl1":I
    :cond_9
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    .line 268
    invoke-direct/range {v12 .. v18}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radb5(II[D[D[DI)V

    goto :goto_6

    .line 274
    :cond_a
    if-nez v28, :cond_b

    move-object/from16 v12, p0

    move v13, v6

    move/from16 v14, v25

    move v15, v7

    move-object/from16 v17, p2

    move-object/from16 v18, p2

    move-object/from16 v19, p2

    move-object/from16 v20, v9

    move-object/from16 v21, v9

    move-object/from16 v22, p3

    move/from16 v23, v11

    .line 276
    invoke-direct/range {v12 .. v23}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radbg(IIII[D[D[D[D[D[DI)V

    .line 282
    :goto_7
    const/4 v5, 0x1

    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    sub-int v28, v5, v28

    goto/16 :goto_3

    :cond_b
    move-object/from16 v12, p0

    move v13, v6

    move/from16 v14, v25

    move v15, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    move-object/from16 v19, v9

    move-object/from16 v20, p2

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move/from16 v23, v11

    .line 280
    invoke-direct/range {v12 .. v23}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radbg(IIII[D[D[D[D[D[DI)V

    goto :goto_7

    .line 290
    .end local v6    # "ido":I
    .end local v16    # "idl1":I
    .end local v25    # "ip":I
    .end local v27    # "l2":I
    .restart local v24    # "i":I
    :cond_c
    aget-wide v12, v9, v24

    aput-wide v12, p2, v24

    .line 289
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1
.end method

.method rfftf(I[D[D)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "r"    # [D
    .param p3, "wtable"    # [D

    .prologue
    .line 123
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->rfftf1(I[D[DI)V

    goto :goto_0
.end method

.method rfftf1(I[D[DI)V
    .locals 30
    .param p1, "n"    # I
    .param p2, "c"    # [D
    .param p3, "wtable"    # [D
    .param p4, "offset"    # I

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->tempData:[D

    move-object v9, v0

    .line 134
    .local v9, "td":[D
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object v2, v9

    move v3, v5

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    add-int v5, v5, p4

    aget-wide v12, p3, v5

    move-wide v0, v12

    double-to-int v0, v0

    move/from16 v29, v0

    .line 137
    .local v29, "nf":I
    const/16 v28, 0x1

    .line 138
    .local v28, "na":I
    move/from16 v27, p1

    .line 139
    .local v27, "l2":I
    const/4 v5, 0x1

    sub-int v5, p1, v5

    add-int v5, v5, p1

    add-int v11, v5, p4

    .line 141
    .local v11, "iw":I
    const/16 v25, 0x1

    .local v25, "k1":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 184
    if-nez v28, :cond_0

    .line 185
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, p1

    if-lt v0, v1, :cond_c

    .line 187
    .end local v24    # "i":I
    :cond_0
    return-void

    .line 142
    :cond_1
    sub-int v26, v29, v25

    .line 143
    .local v26, "kh":I
    add-int/lit8 v5, v26, 0x2

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v5, v6

    add-int v5, v5, p4

    aget-wide v12, p3, v5

    double-to-int v14, v12

    .line 144
    .local v14, "ip":I
    div-int v7, v27, v14

    .line 145
    .local v7, "l1":I
    div-int v6, p1, v27

    .line 146
    .local v6, "ido":I
    mul-int v16, v6, v7

    .line 147
    .local v16, "idl1":I
    const/4 v5, 0x1

    sub-int v5, v14, v5

    mul-int/2addr v5, v6

    sub-int/2addr v11, v5

    .line 148
    const/4 v5, 0x1

    sub-int v28, v5, v28

    .line 149
    const/4 v5, 0x4

    if-ne v14, v5, :cond_3

    .line 150
    if-nez v28, :cond_2

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 151
    invoke-direct/range {v5 .. v11}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radf4(II[D[D[DI)V

    .line 180
    .end local v14    # "ip":I
    .end local v16    # "idl1":I
    :goto_2
    move/from16 v27, v7

    .line 141
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .restart local v14    # "ip":I
    .restart local v16    # "idl1":I
    :cond_2
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    .line 153
    invoke-direct/range {v12 .. v18}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radf4(II[D[D[DI)V

    goto :goto_2

    .line 154
    :cond_3
    const/4 v5, 0x2

    if-ne v14, v5, :cond_5

    .line 155
    if-nez v28, :cond_4

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 156
    invoke-direct/range {v5 .. v11}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radf2(II[D[D[DI)V

    goto :goto_2

    :cond_4
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    .line 158
    invoke-direct/range {v12 .. v18}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radf2(II[D[D[DI)V

    goto :goto_2

    .line 159
    :cond_5
    const/4 v5, 0x3

    if-ne v14, v5, :cond_7

    .line 160
    if-nez v28, :cond_6

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 161
    invoke-direct/range {v5 .. v11}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radf3(II[D[D[DI)V

    goto :goto_2

    :cond_6
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    .line 163
    invoke-direct/range {v12 .. v18}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radf3(II[D[D[DI)V

    goto :goto_2

    .line 164
    :cond_7
    const/4 v5, 0x5

    if-ne v14, v5, :cond_9

    .line 165
    if-nez v28, :cond_8

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 166
    invoke-direct/range {v5 .. v11}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radf5(II[D[D[DI)V

    goto :goto_2

    :cond_8
    move-object/from16 v12, p0

    move v13, v6

    move v14, v7

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v11

    .line 168
    invoke-direct/range {v12 .. v18}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radf5(II[D[D[DI)V

    goto :goto_2

    .line 170
    :cond_9
    const/4 v5, 0x1

    if-ne v6, v5, :cond_a

    .line 171
    const/4 v5, 0x1

    sub-int v28, v5, v28

    .line 172
    :cond_a
    if-nez v28, :cond_b

    move-object/from16 v12, p0

    move v13, v6

    move v15, v7

    move-object/from16 v17, p2

    move-object/from16 v18, p2

    move-object/from16 v19, p2

    move-object/from16 v20, v9

    move-object/from16 v21, v9

    move-object/from16 v22, p3

    move/from16 v23, v11

    .line 173
    invoke-direct/range {v12 .. v23}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radfg(IIII[D[D[D[D[D[DI)V

    .line 174
    const/16 v28, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v12, p0

    move v13, v6

    move v15, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    move-object/from16 v19, v9

    move-object/from16 v20, p2

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move/from16 v23, v11

    .line 176
    invoke-direct/range {v12 .. v23}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->radfg(IIII[D[D[D[D[D[DI)V

    .line 177
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 186
    .end local v6    # "ido":I
    .end local v7    # "l1":I
    .end local v14    # "ip":I
    .end local v16    # "idl1":I
    .end local v26    # "kh":I
    .restart local v24    # "i":I
    :cond_c
    aget-wide v12, v9, v24

    aput-wide v12, p2, v24

    .line 185
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1
.end method

.method rffti(I[D)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "wtable"    # [D

    .prologue
    .line 21
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->rffti1(I[DI)V

    goto :goto_0
.end method

.method rffti1(I[DI)V
    .locals 32
    .param p1, "n"    # I
    .param p2, "wtable"    # [D
    .param p3, "offset"    # I

    .prologue
    .line 33
    const/16 v27, 0x0

    .line 43
    .local v27, "ntry":I
    move/from16 v0, p1

    new-array v0, v0, [D

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->tempData:[D

    .line 45
    move/from16 v24, p1

    .line 46
    .local v24, "nl":I
    const/16 v22, 0x0

    .line 47
    .local v22, "nf":I
    const/16 v17, 0x0

    .line 52
    .local v17, "j":I
    :cond_0
    add-int/lit8 v17, v17, 0x1

    .line 53
    const/16 v28, 0x4

    move/from16 v0, v17

    move/from16 v1, v28

    if-gt v0, v1, :cond_4

    .line 54
    sget-object v28, Lca/uol/aig/fftpack/RealDoubleFFT_Mixed;->NTRY_H:[I

    const/16 v29, 0x1

    sub-int v29, v17, v29

    aget v27, v28, v29

    .line 59
    :cond_1
    :goto_0
    div-int v25, v24, v27

    .line 60
    .local v25, "nq":I
    mul-int v28, v27, v25

    sub-int v26, v24, v28

    .line 61
    .local v26, "nr":I
    if-nez v26, :cond_0

    .line 62
    add-int/lit8 v22, v22, 0x1

    .line 63
    add-int/lit8 v28, v22, 0x1

    mul-int/lit8 v29, p1, 0x2

    add-int v28, v28, v29

    add-int v28, v28, p3

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v29, v0

    aput-wide v29, p2, v28

    .line 65
    move/from16 v24, v25

    .line 66
    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    const/16 v28, 0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 68
    const/4 v10, 0x2

    .local v10, "i":I
    :goto_1
    move v0, v10

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 73
    mul-int/lit8 v28, p1, 0x2

    add-int/lit8 v28, v28, 0x2

    add-int v28, v28, p3

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    aput-wide v29, p2, v28

    .line 75
    .end local v10    # "i":I
    :cond_2
    const/16 v28, 0x1

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 78
    mul-int/lit8 v28, p1, 0x2

    add-int/lit8 v28, v28, 0x0

    add-int v28, v28, p3

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v29, v0

    aput-wide v29, p2, v28

    .line 79
    mul-int/lit8 v28, p1, 0x2

    add-int/lit8 v28, v28, 0x1

    add-int v28, v28, p3

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v29, v0

    aput-wide v29, p2, v28

    .line 80
    const-wide v28, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v4, v28, v30

    .line 81
    .local v4, "argh":D
    const/16 v16, 0x0

    .line 82
    .local v16, "is":I
    const/16 v28, 0x1

    sub-int v23, v22, v28

    .line 83
    .local v23, "nfm1":I
    const/16 v19, 0x1

    .line 84
    .local v19, "l1":I
    if-nez v23, :cond_6

    .line 111
    :cond_3
    return-void

    .line 56
    .end local v4    # "argh":D
    .end local v16    # "is":I
    .end local v19    # "l1":I
    .end local v23    # "nfm1":I
    .end local v25    # "nq":I
    .end local v26    # "nr":I
    :cond_4
    add-int/lit8 v27, v27, 0x2

    goto :goto_0

    .line 70
    .restart local v10    # "i":I
    .restart local v25    # "nq":I
    .restart local v26    # "nr":I
    :cond_5
    sub-int v28, v22, v10

    add-int/lit8 v11, v28, 0x2

    .line 71
    .local v11, "ib":I
    add-int/lit8 v28, v11, 0x1

    mul-int/lit8 v29, p1, 0x2

    add-int v28, v28, v29

    add-int v28, v28, p3

    mul-int/lit8 v29, p1, 0x2

    add-int v29, v29, v11

    add-int v29, v29, p3

    aget-wide v29, p2, v29

    aput-wide v29, p2, v28

    .line 68
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 85
    .end local v10    # "i":I
    .end local v11    # "ib":I
    .restart local v4    # "argh":D
    .restart local v16    # "is":I
    .restart local v19    # "l1":I
    .restart local v23    # "nfm1":I
    :cond_6
    const/16 v18, 0x1

    .local v18, "k1":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_3

    .line 87
    add-int/lit8 v28, v18, 0x1

    mul-int/lit8 v29, p1, 0x2

    add-int v28, v28, v29

    add-int v28, v28, p3

    aget-wide v28, p2, v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move v14, v0

    .line 88
    .local v14, "ip":I
    const/16 v21, 0x0

    .line 89
    .local v21, "ld":I
    mul-int v20, v19, v14

    .line 90
    .local v20, "l2":I
    div-int v12, p1, v20

    .line 91
    .local v12, "ido":I
    const/16 v28, 0x1

    sub-int v15, v14, v28

    .line 92
    .local v15, "ipm":I
    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move v1, v15

    if-le v0, v1, :cond_7

    .line 109
    move/from16 v19, v20

    .line 85
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 94
    :cond_7
    add-int v21, v21, v19

    .line 95
    move/from16 v10, v16

    .line 96
    .restart local v10    # "i":I
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v6, v28, v4

    .line 98
    .local v6, "argld":D
    const-wide/16 v8, 0x0

    .line 99
    .local v8, "fi":D
    const/4 v13, 0x3

    .local v13, "ii":I
    :goto_4
    if-le v13, v12, :cond_8

    .line 107
    add-int v16, v16, v12

    .line 92
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 101
    :cond_8
    add-int/lit8 v10, v10, 0x2

    .line 102
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v28

    .line 103
    mul-double v2, v8, v6

    .line 104
    .local v2, "arg":D
    const/16 v28, 0x2

    sub-int v28, v10, v28

    add-int v28, v28, p1

    add-int v28, v28, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    aput-wide v29, p2, v28

    .line 105
    const/16 v28, 0x1

    sub-int v28, v10, v28

    add-int v28, v28, p1

    add-int v28, v28, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    aput-wide v29, p2, v28

    .line 99
    add-int/lit8 v13, v13, 0x2

    goto :goto_4
.end method
