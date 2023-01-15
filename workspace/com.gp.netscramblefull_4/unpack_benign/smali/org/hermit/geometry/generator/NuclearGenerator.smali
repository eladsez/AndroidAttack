.class public Lorg/hermit/geometry/generator/NuclearGenerator;
.super Ljava/lang/Object;
.source "NuclearGenerator.java"

# interfaces
.implements Lorg/hermit/geometry/generator/Generator;


# static fields
.field private static rnd:Ljava/util/Random;


# instance fields
.field private numClusters:I

.field private refPoints:[Lorg/hermit/geometry/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/hermit/geometry/generator/NuclearGenerator;->rnd:Ljava/util/Random;

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "nclusters"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/geometry/generator/NuclearGenerator;->refPoints:[Lorg/hermit/geometry/Point;

    .line 48
    iput p1, p0, Lorg/hermit/geometry/generator/NuclearGenerator;->numClusters:I

    .line 49
    return-void
.end method


# virtual methods
.method public createPoints(Lorg/hermit/geometry/Region;I)[Lorg/hermit/geometry/Point;
    .locals 16
    .param p1, "region"    # Lorg/hermit/geometry/Region;
    .param p2, "npoints"    # I

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/generator/NuclearGenerator;->numClusters:I

    move v12, v0

    new-array v12, v12, [Lorg/hermit/geometry/Point;

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/hermit/geometry/generator/NuclearGenerator;->refPoints:[Lorg/hermit/geometry/Point;

    .line 69
    const/4 v6, 0x0

    .local v6, "i":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/generator/NuclearGenerator;->numClusters:I

    move v12, v0

    if-lt v6, v12, :cond_2

    .line 78
    move/from16 v0, p2

    new-array v0, v0, [Lorg/hermit/geometry/Point;

    move-object v9, v0

    .line 79
    .local v9, "points":[Lorg/hermit/geometry/Point;
    const/4 v6, 0x0

    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :cond_1
    :goto_1
    move v0, v7

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    .line 97
    return-object v9

    .line 70
    .end local v7    # "i":I
    .end local v9    # "points":[Lorg/hermit/geometry/Point;
    .restart local v6    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geometry/Region;->randomPoint()Lorg/hermit/geometry/Point;

    move-result-object v8

    .line 71
    .local v8, "p":Lorg/hermit/geometry/Point;
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_2
    if-lt v2, v6, :cond_3

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/generator/NuclearGenerator;->refPoints:[Lorg/hermit/geometry/Point;

    move-object v12, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aput-object v8, v12, v6

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 72
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/generator/NuclearGenerator;->refPoints:[Lorg/hermit/geometry/Point;

    move-object v12, v0

    aget-object v12, v12, v2

    invoke-virtual {v8, v12}, Lorg/hermit/geometry/Point;->dist(Lorg/hermit/geometry/Point;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4054000000000000L    # 80.0

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_0

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    .end local v2    # "c":I
    .end local v6    # "i":I
    .end local v8    # "p":Lorg/hermit/geometry/Point;
    .restart local v7    # "i":I
    .restart local v9    # "points":[Lorg/hermit/geometry/Point;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/hermit/geometry/Region;->randomPoint()Lorg/hermit/geometry/Point;

    move-result-object v8

    .line 86
    .restart local v8    # "p":Lorg/hermit/geometry/Point;
    const/4 v5, 0x0

    .line 87
    .local v5, "exists":Z
    const/4 v2, 0x0

    .restart local v2    # "c":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/hermit/geometry/generator/NuclearGenerator;->numClusters:I

    move v12, v0

    if-lt v2, v12, :cond_5

    .line 93
    if-eqz v5, :cond_1

    .line 94
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aput-object v8, v9, v7

    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    .line 88
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/generator/NuclearGenerator;->refPoints:[Lorg/hermit/geometry/Point;

    move-object v12, v0

    aget-object v12, v12, v2

    invoke-virtual {v8, v12}, Lorg/hermit/geometry/Point;->dist(Lorg/hermit/geometry/Point;)D

    move-result-wide v3

    .line 89
    .local v3, "dist":D
    sget-object v12, Lorg/hermit/geometry/generator/NuclearGenerator;->rnd:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v10, v12, v14

    .line 90
    .local v10, "r":D
    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double/2addr v12, v10

    cmpg-double v12, v3, v12

    if-gez v12, :cond_6

    const/4 v12, 0x1

    :goto_4
    or-int/2addr v5, v12

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 90
    :cond_6
    const/4 v12, 0x0

    goto :goto_4
.end method

.method public getReferencePoints()[Lorg/hermit/geometry/Point;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/hermit/geometry/generator/NuclearGenerator;->refPoints:[Lorg/hermit/geometry/Point;

    return-object v0
.end method
