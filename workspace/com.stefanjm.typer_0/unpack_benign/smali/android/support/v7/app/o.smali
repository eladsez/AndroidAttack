.class Landroid/support/v7/app/o;
.super Ljava/lang/Object;


# static fields
.field private static d:Landroid/support/v7/app/o;


# instance fields
.field public a:J

.field public b:J

.field public c:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroid/support/v7/app/o;
    .locals 1

    sget-object v0, Landroid/support/v7/app/o;->d:Landroid/support/v7/app/o;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/app/o;

    invoke-direct {v0}, Landroid/support/v7/app/o;-><init>()V

    sput-object v0, Landroid/support/v7/app/o;->d:Landroid/support/v7/app/o;

    :cond_0
    sget-object v0, Landroid/support/v7/app/o;->d:Landroid/support/v7/app/o;

    return-object v0
.end method


# virtual methods
.method public a(JDD)V
    .locals 18

    move-object/from16 v0, p0

    const-wide v2, 0xdc6d62da00L

    sub-long v4, p1, v2

    long-to-float v4, v4

    const v5, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v4, v5

    const v5, 0x3c8ceb25

    mul-float/2addr v5, v4

    const v6, 0x40c7ae92

    add-float/2addr v6, v5

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide v11, 0x3fa11c5fc0000000L    # 0.03341960161924362

    mul-double/2addr v11, v9

    add-double/2addr v11, v7

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide v13, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v9, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double/2addr v9, v5

    add-double/2addr v11, v9

    const-wide v5, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double/2addr v11, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v11, v5

    move-wide/from16 v5, p5

    neg-double v5, v5

    const-wide v9, 0x4076800000000000L    # 360.0

    div-double/2addr v5, v9

    const v9, 0x3a6bedfa    # 9.0E-4f

    sub-float/2addr v4, v9

    float-to-double v13, v4

    sub-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-float v4, v13

    add-float/2addr v4, v9

    float-to-double v9, v4

    add-double/2addr v9, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3f75b573eab367a1L    # 0.0053

    mul-double/2addr v6, v4

    add-double/2addr v9, v6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, -0x4083bcd35a858794L    # -0.0069

    mul-double/2addr v6, v4

    add-double/2addr v9, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    const-wide v6, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v6, v6, p3

    const-wide v11, -0x4045311600000000L    # -0.10471975803375244

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    div-double/2addr v11, v6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v11, v4

    const/4 v4, 0x1

    const-wide/16 v7, -0x1

    if-ltz v6, :cond_0

    iput v4, v0, Landroid/support/v7/app/o;->c:I

    :goto_0
    iput-wide v7, v0, Landroid/support/v7/app/o;->a:J

    iput-wide v7, v0, Landroid/support/v7/app/o;->b:J

    return-void

    :cond_0
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpg-double v13, v11, v5

    const/4 v5, 0x0

    if-gtz v13, :cond_1

    iput v5, v0, Landroid/support/v7/app/o;->c:I

    goto :goto_0

    :cond_1
    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v11

    double-to-float v6, v6

    float-to-double v6, v6

    add-double v11, v9, v6

    const-wide v13, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    add-long v4, v11, v2

    iput-wide v4, v0, Landroid/support/v7/app/o;->a:J

    sub-double/2addr v9, v6

    mul-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long v6, v4, v2

    iput-wide v6, v0, Landroid/support/v7/app/o;->b:J

    iget-wide v2, v0, Landroid/support/v7/app/o;->b:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    iget-wide v2, v0, Landroid/support/v7/app/o;->a:J

    cmp-long v4, v2, p1

    if-lez v4, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/support/v7/app/o;->c:I

    return-void
.end method
