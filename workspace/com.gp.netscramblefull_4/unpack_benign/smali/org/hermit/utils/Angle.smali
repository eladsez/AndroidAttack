.class public Lorg/hermit/utils/Angle;
.super Ljava/lang/Object;
.source "Angle.java"


# static fields
.field public static final HALFPI:D = 1.5707963267948966

.field public static final TWOPI:D = 6.283185307179586

.field private static angleFormat:Ljava/text/NumberFormat;

.field private static floatFormat:Ljava/text/NumberFormat;

.field private static intFormat:Ljava/text/NumberFormat;


# instance fields
.field private angleR:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 433
    sput-object v4, Lorg/hermit/utils/Angle;->intFormat:Ljava/text/NumberFormat;

    .line 436
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/hermit/utils/Angle;->intFormat:Ljava/text/NumberFormat;

    .line 437
    sget-object v0, Lorg/hermit/utils/Angle;->intFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 438
    sget-object v0, Lorg/hermit/utils/Angle;->intFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 439
    sget-object v0, Lorg/hermit/utils/Angle;->intFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 443
    sput-object v4, Lorg/hermit/utils/Angle;->floatFormat:Ljava/text/NumberFormat;

    .line 446
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/hermit/utils/Angle;->floatFormat:Ljava/text/NumberFormat;

    .line 447
    sget-object v0, Lorg/hermit/utils/Angle;->floatFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 448
    sget-object v0, Lorg/hermit/utils/Angle;->floatFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 452
    sput-object v4, Lorg/hermit/utils/Angle;->angleFormat:Ljava/text/NumberFormat;

    .line 455
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/hermit/utils/Angle;->angleFormat:Ljava/text/NumberFormat;

    .line 456
    sget-object v0, Lorg/hermit/utils/Angle;->angleFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 457
    sget-object v0, Lorg/hermit/utils/Angle;->angleFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "radians"    # D

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lorg/hermit/utils/Angle;->angleR:D

    .line 69
    return-void
.end method

