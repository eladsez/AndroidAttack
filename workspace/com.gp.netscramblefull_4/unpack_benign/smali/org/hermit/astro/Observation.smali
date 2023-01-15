.class public Lorg/hermit/astro/Observation;
.super Ljava/lang/Object;
.source "Observation.java"

# interfaces
.implements Lorg/hermit/astro/AstroConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/astro/Observation$Calc;,
        Lorg/hermit/astro/Observation$NutationTerm;,
        Lorg/hermit/astro/Observation$OField;
    }
.end annotation


# static fields
.field private static final ALL_FIELDS:[Lorg/hermit/astro/Observation$OField;

.field private static final NUM_FIELDS:I

.field private static final TAG:Ljava/lang/String; = "onwatch"

.field private static final nutationTerms:[Lorg/hermit/astro/Observation$NutationTerm;


# instance fields
.field private celestialBodies:[Lorg/hermit/astro/Body;

.field private dataCache:[Ljava/lang/Double;

.field private observationTime:Lorg/hermit/astro/Instant;

.field private observerAlt:D

.field private observerPos:Lorg/hermit/geo/Position;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 176
    invoke-static {}, Lorg/hermit/astro/Observation$OField;->values()[Lorg/hermit/astro/Observation$OField;

    move-result-object v0

    sput-object v0, Lorg/hermit/astro/Observation;->ALL_FIELDS:[Lorg/hermit/astro/Observation$OField;

    .line 178
    sget-object v0, Lorg/hermit/astro/Observation;->ALL_FIELDS:[Lorg/hermit/astro/Observation$OField;

    array-length v0, v0

    sput v0, Lorg/hermit/astro/Observation;->NUM_FIELDS:I

    .line 567
    new-instance v0, Lorg/hermit/astro/Observation$1;

    invoke-direct {v0}, Lorg/hermit/astro/Observation$1;-><init>()V

    .line 570
    .local v0, "calc":Lorg/hermit/astro/Observation$Calc;
    sget-object v1, Lorg/hermit/astro/Observation$OField;->RHO_SIN_PHI1:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 571
    sget-object v1, Lorg/hermit/astro/Observation$OField;->RHO_COS_PHI1:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 600
    new-instance v0, Lorg/hermit/astro/Observation$2;

    .end local v0    # "calc":Lorg/hermit/astro/Observation$Calc;
    invoke-direct {v0}, Lorg/hermit/astro/Observation$2;-><init>()V

    .line 603
    .restart local v0    # "calc":Lorg/hermit/astro/Observation$Calc;
    sget-object v1, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_LONGITUDE:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 604
    sget-object v1, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 652
    sget-object v0, Lorg/hermit/astro/Observation$OField;->MEAN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    .end local v0    # "calc":Lorg/hermit/astro/Observation$Calc;
    new-instance v1, Lorg/hermit/astro/Observation$3;

    invoke-direct {v1}, Lorg/hermit/astro/Observation$3;-><init>()V

    invoke-static {v0, v1}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 682
    sget-object v0, Lorg/hermit/astro/Observation$OField;->TRUE_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    new-instance v1, Lorg/hermit/astro/Observation$4;

    invoke-direct {v1}, Lorg/hermit/astro/Observation$4;-><init>()V

    invoke-static {v0, v1}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 704
    new-instance v0, Lorg/hermit/astro/Observation$5;

    invoke-direct {v0}, Lorg/hermit/astro/Observation$5;-><init>()V

    .line 707
    .restart local v0    # "calc":Lorg/hermit/astro/Observation$Calc;
    sget-object v1, Lorg/hermit/astro/Observation$OField;->GMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 708
    sget-object v1, Lorg/hermit/astro/Observation$OField;->GMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 709
    sget-object v1, Lorg/hermit/astro/Observation$OField;->LMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 710
    sget-object v1, Lorg/hermit/astro/Observation$OField;->LMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 756
    new-instance v0, Lorg/hermit/astro/Observation$6;

    .end local v0    # "calc":Lorg/hermit/astro/Observation$Calc;
    invoke-direct {v0}, Lorg/hermit/astro/Observation$6;-><init>()V

    .line 759
    .restart local v0    # "calc":Lorg/hermit/astro/Observation$Calc;
    sget-object v1, Lorg/hermit/astro/Observation$OField;->GAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 760
    sget-object v1, Lorg/hermit/astro/Observation$OField;->GAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 761
    sget-object v1, Lorg/hermit/astro/Observation$OField;->LAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 762
    sget-object v1, Lorg/hermit/astro/Observation$OField;->LAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v1, v0}, Lorg/hermit/astro/Observation$OField;->access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    .line 1088
    const/16 v0, 0x3f

    new-array v14, v0, [Lorg/hermit/astro/Observation$NutationTerm;

    .end local v0    # "calc":Lorg/hermit/astro/Observation$Calc;
    const/4 v15, 0x0

    .line 1089
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide v6, -0x3efb012000000000L    # -171996.0

    const-wide v8, -0x3f9a39999999999aL    # -174.2

    const-wide v10, 0x40f6779000000000L    # 92025.0

    const-wide v12, 0x4021cccccccccccdL    # 8.9

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/4 v15, 0x1

    .line 1090
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide v6, -0x3f363e8000000000L    # -13187.0

    const-wide v8, -0x4006666666666666L    # -1.6

    const-wide v10, 0x40b6680000000000L    # 5736.0

    const-wide v12, -0x3ff7333333333333L    # -3.1

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/4 v15, 0x2

    .line 1091
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide v6, -0x3f5e3c0000000000L    # -2274.0

    const-wide v8, -0x4036666666666666L    # -0.2

    const-wide v10, 0x408e880000000000L    # 977.0

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/4 v15, 0x3

    .line 1092
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-wide v6, 0x40a01c0000000000L    # 2062.0

    const-wide v8, 0x3fc999999999999aL    # 0.2

    const-wide v10, -0x3f74080000000000L    # -895.0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/4 v15, 0x4

    .line 1093
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, 0x4096480000000000L    # 1426.0

    const-wide v8, -0x3ff4cccccccccccdL    # -3.4

    const-wide/high16 v10, 0x404b000000000000L    # 54.0

    const-wide v12, -0x4046666666666666L    # -0.1

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/4 v15, 0x5

    .line 1094
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, 0x4086400000000000L    # 712.0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, -0x3fe4000000000000L    # -7.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/4 v15, 0x6

    .line 1095
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide v6, -0x3f7fd80000000000L    # -517.0

    const-wide v8, 0x3ff3333333333333L    # 1.2

    const-wide/high16 v10, 0x406c000000000000L    # 224.0

    const-wide v12, -0x401ccccccccccccdL    # -0.6

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/4 v15, 0x7

    .line 1096
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide v6, -0x3f87e00000000000L    # -386.0

    const-wide v8, -0x4026666666666666L    # -0.4

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x8

    .line 1097
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide v6, -0x3f8d300000000000L    # -301.0

    const-wide/16 v8, 0x0

    const-wide v10, 0x4060200000000000L    # 129.0

    const-wide v12, -0x4046666666666666L    # -0.1

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x9

    .line 1098
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide v6, 0x406b200000000000L    # 217.0

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    const-wide v10, -0x3fa8400000000000L    # -95.0

    const-wide v12, 0x3fd3333333333333L    # 0.3

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0xa

    .line 1099
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x3f9c400000000000L    # -158.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0xb

    .line 1100
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide v6, 0x4060200000000000L    # 129.0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide v10, -0x3fae800000000000L    # -70.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0xc

    .line 1101
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide v6, 0x405ec00000000000L    # 123.0

    const-wide/16 v8, 0x0

    const-wide v10, -0x3fb5800000000000L    # -53.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0xd

    .line 1102
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, 0x404f800000000000L    # 63.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0xe

    .line 1103
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide v6, 0x404f800000000000L    # 63.0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide v10, -0x3fbf800000000000L    # -33.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0xf

    .line 1104
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide v6, -0x3fb2800000000000L    # -59.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403a000000000000L    # 26.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x10

    .line 1105
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fb3000000000000L    # -58.0

    const-wide v8, -0x4046666666666666L    # -0.1

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x11

    .line 1106
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide v6, -0x3fb6800000000000L    # -51.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403b000000000000L    # 27.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x12

    .line 1107
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4048000000000000L    # 48.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x13

    .line 1108
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4047000000000000L    # 46.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, -0x3fc8000000000000L    # -24.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x14

    .line 1109
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3fbd000000000000L    # -38.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x15

    .line 1110
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3fc1000000000000L    # -31.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x402a000000000000L    # 13.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x16

    .line 1111
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, 0x403d000000000000L    # 29.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x17

    .line 1112
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, 0x403d000000000000L    # 29.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, -0x3fd8000000000000L    # -12.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x18

    .line 1113
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x19

    .line 1114
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/high16 v6, -0x3fca000000000000L    # -22.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x1a

    .line 1115
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, -0x3fdc000000000000L    # -10.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x1b

    .line 1116
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4031000000000000L    # 17.0

    const-wide v8, -0x4046666666666666L    # -0.1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x1c

    .line 1117
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, -0x3fe0000000000000L    # -8.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x1d

    .line 1118
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3fd0000000000000L    # -16.0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x1e

    .line 1119
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fd2000000000000L    # -15.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x1f

    .line 1120
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fd6000000000000L    # -13.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x20

    .line 1121
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fd8000000000000L    # -12.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x21

    .line 1122
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x22

    .line 1123
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fdc000000000000L    # -10.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x23

    .line 1124
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3fe0000000000000L    # -8.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x24

    .line 1125
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, -0x3ff8000000000000L    # -3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x25

    .line 1126
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x3fe4000000000000L    # -7.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x26

    .line 1127
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3fe4000000000000L    # -7.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x27

    .line 1128
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fe4000000000000L    # -7.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x28

    .line 1129
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x29

    .line 1130
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, -0x3ff8000000000000L    # -3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x2a

    .line 1131
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, -0x3ff8000000000000L    # -3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x2b

    .line 1132
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x2c

    .line 1133
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x2d

    .line 1134
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x2e

    .line 1135
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fec000000000000L    # -5.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x2f

    .line 1136
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fec000000000000L    # -5.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x30

    .line 1137
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v6, -0x3fec000000000000L    # -5.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x31

    .line 1138
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x32

    .line 1139
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x33

    .line 1140
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x34

    .line 1141
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x3ff0000000000000L    # -4.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x35

    .line 1142
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x3ff0000000000000L    # -4.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x36

    .line 1143
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x3ff0000000000000L    # -4.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x37

    .line 1144
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x38

    .line 1145
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3ff8000000000000L    # -3.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x39

    .line 1146
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x3ff8000000000000L    # -3.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x3a

    .line 1147
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x3ff8000000000000L    # -3.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x3b

    .line 1148
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3ff8000000000000L    # -3.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x3c

    .line 1149
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3ff8000000000000L    # -3.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x3d

    .line 1150
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3ff8000000000000L    # -3.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    const/16 v15, 0x3e

    .line 1151
    new-instance v0, Lorg/hermit/astro/Observation$NutationTerm;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/high16 v6, -0x3ff8000000000000L    # -3.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v0 .. v13}, Lorg/hermit/astro/Observation$NutationTerm;-><init>(IIIIIDDDD)V

    aput-object v0, v14, v15

    .line 1088
    sput-object v14, Lorg/hermit/astro/Observation;->nutationTerms:[Lorg/hermit/astro/Observation$NutationTerm;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/hermit/astro/Observation;-><init>(J)V

    .line 242
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "jd"    # D

    .prologue
    .line 252
    new-instance v0, Lorg/hermit/astro/Instant;

    invoke-direct {v0, p1, p2}, Lorg/hermit/astro/Instant;-><init>(D)V

    invoke-direct {p0, v0}, Lorg/hermit/astro/Observation;-><init>(Lorg/hermit/astro/Instant;)V

    .line 253
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 221
    new-instance v0, Lorg/hermit/astro/Instant;

    invoke-direct {v0, p1, p2}, Lorg/hermit/astro/Instant;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/hermit/astro/Observation;-><init>(Lorg/hermit/astro/Instant;)V

    .line 222
    return-void
.end method

.method public constructor <init>(JLorg/hermit/geo/Position;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 233
    new-instance v0, Lorg/hermit/astro/Instant;

    invoke-direct {v0, p1, p2}, Lorg/hermit/astro/Instant;-><init>(J)V

    invoke-direct {p0, v0, p3}, Lorg/hermit/astro/Observation;-><init>(Lorg/hermit/astro/Instant;Lorg/hermit/geo/Position;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Lorg/hermit/astro/Instant;)V
    .locals 3
    .param p1, "i"    # Lorg/hermit/astro/Instant;

    .prologue
    const-wide/16 v1, 0x0

    .line 191
    new-instance v0, Lorg/hermit/geo/Position;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/hermit/geo/Position;-><init>(DD)V

    invoke-direct {p0, p1, v0}, Lorg/hermit/astro/Observation;-><init>(Lorg/hermit/astro/Instant;Lorg/hermit/geo/Position;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/hermit/astro/Instant;Lorg/hermit/geo/Position;)V
    .locals 2
    .param p1, "i"    # Lorg/hermit/astro/Instant;
    .param p2, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    iput-object v0, p0, Lorg/hermit/astro/Observation;->observationTime:Lorg/hermit/astro/Instant;

    .line 1164
    iput-object v0, p0, Lorg/hermit/astro/Observation;->observerPos:Lorg/hermit/geo/Position;

    .line 1167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/astro/Observation;->observerAlt:D

    .line 202
    iput-object p1, p0, Lorg/hermit/astro/Observation;->observationTime:Lorg/hermit/astro/Instant;

    .line 203
    iput-object p2, p0, Lorg/hermit/astro/Observation;->observerPos:Lorg/hermit/geo/Position;

    .line 206
    sget v0, Lorg/hermit/astro/Body;->NUM_BODIES:I

    new-array v0, v0, [Lorg/hermit/astro/Body;

    iput-object v0, p0, Lorg/hermit/astro/Observation;->celestialBodies:[Lorg/hermit/astro/Body;

    .line 209
    sget v0, Lorg/hermit/astro/Observation;->NUM_FIELDS:I

    new-array v0, v0, [Ljava/lang/Double;

    iput-object v0, p0, Lorg/hermit/astro/Observation;->dataCache:[Ljava/lang/Double;

    .line 210
    invoke-virtual {p0}, Lorg/hermit/astro/Observation;->invalidate()V

    .line 211
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/astro/Observation;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lorg/hermit/astro/Observation;->calcRhoPhiPrime()V

    return-void
.end method

.method static synthetic access$1(Lorg/hermit/astro/Observation;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Lorg/hermit/astro/Observation;->calcNutation()V

    return-void
.end method

.method static synthetic access$2(Lorg/hermit/astro/Observation;)V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0}, Lorg/hermit/astro/Observation;->calcMeanObliquity()V

    return-void
.end method

.method static synthetic access$3(Lorg/hermit/astro/Observation;)V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Lorg/hermit/astro/Observation;->calcTrueObliquity()V

    return-void
.end method

.method static synthetic access$4(Lorg/hermit/astro/Observation;)V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Lorg/hermit/astro/Observation;->calcMeanSidereal()V

    return-void
.end method

.method static synthetic access$5(Lorg/hermit/astro/Observation;)V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0}, Lorg/hermit/astro/Observation;->calcApparentSidereal()V

    return-void
.end method

.method public static angleAsDms(Ljava/lang/Double;)Ljava/lang/String;
    .locals 11
    .param p0, "ar"    # Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 986
    if-nez p0, :cond_0

    .line 987
    const-string v6, "--"

    .line 998
    :goto_0
    return-object v6

    .line 989
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 991
    .local v0, "a":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_1

    const/4 v6, -0x1

    move v4, v6

    .line 992
    .local v4, "s":I
    :goto_1
    int-to-double v6, v4

    mul-double/2addr v0, v6

    .line 994
    double-to-int v6, v0

    mul-int v2, v6, v4

    .line 995
    .local v2, "deg":I
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v6, v0

    double-to-int v6, v6

    rem-int/lit8 v3, v6, 0x3c

    .line 996
    .local v3, "min":I
    const-wide v6, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v6, v0

    double-to-float v6, v6

    const/high16 v7, 0x42700000    # 60.0f

    rem-float v5, v6, v7

    .line 998
    .local v5, "sec":F
    const-string v6, "%3d\u00b0%02d\'%04.1f\""

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .end local v2    # "deg":I
    .end local v3    # "min":I
    .end local v4    # "s":I
    .end local v5    # "sec":F
    :cond_1
    move v4, v10

    .line 991
    goto :goto_1
.end method

.method public static angleAsHms(Ljava/lang/Double;)Ljava/lang/String;
    .locals 11
    .param p0, "ar"    # Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide v9, 0x4076800000000000L    # 360.0

    .line 1013
    if-nez p0, :cond_0

    .line 1014
    const-string v7, "--"

    .line 1027
    :goto_0
    return-object v7

    .line 1016
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    rem-double v0, v7, v9

    .line 1017
    .local v0, "a":D
    const-wide/16 v7, 0x0

    cmpg-double v7, v0, v7

    if-gez v7, :cond_1

    .line 1018
    add-double/2addr v0, v9

    .line 1021
    :cond_1
    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    div-double v2, v0, v7

    .line 1023
    .local v2, "h":D
    double-to-int v4, v2

    .line 1024
    .local v4, "hour":I
    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    mul-double/2addr v7, v2

    double-to-int v7, v7

    rem-int/lit8 v5, v7, 0x3c

    .line 1025
    .local v5, "min":I
    const-wide v7, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v7, v2

    double-to-float v7, v7

    const/high16 v8, 0x42700000    # 60.0f

    rem-float v6, v7, v8

    .line 1027
    .local v6, "sec":F
    const-string v7, "%3dh%02d\'%04.1f\""

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private calcApparentSidereal()V
    .locals 29

    .prologue
    .line 765
    sget-object v25, Lorg/hermit/astro/Observation$OField;->TRUE_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v23

    .line 766
    .local v23, "\u03b5":D
    sget-object v25, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_LONGITUDE:Lorg/hermit/astro/Observation$OField;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v21

    .line 767
    .local v21, "\u0394\u03c8":D
    sget-object v25, Lorg/hermit/astro/Observation$OField;->GMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v9

    .line 768
    .local v9, "GMSTMidnight":D
    sget-object v25, Lorg/hermit/astro/Observation$OField;->GMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v7

    .line 769
    .local v7, "GMST":D
    sget-object v25, Lorg/hermit/astro/Observation$OField;->LMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v17

    .line 770
    .local v17, "LMSTMidnight":D
    sget-object v25, Lorg/hermit/astro/Observation$OField;->LMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v15

    .line 773
    .local v15, "LMST":D
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    const-wide/high16 v27, 0x402e000000000000L    # 15.0

    div-double v19, v25, v27

    .line 775
    .local v19, "corr":D
    add-double v25, v9, v19

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    rem-double v5, v25, v27

    .line 776
    .local v5, "GASTMidnight":D
    add-double v25, v7, v19

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    rem-double v3, v25, v27

    .line 777
    .local v3, "GAST":D
    add-double v25, v17, v19

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    rem-double v13, v25, v27

    .line 778
    .local v13, "LASTMidnight":D
    add-double v25, v15, v19

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    rem-double v11, v25, v27

    .line 780
    .local v11, "LAST":D
    sget-object v25, Lorg/hermit/astro/Observation$OField;->GAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 781
    sget-object v25, Lorg/hermit/astro/Observation$OField;->GAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 782
    sget-object v25, Lorg/hermit/astro/Observation$OField;->LAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 783
    sget-object v25, Lorg/hermit/astro/Observation$OField;->LAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 784
    return-void
.end method

.method private calcMeanObliquity()V
    .locals 19

    .prologue
    .line 657
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/astro/Observation;->getTd()D

    move-result-wide v15

    const-wide v17, 0x4142b42c80000000L    # 2451545.0

    sub-double v11, v15, v17

    .line 658
    .local v11, "j":D
    const-wide v15, 0x40e1d5a000000000L    # 36525.0

    div-double v3, v11, v15

    .line 659
    .local v3, "T":D
    mul-double v5, v3, v3

    .line 660
    .local v5, "T2":D
    mul-double v7, v5, v3

    .line 663
    .local v7, "T3":D
    const-wide v15, 0x40476851eb851eb8L    # 46.815

    mul-double/2addr v15, v3

    const-wide v17, 0x3f4355475a31a4beL    # 5.9E-4

    mul-double v17, v17, v5

    add-double v15, v15, v17

    const-wide v17, 0x3f5db445ed4a1ad6L    # 0.001813

    mul-double v17, v17, v7

    sub-double v9, v15, v17

    .line 664
    .local v9, "delta":D
    const-wide v15, 0x40ac200000000000L    # 3600.0

    div-double v15, v9, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 667
    sget-wide v15, Lorg/hermit/astro/Observation;->ε_2000:D

    sub-double v13, v15, v9

    .line 669
    .local v13, "\u03b50":D
    sget-object v15, Lorg/hermit/astro/Observation$OField;->MEAN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 670
    return-void
.end method

.method private calcMeanSidereal()V
    .locals 29

    .prologue
    .line 716
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/astro/Observation;->getUt()D

    move-result-wide v19

    .line 717
    .local v19, "jd":D
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    add-double v25, v25, v19

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v25

    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    sub-double v21, v25, v27

    .line 718
    .local v21, "midnight":D
    sub-double v25, v19, v21

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    mul-double v17, v25, v27

    .line 720
    .local v17, "hour":D
    const-wide v25, 0x4142b42c80000000L    # 2451545.0

    sub-double v25, v21, v25

    const-wide v27, 0x40e1d5a000000000L    # 36525.0

    div-double v11, v25, v27

    .line 721
    .local v11, "T":D
    mul-double v13, v11, v11

    .line 722
    .local v13, "T2":D
    mul-double v15, v13, v11

    .line 725
    .local v15, "T3":D
    const-wide v25, 0x40d78ba3192641b3L    # 24110.54841

    const-wide v27, 0x41607ad71a02ff8fL    # 8640184.812866

    mul-double v27, v27, v11

    add-double v25, v25, v27

    .line 726
    const-wide v27, 0x3fb7d5a9eb2074ebL    # 0.093104

    mul-double v27, v27, v13

    .line 725
    add-double v25, v25, v27

    .line 726
    const-wide v27, 0x3eda013305e6c9ceL    # 6.2E-6

    mul-double v27, v27, v15

    .line 725
    sub-double v5, v25, v27

    .line 727
    .local v5, "GMSTMidnight":D
    const-wide v25, 0x40ac200000000000L    # 3600.0

    div-double v25, v5, v25

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    rem-double v5, v25, v27

    .line 728
    const-wide/16 v25, 0x0

    cmpg-double v25, v5, v25

    if-gez v25, :cond_0

    .line 729
    const-wide/high16 v25, 0x4038000000000000L    # 24.0

    add-double v5, v5, v25

    .line 731
    :cond_0
    const-wide v25, 0x3ff00b36e7f1e1f2L    # 1.00273790935

    mul-double v25, v25, v17

    add-double v25, v25, v5

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    rem-double v3, v25, v27

    .line 733
    .local v3, "GMST":D
    sget-object v25, Lorg/hermit/astro/Observation$OField;->GMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 734
    sget-object v25, Lorg/hermit/astro/Observation$OField;->GMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Observation;->observerPos:Lorg/hermit/geo/Position;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/hermit/geo/Position;->getLonDegs()D

    move-result-wide v25

    const-wide/high16 v27, 0x402e000000000000L    # 15.0

    div-double v23, v25, v27

    .line 737
    .local v23, "offset":D
    add-double v25, v5, v23

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    rem-double v9, v25, v27

    .line 738
    .local v9, "LMSTMidnight":D
    const-wide/16 v25, 0x0

    cmpg-double v25, v9, v25

    if-gez v25, :cond_1

    .line 739
    const-wide/high16 v25, 0x4038000000000000L    # 24.0

    add-double v9, v9, v25

    .line 740
    :cond_1
    add-double v25, v3, v23

    const-wide/high16 v27, 0x4038000000000000L    # 24.0

    rem-double v7, v25, v27

    .line 741
    .local v7, "LMST":D
    const-wide/16 v25, 0x0

    cmpg-double v25, v7, v25

    if-gez v25, :cond_2

    .line 742
    const-wide/high16 v25, 0x4038000000000000L    # 24.0

    add-double v7, v7, v25

    .line 744
    :cond_2
    sget-object v25, Lorg/hermit/astro/Observation$OField;->LMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 745
    sget-object v25, Lorg/hermit/astro/Observation$OField;->LMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 746
    return-void
.end method

.method private calcNutation()V
    .locals 33

    .prologue
    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Observation;->observationTime:Lorg/hermit/astro/Instant;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/hermit/astro/Instant;->getTd()D

    move-result-wide v26

    const-wide v28, 0x4142b42c80000000L    # 2451545.0

    sub-double v26, v26, v28

    const-wide v28, 0x40e1d5a000000000L    # 36525.0

    div-double v11, v26, v28

    .line 609
    .local v11, "T":D
    mul-double v13, v11, v11

    .line 610
    .local v13, "T2":D
    mul-double v15, v13, v11

    .line 613
    .local v15, "T3":D
    const-wide v26, 0x40729d9b13165d3aL    # 297.85036

    const-wide v28, 0x411b2d4c7227d029L    # 445267.11148

    mul-double v28, v28, v11

    add-double v26, v26, v28

    const-wide v28, 0x3f5f5cbc9978e26aL    # 0.0019142

    mul-double v28, v28, v13

    sub-double v26, v26, v28

    const-wide v28, 0x4107211000000000L    # 189474.0

    div-double v28, v15, v28

    add-double v3, v26, v28

    .line 616
    .local v3, "D":D
    const-wide v26, 0x407658718a86d71fL    # 357.52772

    const-wide v28, 0x40e193e19c62a1b6L    # 35999.05034

    mul-double v28, v28, v11

    add-double v26, v26, v28

    const-wide v28, 0x3f2502c683dd6fb2L    # 1.603E-4

    mul-double v28, v28, v13

    sub-double v26, v26, v28

    const-wide v28, 0x41124f8000000000L    # 300000.0

    div-double v28, v15, v28

    sub-double v7, v26, v28

    .line 619
    .local v7, "M":D
    const-wide v26, 0x4060ded0bb6ed677L    # 134.96298

    const-wide v28, 0x411d203b78372e6aL    # 477198.867398

    mul-double v28, v28, v11

    add-double v26, v26, v28

    const-wide v28, 0x3f81cfd66c88bf57L    # 0.0086972

    mul-double v28, v28, v13

    add-double v26, v26, v28

    const-wide v28, 0x40eb774000000000L    # 56250.0

    div-double v28, v15, v28

    add-double v9, v26, v28

    .line 622
    .local v9, "M1":D
    const-wide v26, 0x40575166f9335d25L    # 93.27191

    const-wide v28, 0x411d7e0811f57b42L    # 483202.017538

    mul-double v28, v28, v11

    add-double v26, v26, v28

    const-wide v28, 0x3f6e2ac322291fb4L    # 0.0036825

    mul-double v28, v28, v13

    sub-double v26, v26, v28

    const-wide v28, 0x4113f99800000000L    # 327270.0

    div-double v28, v15, v28

    add-double v5, v26, v28

    .line 625
    .local v5, "F":D
    const-wide v26, 0x405f42d96a6a0126L    # 125.04452

    const-wide v28, 0x409e388b8800eae2L    # 1934.136261

    mul-double v28, v28, v11

    sub-double v26, v26, v28

    const-wide v28, 0x3f60f6c848d98da5L    # 0.0020708

    mul-double v28, v28, v13

    add-double v26, v26, v28

    const-wide v28, 0x411b774000000000L    # 450000.0

    div-double v28, v15, v28

    add-double v24, v26, v28

    .line 628
    .local v24, "\u03a9":D
    const-wide/16 v22, 0x0

    .line 629
    .local v22, "\u0394\u03c8":D
    const-wide/16 v20, 0x0

    .line 630
    .local v20, "\u0394\u03b5":D
    sget-object v26, Lorg/hermit/astro/Observation;->nutationTerms:[Lorg/hermit/astro/Observation$NutationTerm;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    :goto_0
    move/from16 v0, v28

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 636
    const-wide v26, 0x40ac200000000000L    # 3600.0

    div-double v26, v22, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    .line 637
    const-wide v26, 0x40ac200000000000L    # 3600.0

    div-double v26, v20, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 639
    sget-object v26, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_LONGITUDE:Lorg/hermit/astro/Observation$OField;

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 640
    sget-object v26, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 641
    return-void

    .line 630
    :cond_0
    aget-object v19, v26, v28

    .line 631
    .local v19, "term":Lorg/hermit/astro/Observation$NutationTerm;
    move-object/from16 v0, v19

    iget v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->D:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v29, v29, v3

    move-object/from16 v0, v19

    iget v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->M:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v7

    add-double v29, v29, v31

    .line 632
    move-object/from16 v0, v19

    iget v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->M1:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v9

    .line 631
    add-double v29, v29, v31

    .line 632
    move-object/from16 v0, v19

    iget v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->F:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v5

    .line 631
    add-double v29, v29, v31

    .line 632
    move-object/from16 v0, v19

    iget v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->Ω:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v24

    .line 631
    add-double v17, v29, v31

    .line 633
    .local v17, "a":D
    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->Δψ0:D

    move-wide/from16 v29, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->Δψ1:D

    move-wide/from16 v31, v0

    mul-double v31, v31, v11

    add-double v29, v29, v31

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    mul-double v29, v29, v31

    const-wide v31, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v29, v29, v31

    add-double v22, v22, v29

    .line 634
    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->Δε0:D

    move-wide/from16 v29, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/hermit/astro/Observation$NutationTerm;->Δε1:D

    move-wide/from16 v31, v0

    mul-double v31, v31, v11

    add-double v29, v29, v31

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    mul-double v29, v29, v31

    const-wide v31, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v29, v29, v31

    add-double v20, v20, v29

    .line 630
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0
.end method

.method private calcRhoPhiPrime()V
    .locals 19

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/astro/Observation;->observerPos:Lorg/hermit/geo/Position;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/hermit/geo/Position;->getLatRads()D

    move-result-wide v13

    .line 577
    .local v13, "\u03c6":D
    const-wide v5, 0x3fefe489878ce53bL    # 0.9966476104229182

    .line 580
    .local v5, "f1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/hermit/astro/Observation;->observerAlt:D

    move-wide v15, v0

    const-wide v17, 0x415854a640000000L    # 6378137.0

    div-double v3, v15, v17

    .line 583
    .local v3, "Hf":D
    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    .line 584
    .local v7, "u":D
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    add-double v11, v15, v17

    .line 585
    .local v11, "\u03c1sin\u03c61":D
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    add-double v9, v15, v17

    .line 587
    .local v9, "\u03c1cos\u03c61":D
    sget-object v15, Lorg/hermit/astro/Observation$OField;->RHO_SIN_PHI1:Lorg/hermit/astro/Observation$OField;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 588
    sget-object v15, Lorg/hermit/astro/Observation$OField;->RHO_COS_PHI1:Lorg/hermit/astro/Observation$OField;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 589
    return-void
.end method

.method private calcTrueObliquity()V
    .locals 8

    .prologue
    .line 687
    sget-object v6, Lorg/hermit/astro/Observation$OField;->MEAN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {p0, v6}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v4

    .line 688
    .local v4, "\u03b50":D
    sget-object v6, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {p0, v6}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v0

    .line 691
    .local v0, "\u0394\u03b5":D
    add-double v2, v4, v0

    .line 693
    .local v2, "\u03b5":D
    sget-object v6, Lorg/hermit/astro/Observation$OField;->TRUE_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/hermit/astro/Observation;->put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V

    .line 694
    return-void
.end method

.method private static ecToEq(DDD[D)V
    .locals 6
    .param p0, "\u03b5"    # D
    .param p2, "\u03bb"    # D
    .param p4, "\u03b2"    # D
    .param p6, "pos"    # [D

    .prologue
    .line 855
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    .line 856
    .local v2, "y":D
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 857
    .local v0, "x":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 858
    .local v0, "\u03b1":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 859
    .end local v2    # "y":D
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    .line 861
    :cond_0
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    .end local p4    # "\u03b2":D
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    .end local p0    # "\u03b5":D
    mul-double/2addr p0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    .end local p2    # "\u03bb":D
    mul-double/2addr p0, p2

    add-double/2addr p0, v2

    .line 862
    .local p0, "sin\u03b4":D
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    .line 864
    .local p0, "\u03b4":D
    const/4 p2, 0x0

    aput-wide v0, p6, p2

    .line 865
    const/4 p2, 0x1

    aput-wide p0, p6, p2

    .line 866
    return-void
.end method

.method private static eqToEc(DDD[D)V
    .locals 6
    .param p0, "\u03b5"    # D
    .param p2, "\u03b1"    # D
    .param p4, "\u03b4"    # D
    .param p6, "pos"    # [D

    .prologue
    .line 935
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    .line 936
    .local v2, "y":D
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 937
    .local v0, "x":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .end local v0    # "x":D
    invoke-static {v0, v1}, Lorg/hermit/astro/Observation;->modTwoPi(D)D

    move-result-wide v0

    .line 939
    .local v0, "\u03bb":D
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .end local v2    # "y":D
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    .end local p4    # "\u03b4":D
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    .end local p0    # "\u03b5":D
    mul-double/2addr p0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    .end local p2    # "\u03b1":D
    mul-double/2addr p0, p2

    sub-double p0, v2, p0

    .line 940
    .local p0, "sin\u03b2":D
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    .line 942
    .local p0, "\u03b2":D
    const/4 p2, 0x0

    aput-wide v0, p6, p2

    .line 943
    const/4 p2, 0x1

    aput-wide p0, p6, p2

    .line 944
    return-void
.end method

.method static final modTwoPi(D)D
    .locals 4
    .param p0, "v"    # D

    .prologue
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 1039
    rem-double/2addr p0, v2

    .line 1040
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    add-double v0, p0, v2

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p0

    goto :goto_0
.end method

.method static final secsToRads(D)D
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 1051
    const-wide v0, 0x40ac200000000000L    # 3600.0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public apparentEquatorialToEcliptic(DD[D)V
    .locals 9
    .param p1, "\u03b1"    # D
    .param p3, "\u03b4"    # D
    .param p5, "pos"    # [D

    .prologue
    .line 908
    sget-object v2, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_LONGITUDE:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {p0, v2}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v7

    .line 909
    .local v7, "\u0394\u03c8":D
    sget-object v2, Lorg/hermit/astro/Observation$OField;->TRUE_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {p0, v2}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v0

    .local v0, "\u03b5":D
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 910
    invoke-static/range {v0 .. v6}, Lorg/hermit/astro/Observation;->eqToEc(DDD[D)V

    .line 913
    const/4 v2, 0x0

    aget-wide v3, p5, v2

    sub-double/2addr v3, v7

    aput-wide v3, p5, v2

    .line 914
    return-void
.end method

.method public eclipticToApparentEquatorial(DD[D)V
    .locals 9
    .param p1, "\u03bb"    # D
    .param p3, "\u03b2"    # D
    .param p5, "pos"    # [D

    .prologue
    .line 831
    sget-object v2, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_LONGITUDE:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {p0, v2}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v7

    .line 832
    .local v7, "\u0394\u03c8":D
    sget-object v2, Lorg/hermit/astro/Observation$OField;->TRUE_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {p0, v2}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v0

    .line 833
    .local v0, "\u03b5":D
    add-double v2, p1, v7

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/hermit/astro/Observation;->ecToEq(DDD[D)V

    .line 834
    return-void
.end method

.method public eclipticToMeanEquatorial(DD[D)V
    .locals 7
    .param p1, "\u03bb"    # D
    .param p3, "\u03b2"    # D
    .param p5, "pos"    # [D

    .prologue
    .line 808
    sget-object v2, Lorg/hermit/astro/Observation$OField;->MEAN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {p0, v2}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v0

    .local v0, "\u03b50":D
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 809
    invoke-static/range {v0 .. v6}, Lorg/hermit/astro/Observation;->ecToEq(DDD[D)V

    .line 810
    return-void
.end method

.method public get(Lorg/hermit/astro/Observation$OField;)D
    .locals 4
    .param p1, "key"    # Lorg/hermit/astro/Observation$OField;

    .prologue
    .line 516
    iget-object v1, p0, Lorg/hermit/astro/Observation;->dataCache:[Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/hermit/astro/Observation$OField;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 517
    invoke-static {p1, p0}, Lorg/hermit/astro/Observation$OField;->access$3(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation;)V

    .line 520
    :cond_0
    iget-object v1, p0, Lorg/hermit/astro/Observation;->dataCache:[Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/hermit/astro/Observation$OField;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    .line 521
    .local v0, "val":Ljava/lang/Double;
    if-nez v0, :cond_1

    .line 522
    new-instance v1, Lorg/hermit/astro/CalcError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calculator for observation field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-direct {v1, v2}, Lorg/hermit/astro/CalcError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getBody(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Body;
    .locals 3
    .param p1, "which"    # Lorg/hermit/astro/Body$Name;

    .prologue
    .line 427
    invoke-virtual {p1}, Lorg/hermit/astro/Body$Name;->ordinal()I

    move-result v1

    .line 428
    .local v1, "ord":I
    iget-object v2, p0, Lorg/hermit/astro/Observation;->celestialBodies:[Lorg/hermit/astro/Body;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 430
    sget-object v2, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    if-ne p1, v2, :cond_1

    .line 431
    new-instance v0, Lorg/hermit/astro/Sun;

    invoke-direct {v0, p0}, Lorg/hermit/astro/Sun;-><init>(Lorg/hermit/astro/Observation;)V

    .line 436
    .local v0, "bod":Lorg/hermit/astro/Body;
    :goto_0
    iget-object v2, p0, Lorg/hermit/astro/Observation;->celestialBodies:[Lorg/hermit/astro/Body;

    aput-object v0, v2, v1

    .line 439
    .end local v0    # "bod":Lorg/hermit/astro/Body;
    :cond_0
    iget-object v2, p0, Lorg/hermit/astro/Observation;->celestialBodies:[Lorg/hermit/astro/Body;

    aget-object v2, v2, v1

    return-object v2

    .line 432
    :cond_1
    sget-object v2, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    if-ne p1, v2, :cond_2

    .line 433
    new-instance v0, Lorg/hermit/astro/Moon;

    invoke-direct {v0, p0}, Lorg/hermit/astro/Moon;-><init>(Lorg/hermit/astro/Observation;)V

    .restart local v0    # "bod":Lorg/hermit/astro/Body;
    goto :goto_0

    .line 435
    .end local v0    # "bod":Lorg/hermit/astro/Body;
    :cond_2
    new-instance v0, Lorg/hermit/astro/Planet;

    invoke-direct {v0, p0, p1}, Lorg/hermit/astro/Planet;-><init>(Lorg/hermit/astro/Observation;Lorg/hermit/astro/Body$Name;)V

    .restart local v0    # "bod":Lorg/hermit/astro/Body;
    goto :goto_0
.end method

.method public getDaysSince(D)D
    .locals 2
    .param p1, "epoch"    # D

    .prologue
    .line 354
    invoke-virtual {p0}, Lorg/hermit/astro/Observation;->getUt()D

    move-result-wide v0

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method public getMoon()Lorg/hermit/astro/Moon;
    .locals 3

    .prologue
    .line 476
    :try_start_0
    sget-object v1, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    invoke-virtual {p0, v1}, Lorg/hermit/astro/Observation;->getBody(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Body;

    move-result-object p0

    .end local p0    # "this":Lorg/hermit/astro/Observation;
    check-cast p0, Lorg/hermit/astro/Moon;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 477
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 478
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/hermit/astro/CalcError;

    const-string v2, "MOON object is not an instance of Moon"

    invoke-direct {v1, v2}, Lorg/hermit/astro/CalcError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getObserverAltitude()D
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Lorg/hermit/astro/Observation;->observerAlt:D

    return-wide v0
.end method

.method public getObserverPosition()Lorg/hermit/geo/Position;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/hermit/astro/Observation;->observerPos:Lorg/hermit/geo/Position;

    return-object v0
.end method

.method public getPlanet(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Planet;
    .locals 4
    .param p1, "which"    # Lorg/hermit/astro/Body$Name;

    .prologue
    .line 497
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/hermit/astro/Observation;->getBody(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Body;

    move-result-object p0

    .end local p0    # "this":Lorg/hermit/astro/Observation;
    check-cast p0, Lorg/hermit/astro/Planet;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 498
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 499
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/hermit/astro/CalcError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/hermit/astro/Body$Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    const-string v3, " object is not an instance of Planet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-direct {v1, v2}, Lorg/hermit/astro/CalcError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSun()Lorg/hermit/astro/Sun;
    .locals 3

    .prologue
    .line 456
    :try_start_0
    sget-object v1, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    invoke-virtual {p0, v1}, Lorg/hermit/astro/Observation;->getBody(Lorg/hermit/astro/Body$Name;)Lorg/hermit/astro/Body;

    move-result-object p0

    .end local p0    # "this":Lorg/hermit/astro/Observation;
    check-cast p0, Lorg/hermit/astro/Sun;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 457
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 458
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/hermit/astro/CalcError;

    const-string v2, "SUN object is not an instance of Sun"

    invoke-direct {v1, v2}, Lorg/hermit/astro/CalcError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTd()D
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/hermit/astro/Observation;->observationTime:Lorg/hermit/astro/Instant;

    invoke-virtual {v0}, Lorg/hermit/astro/Instant;->getTd()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()Lorg/hermit/astro/Instant;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/hermit/astro/Observation;->observationTime:Lorg/hermit/astro/Instant;

    return-object v0
.end method

.method public getUt()D
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/hermit/astro/Observation;->observationTime:Lorg/hermit/astro/Instant;

    invoke-virtual {v0}, Lorg/hermit/astro/Instant;->getUt()D

    move-result-wide v0

    return-wide v0
.end method

.method protected invalidate()V
    .locals 5

    .prologue
    .line 545
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lorg/hermit/astro/Observation;->NUM_FIELDS:I

    if-lt v1, v2, :cond_0

    .line 549
    iget-object v2, p0, Lorg/hermit/astro/Observation;->celestialBodies:[Lorg/hermit/astro/Body;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_1

    .line 552
    return-void

    .line 546
    :cond_0
    iget-object v2, p0, Lorg/hermit/astro/Observation;->dataCache:[Ljava/lang/Double;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_1
    aget-object v0, v2, v4

    .line 550
    .local v0, "b":Lorg/hermit/astro/Body;
    if-eqz v0, :cond_2

    .line 551
    invoke-virtual {v0}, Lorg/hermit/astro/Body;->invalidate()V

    .line 549
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public meanEquatorialToEcliptic(DD[D)V
    .locals 7
    .param p1, "\u03b1"    # D
    .param p3, "\u03b4"    # D
    .param p5, "pos"    # [D

    .prologue
    .line 886
    sget-object v2, Lorg/hermit/astro/Observation$OField;->MEAN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    invoke-virtual {p0, v2}, Lorg/hermit/astro/Observation;->get(Lorg/hermit/astro/Observation$OField;)D

    move-result-wide v0

    .local v0, "\u03b50":D
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 887
    invoke-static/range {v0 .. v6}, Lorg/hermit/astro/Observation;->eqToEc(DDD[D)V

    .line 888
    return-void
.end method

.method protected put(Lorg/hermit/astro/Observation$OField;Ljava/lang/Double;)V
    .locals 2
    .param p1, "key"    # Lorg/hermit/astro/Observation$OField;
    .param p2, "val"    # Ljava/lang/Double;

    .prologue
    .line 536
    iget-object v0, p0, Lorg/hermit/astro/Observation;->dataCache:[Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/hermit/astro/Observation$OField;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 537
    return-void
.end method

.method public setDate(IID)V
    .locals 1
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # D

    .prologue
    .line 319
    new-instance v0, Lorg/hermit/astro/Instant;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/hermit/astro/Instant;-><init>(IID)V

    invoke-virtual {p0, v0}, Lorg/hermit/astro/Observation;->setTime(Lorg/hermit/astro/Instant;)V

    .line 320
    return-void
.end method

.method public setJavaTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 331
    new-instance v0, Lorg/hermit/astro/Instant;

    invoke-direct {v0, p1, p2}, Lorg/hermit/astro/Instant;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/hermit/astro/Observation;->setTime(Lorg/hermit/astro/Instant;)V

    .line 332
    return-void
.end method

.method public setJulian(D)V
    .locals 1
    .param p1, "jd"    # D

    .prologue
    .line 343
    new-instance v0, Lorg/hermit/astro/Instant;

    invoke-direct {v0, p1, p2}, Lorg/hermit/astro/Instant;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/hermit/astro/Observation;->setTime(Lorg/hermit/astro/Instant;)V

    .line 344
    return-void
.end method

.method public setObserverAltitude(D)V
    .locals 0
    .param p1, "alt"    # D

    .prologue
    .line 403
    iput-wide p1, p0, Lorg/hermit/astro/Observation;->observerAlt:D

    .line 406
    invoke-virtual {p0}, Lorg/hermit/astro/Observation;->invalidate()V

    .line 407
    return-void
.end method

.method public setObserverPosition(Lorg/hermit/geo/Position;)V
    .locals 0
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 379
    iput-object p1, p0, Lorg/hermit/astro/Observation;->observerPos:Lorg/hermit/geo/Position;

    .line 382
    invoke-virtual {p0}, Lorg/hermit/astro/Observation;->invalidate()V

    .line 383
    return-void
.end method

.method public setTime(Lorg/hermit/astro/Instant;)V
    .locals 0
    .param p1, "time"    # Lorg/hermit/astro/Instant;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/hermit/astro/Observation;->observationTime:Lorg/hermit/astro/Instant;

    .line 305
    invoke-virtual {p0}, Lorg/hermit/astro/Observation;->invalidate()V

    .line 306
    return-void
.end method

.method vsopToFk5(DD[D)V
    .locals 18
    .param p1, "L"    # D
    .param p3, "B"    # D
    .param p5, "pos"    # [D

    .prologue
    .line 959
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/astro/Observation;->getTd()D

    move-result-wide v10

    const-wide v12, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v10, v12

    const-wide v12, 0x40e1d5a000000000L    # 36525.0

    div-double v2, v10, v12

    .line 960
    .local v2, "T":D
    mul-double v4, v2, v2

    .line 962
    .local v4, "T2":D
    const-wide v10, 0x3ff65a1cac083127L    # 1.397

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    mul-double/2addr v10, v2

    sub-double v10, p1, v10

    const-wide v12, 0x3f3450efdc9c4da9L    # 3.1E-4

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    mul-double/2addr v12, v4

    sub-double v0, v10, v12

    .line 963
    .local v0, "L1":D
    const-wide v10, -0x4048e0221426fe72L    # -0.09033

    invoke-static {v10, v11}, Lorg/hermit/astro/Observation;->secsToRads(D)D

    move-result-wide v10

    .line 964
    const-wide v12, 0x3fa40cc78e9f6a94L    # 0.03916

    invoke-static {v12, v13}, Lorg/hermit/astro/Observation;->secsToRads(D)D

    move-result-wide v12

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    .line 963
    add-double v8, v10, v12

    .line 965
    .local v8, "\u0394L":D
    const-wide v10, 0x3fa40cc78e9f6a94L    # 0.03916

    invoke-static {v10, v11}, Lorg/hermit/astro/Observation;->secsToRads(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double v6, v10, v12

    .line 967
    .local v6, "\u0394B":D
    const/4 v10, 0x0

    add-double v11, p1, v8

    aput-wide v11, p5, v10

    .line 968
    const/4 v10, 0x1

    add-double v11, p3, v6

    aput-wide v11, p5, v10

    .line 969
    return-void
.end method
