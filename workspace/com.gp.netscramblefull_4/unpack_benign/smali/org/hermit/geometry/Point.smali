.class public Lorg/hermit/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/hermit/geometry/Point;",
        ">;"
    }
.end annotation


# static fields
.field public static final INFINITE:Lorg/hermit/geometry/Point;

.field public static final UNKNOWN:Lorg/hermit/geometry/Point;

.field public static final X_INDEX:I = 0x0

.field public static final Y_INDEX:I = 0x1


# instance fields
.field private final x:D

.field private final y:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 41
    new-instance v0, Lorg/hermit/geometry/Point;

    move-wide v3, v1

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geometry/Point;-><init>(DDZ)V

    .line 40
    sput-object v0, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    .line 47
    new-instance v0, Lorg/hermit/geometry/Point;

    move-wide v1, v6

    move-wide v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geometry/Point;-><init>(DDZ)V

    sput-object v0, Lorg/hermit/geometry/Point;->UNKNOWN:Lorg/hermit/geometry/Point;

    .line 28
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 73
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/hermit/geometry/Point;-><init>(DDZ)V

    .line 74
    return-void
.end method

.method private constructor <init>(DDZ)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "allowOdd"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p5, :cond_3

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Infinite co-ordinates not allowed in a Point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NaN co-ordinates not allowed in a Point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    iput-wide p1, p0, Lorg/hermit/geometry/Point;->x:D

    .line 95
    iput-wide p3, p0, Lorg/hermit/geometry/Point;->y:D

    .line 96
    return-void
.end method

.method public static mid(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)Lorg/hermit/geometry/Point;
    .locals 9
    .param p0, "a"    # Lorg/hermit/geometry/Point;
    .param p1, "b"    # Lorg/hermit/geometry/Point;

    .prologue
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 226
    new-instance v0, Lorg/hermit/geometry/Point;

    iget-wide v1, p0, Lorg/hermit/geometry/Point;->x:D

    iget-wide v3, p1, Lorg/hermit/geometry/Point;->x:D

    add-double/2addr v1, v3

    div-double/2addr v1, v7

    iget-wide v3, p0, Lorg/hermit/geometry/Point;->y:D

    iget-wide v5, p1, Lorg/hermit/geometry/Point;->y:D

    add-double/2addr v3, v5

    div-double/2addr v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Point;-><init>(DD)V

    return-object v0
.end method

.method public static vector(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)Lorg/hermit/geometry/Vector;
    .locals 7
    .param p0, "a"    # Lorg/hermit/geometry/Point;
    .param p1, "b"    # Lorg/hermit/geometry/Point;

    .prologue
    .line 214
    new-instance v0, Lorg/hermit/geometry/Vector;

    iget-wide v1, p1, Lorg/hermit/geometry/Point;->x:D

    iget-wide v3, p0, Lorg/hermit/geometry/Point;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p1, Lorg/hermit/geometry/Point;->y:D

    iget-wide v5, p0, Lorg/hermit/geometry/Point;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Vector;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/hermit/geometry/Point;

    invoke-virtual {p0, p1}, Lorg/hermit/geometry/Point;->compareTo(Lorg/hermit/geometry/Point;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/hermit/geometry/Point;)I
    .locals 6
    .param p1, "o"    # Lorg/hermit/geometry/Point;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 289
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->y:D

    iget-wide v2, p1, Lorg/hermit/geometry/Point;->y:D

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->y:D

    iget-wide v2, p1, Lorg/hermit/geometry/Point;->y:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    move v0, v4

    .line 300
    :goto_0
    return v0

    .line 292
    :cond_0
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->y:D

    iget-wide v2, p1, Lorg/hermit/geometry/Point;->y:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    move v0, v5

    .line 293
    goto :goto_0

    .line 294
    :cond_1
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->x:D

    iget-wide v2, p1, Lorg/hermit/geometry/Point;->x:D

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->x:D

    iget-wide v2, p1, Lorg/hermit/geometry/Point;->x:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    .line 296
    goto :goto_0

    .line 297
    :cond_2
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->x:D

    iget-wide v2, p1, Lorg/hermit/geometry/Point;->x:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    move v0, v5

    .line 298
    goto :goto_0

    .line 300
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dist(Lorg/hermit/geometry/Point;)D
    .locals 8
    .param p1, "o"    # Lorg/hermit/geometry/Point;

    .prologue
    .line 196
    iget-wide v4, p0, Lorg/hermit/geometry/Point;->x:D

    iget-wide v6, p1, Lorg/hermit/geometry/Point;->x:D

    sub-double v0, v4, v6

    .line 197
    .local v0, "dx":D
    iget-wide v4, p0, Lorg/hermit/geometry/Point;->y:D

    iget-wide v6, p1, Lorg/hermit/geometry/Point;->y:D

    sub-double v2, v4, v6

    .line 198
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 254
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/hermit/geometry/Point;

    if-nez v2, :cond_1

    :cond_0
    move v2, v6

    .line 258
    :goto_0
    return v2

    .line 257
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/hermit/geometry/Point;

    move-object v1, v0

    .line 258
    .local v1, "o":Lorg/hermit/geometry/Point;
    iget-wide v2, p0, Lorg/hermit/geometry/Point;->x:D

    iget-wide v4, v1, Lorg/hermit/geometry/Point;->x:D

    invoke-static {v2, v3, v4, v5}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/hermit/geometry/Point;->y:D

    iget-wide v4, v1, Lorg/hermit/geometry/Point;->y:D

    invoke-static {v2, v3, v4, v5}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method public getComponent(I)D
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->x:D

    .line 157
    :goto_0
    return-wide v0

    .line 156
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 157
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->y:D

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in getComponent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->x:D

    return-wide v0
.end method

.method public getXf()F
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->x:D

    double-to-float v0, v0

    return v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->y:D

    return-wide v0
.end method

.method public getYf()F
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->y:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 319
    iget-wide v4, p0, Lorg/hermit/geometry/Point;->x:D

    invoke-static {v4, v5}, Lorg/hermit/geometry/MathTools;->round(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 320
    .local v0, "xb":J
    iget-wide v4, p0, Lorg/hermit/geometry/Point;->y:D

    invoke-static {v4, v5}, Lorg/hermit/geometry/MathTools;->round(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 324
    .local v2, "yb":J
    long-to-int v4, v0

    const/16 v5, 0x20

    shr-long v5, v0, v5

    long-to-int v5, v5

    xor-int/2addr v4, v5

    .line 325
    const/16 v5, 0x35

    shr-long v5, v2, v5

    long-to-int v5, v5

    .line 324
    xor-int/2addr v4, v5

    .line 325
    const/16 v5, 0x15

    shr-long v5, v2, v5

    long-to-int v5, v5

    .line 324
    xor-int/2addr v4, v5

    .line 325
    const/16 v5, 0xb

    shl-long v5, v2, v5

    long-to-int v5, v5

    .line 324
    xor-int/2addr v4, v5

    return v4
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/hermit/geometry/Point;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/hermit/geometry/Point;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/hermit/geometry/Point;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/hermit/geometry/Point;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/hermit/geometry/Point;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