.method public static formatBearing(D)Ljava/lang/String;
    .locals 3
    .param p0, "val"    # D

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDegMin(D)Ljava/lang/String;
    .locals 2
    .param p0, "angle"    # D

    .prologue
    .line 274
    const/16 v0, 0x20

    const/16 v1, 0x2d

    invoke-static {p0, p1, v0, v1}, Lorg/hermit/utils/Angle;->formatDegMin(DCC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDegMin(DCC)Ljava/lang/String;
    .locals 2
    .param p0, "angle"    # D
    .param p2, "pos"    # C
    .param p3, "neg"    # C

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 289
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, p3, v0}, Lorg/hermit/utils/Angle;->formatDegMin(DCCLjava/lang/StringBuilder;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDegMin(DCCLjava/lang/StringBuilder;)V
    .locals 10
    .param p0, "angle"    # D
    .param p2, "pos"    # C
    .param p3, "neg"    # C
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v9, 0x20

    const/16 v4, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x0

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    .line 309
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 310
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 312
    :cond_0
    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_1

    .line 313
    invoke-virtual {p4, v7, p3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 314
    neg-double p0, p0

    .line 318
    :goto_0
    double-to-int v0, p0

    .line 319
    .local v0, "deg":I
    mul-double v3, p0, v5

    rem-double/2addr v3, v5

    double-to-int v2, v3

    .line 320
    .local v2, "min":I
    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v3, p0

    const-wide v5, 0x408f400000000000L    # 1000.0

    rem-double/2addr v3, v5

    double-to-int v1, v3

    .line 322
    .local v1, "frac":I
    const/4 v3, 0x1

    const/16 v4, 0x64

    if-ge v0, v4, :cond_2

    move v4, v9

    :goto_1
    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 323
    const/4 v3, 0x2

    if-ge v0, v8, :cond_3

    move v4, v9

    :goto_2
    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 324
    const/4 v3, 0x3

    rem-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 325
    const/4 v3, 0x4

    const/16 v4, 0xb0

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 326
    const/4 v3, 0x5

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 327
    const/4 v3, 0x6

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 328
    const/4 v3, 0x7

    const/16 v4, 0x2e

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 329
    const/16 v3, 0x8

    div-int/lit8 v4, v1, 0x64

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 330
    const/16 v3, 0x9

    div-int/lit8 v4, v1, 0xa

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 331
    rem-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p4, v8, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 332
    const/16 v3, 0xb

    const/16 v4, 0x27

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 333
    return-void

    .line 316
    .end local v0    # "deg":I
    .end local v1    # "frac":I
    .end local v2    # "min":I
    :cond_1
    invoke-virtual {p4, v7, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    .line 322
    .restart local v0    # "deg":I
    .restart local v1    # "frac":I
    .restart local v2    # "min":I
    :cond_2
    div-int/lit8 v4, v0, 0x64

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    goto :goto_1

    .line 323
    :cond_3
    div-int/lit8 v4, v0, 0xa

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    goto :goto_2
.end method

.method public static formatDegMinSec(D)Ljava/lang/String;
    .locals 2
    .param p0, "angle"    # D

    .prologue
    .line 343
    const/16 v0, 0x20

    const/16 v1, 0x2d

    invoke-static {p0, p1, v0, v1}, Lorg/hermit/utils/Angle;->formatDegMinSec(DCC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDegMinSec(DCC)Ljava/lang/String;
    .locals 9
    .param p0, "angle"    # D
    .param p2, "posSign"    # C
    .param p3, "negSign"    # C

    .prologue
    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    .line 356
    const-wide/16 v5, 0x0

    cmpl-double v5, p0, v5

    if-ltz v5, :cond_2

    move v4, p2

    .line 357
    .local v4, "sign":C
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 359
    double-to-int v0, p0

    .line 360
    .local v0, "deg":I
    int-to-double v5, v0

    sub-double v5, p0, v5

    mul-double p0, v5, v7

    .line 361
    double-to-int v1, p0

    .line 362
    .local v1, "min":I
    int-to-double v5, v1

    sub-double v5, p0, v5

    mul-double p0, v5, v7

    .line 363
    move-wide v2, p0

    .line 366
    .local v2, "sec":D
    cmpl-double v5, v2, v7

    if-ltz v5, :cond_0

    .line 367
    const-wide/16 v2, 0x0

    .line 368
    add-int/lit8 v1, v1, 0x1

    .line 370
    :cond_0
    const/16 v5, 0x3c

    if-lt v1, v5, :cond_1

    .line 371
    add-int/lit8 v1, v1, -0x3c

    .line 372
    add-int/lit8 v0, v0, 0x1

    .line 375
    :cond_1
    const-string v5, "%s%3d\u00b0 %2d\' %8.5f\""

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v0    # "deg":I
    .end local v1    # "min":I
    .end local v2    # "sec":D
    .end local v4    # "sign":C
    :cond_2
    move v4, p3

    .line 356
    goto :goto_0
.end method

.method public static formatFloat(DI)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # D
    .param p2, "frac"    # I

    .prologue
    .line 250
    sget-object v0, Lorg/hermit/utils/Angle;->floatFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 251
    sget-object v0, Lorg/hermit/utils/Angle;->floatFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatLatLon(DD)Ljava/lang/String;
    .locals 3
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4e

    const/16 v2, 0x53

    invoke-static {p0, p1, v1, v2}, Lorg/hermit/utils/Angle;->formatDegMin(DCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x45

    const/16 v2, 0x57

    invoke-static {p2, p3, v1, v2}, Lorg/hermit/utils/Angle;->formatDegMin(DCC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatRightAsc(D)Ljava/lang/String;
    .locals 10
    .param p0, "angle"    # D

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 401
    const-wide/16 v6, 0x0

    cmpg-double v6, p0, v6

    if-gez v6, :cond_0

    .line 402
    const-wide v6, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v6

    .line 403
    :cond_0
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    div-double v1, p0, v6

    .line 405
    .local v1, "hours":D
    double-to-int v0, v1

    .line 406
    .local v0, "h":I
    int-to-double v6, v0

    sub-double v6, v1, v6

    mul-double v1, v6, v8

    .line 407
    double-to-int v3, v1

    .line 408
    .local v3, "m":I
    int-to-double v6, v3

    sub-double v6, v1, v6

    mul-double v1, v6, v8

    .line 409
    move-wide v4, v1

    .line 412
    .local v4, "s":D
    cmpl-double v6, v4, v8

    if-ltz v6, :cond_1

    .line 413
    const-wide/16 v4, 0x0

    .line 414
    add-int/lit8 v3, v3, 0x1

    .line 416
    :cond_1
    const/16 v6, 0x3c

    if-lt v3, v6, :cond_2

    .line 417
    add-int/lit8 v3, v3, -0x3c

    .line 418
    add-int/lit8 v0, v0, 0x1

    .line 420
    :cond_2
    const/16 v6, 0x18

    if-lt v0, v6, :cond_3

    .line 421
    add-int/lit8 v0, v0, -0x18

    .line 424
    :cond_3
    const-string v6, "%02dh %02d\' %08.5f\""

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static fromDegrees(D)Lorg/hermit/utils/Angle;
    .locals 3
    .param p0, "degrees"    # D

    .prologue
    .line 83
    new-instance v0, Lorg/hermit/utils/Angle;

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/hermit/utils/Angle;-><init>(D)V

    return-object v0
.end method

.method public static fromDegrees(IID)Lorg/hermit/utils/Angle;
    .locals 9
    .param p0, "d"    # I
    .param p1, "m"    # I
    .param p2, "s"    # D

    .prologue
    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    .line 99
    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    const-wide/16 v3, 0x0

    cmpg-double v3, p2, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    .line 100
    .local v2, "neg":Z
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    div-double/2addr v3, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v3, v5

    div-double/2addr v3, v7

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    add-double v0, v3, v5

    .line 101
    .local v0, "df":D
    new-instance v3, Lorg/hermit/utils/Angle;

    if-eqz v2, :cond_1

    neg-double v4, v0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/hermit/utils/Angle;-><init>(D)V

    return-object v3

    .line 99
    .end local v0    # "df":D
    .end local v2    # "neg":Z
    :cond_0
    const/4 v3, 0x1

    move v2, v3

    goto :goto_0

    .restart local v0    # "df":D
    .restart local v2    # "neg":Z
    :cond_1
    move-wide v4, v0

    .line 101
    goto :goto_1
.end method

.method public static fromRightAscension(IID)Lorg/hermit/utils/Angle;
    .locals 9
    .param p0, "rh"    # I
    .param p1, "rm"    # I
    .param p2, "rs"    # D

    .prologue
    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    .line 118
    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    const-wide/16 v3, 0x0

    cmpg-double v3, p2, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 119
    .local v0, "neg":Z
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    div-double/2addr v3, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v3, v5

    div-double/2addr v3, v7

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    mul-double v1, v3, v5

    .line 120
    .local v1, "ra":D
    new-instance v3, Lorg/hermit/utils/Angle;

    if-eqz v0, :cond_1

    neg-double v4, v1

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/hermit/utils/Angle;-><init>(D)V

    return-object v3

    .line 118
    .end local v0    # "neg":Z
    .end local v1    # "ra":D
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .restart local v0    # "neg":Z
    .restart local v1    # "ra":D
    :cond_1
    move-wide v4, v1

    .line 120
    goto :goto_1
.end method

.method public static final modPi(D)D
    .locals 4
    .param p0, "v"    # D

    .prologue
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 175
    rem-double/2addr p0, v2

    .line 176
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

.method public static final modTwoPi(D)D
    .locals 4
    .param p0, "v"    # D

    .prologue
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 188
    rem-double/2addr p0, v2

    .line 189
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


# virtual methods
.method public add(D)Lorg/hermit/utils/Angle;
    .locals 3
    .param p1, "radians"    # D

    .prologue
    .line 159
    new-instance v0, Lorg/hermit/utils/Angle;

    iget-wide v1, p0, Lorg/hermit/utils/Angle;->angleR:D

    add-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/hermit/utils/Angle;-><init>(D)V

    return-object v0
.end method

.method public formatDeg()Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    const-string v0, "%d\u00b0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/hermit/utils/Angle;->angleR:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDegMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/hermit/utils/Angle;->angleR:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/hermit/utils/Angle;->formatDegMin(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDegMinSec()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/hermit/utils/Angle;->angleR:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/hermit/utils/Angle;->formatDegMinSec(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDegrees()D
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/hermit/utils/Angle;->angleR:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getRadians()D
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/hermit/utils/Angle;->angleR:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/hermit/utils/Angle;->formatDeg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
