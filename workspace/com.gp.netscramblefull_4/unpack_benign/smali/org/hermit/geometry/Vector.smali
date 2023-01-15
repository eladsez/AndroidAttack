.class public Lorg/hermit/geometry/Vector;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/hermit/geometry/Vector;",
        ">;"
    }
.end annotation


# instance fields
.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lorg/hermit/geometry/Vector;->x:D

    .line 42
    iput-wide p3, p0, Lorg/hermit/geometry/Vector;->y:D

    .line 43
    return-void
.end method

.method public static add(Lorg/hermit/geometry/Vector;Lorg/hermit/geometry/Vector;)Lorg/hermit/geometry/Vector;
    .locals 7
    .param p0, "a"    # Lorg/hermit/geometry/Vector;
    .param p1, "b"    # Lorg/hermit/geometry/Vector;

    .prologue
    .line 92
    new-instance v0, Lorg/hermit/geometry/Vector;

    iget-wide v1, p0, Lorg/hermit/geometry/Vector;->x:D

    iget-wide v3, p1, Lorg/hermit/geometry/Vector;->x:D

    add-double/2addr v1, v3

    iget-wide v3, p0, Lorg/hermit/geometry/Vector;->y:D

    iget-wide v5, p1, Lorg/hermit/geometry/Vector;->y:D

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Vector;-><init>(DD)V

    return-object v0
.end method

.method public static scale(Lorg/hermit/geometry/Vector;D)Lorg/hermit/geometry/Vector;
    .locals 5
    .param p0, "vec"    # Lorg/hermit/geometry/Vector;
    .param p1, "scale"    # D

    .prologue
    .line 116
    new-instance v0, Lorg/hermit/geometry/Vector;

    iget-wide v1, p0, Lorg/hermit/geometry/Vector;->x:D

    mul-double/2addr v1, p1

    iget-wide v3, p0, Lorg/hermit/geometry/Vector;->y:D

    mul-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Vector;-><init>(DD)V

    return-object v0
.end method

.method public static sub(Lorg/hermit/geometry/Vector;Lorg/hermit/geometry/Vector;)Lorg/hermit/geometry/Vector;
    .locals 7
    .param p0, "a"    # Lorg/hermit/geometry/Vector;
    .param p1, "b"    # Lorg/hermit/geometry/Vector;

    .prologue
    .line 104
    new-instance v0, Lorg/hermit/geometry/Vector;

    iget-wide v1, p0, Lorg/hermit/geometry/Vector;->x:D

    iget-wide v3, p1, Lorg/hermit/geometry/Vector;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lorg/hermit/geometry/Vector;->y:D

    iget-wide v5, p1, Lorg/hermit/geometry/Vector;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/geometry/Vector;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/hermit/geometry/Vector;

    invoke-virtual {p0, p1}, Lorg/hermit/geometry/Vector;->compareTo(Lorg/hermit/geometry/Vector;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/hermit/geometry/Vector;)I
    .locals 6
    .param p1, "o"    # Lorg/hermit/geometry/Vector;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 179
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->y:D

    iget-wide v2, p1, Lorg/hermit/geometry/Vector;->y:D

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->y:D

    iget-wide v2, p1, Lorg/hermit/geometry/Vector;->y:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    move v0, v4

    .line 190
    :goto_0
    return v0

    .line 182
    :cond_0
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->y:D

    iget-wide v2, p1, Lorg/hermit/geometry/Vector;->y:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    move v0, v5

    .line 183
    goto :goto_0

    .line 184
    :cond_1
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->x:D

    iget-wide v2, p1, Lorg/hermit/geometry/Vector;->x:D

    invoke-static {v0, v1, v2, v3}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->x:D

    iget-wide v2, p1, Lorg/hermit/geometry/Vector;->x:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->x:D

    iget-wide v2, p1, Lorg/hermit/geometry/Vector;->x:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    move v0, v5

    .line 188
    goto :goto_0

    .line 190
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 144
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/hermit/geometry/Vector;

    if-nez v2, :cond_1

    :cond_0
    move v2, v6

    .line 148
    :goto_0
    return v2

    .line 147
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/hermit/geometry/Vector;

    move-object v1, v0

    .line 148
    .local v1, "o":Lorg/hermit/geometry/Vector;
    iget-wide v2, p0, Lorg/hermit/geometry/Vector;->x:D

    iget-wide v4, v1, Lorg/hermit/geometry/Vector;->x:D

    invoke-static {v2, v3, v4, v5}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/hermit/geometry/Vector;->y:D

    iget-wide v4, v1, Lorg/hermit/geometry/Vector;->y:D

    invoke-static {v2, v3, v4, v5}, Lorg/hermit/geometry/MathTools;->eq(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 209
    iget-wide v4, p0, Lorg/hermit/geometry/Vector;->x:D

    invoke-static {v4, v5}, Lorg/hermit/geometry/MathTools;->round(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 210
    .local v0, "xb":J
    iget-wide v4, p0, Lorg/hermit/geometry/Vector;->y:D

    invoke-static {v4, v5}, Lorg/hermit/geometry/MathTools;->round(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 214
    .local v2, "yb":J
    long-to-int v4, v0

    const/16 v5, 0x20

    shr-long v5, v0, v5

    long-to-int v5, v5

    xor-int/2addr v4, v5

    .line 215
    const/16 v5, 0x35

    shr-long v5, v2, v5

    long-to-int v5, v5

    .line 214
    xor-int/2addr v4, v5

    .line 215
    const/16 v5, 0x15

    shr-long v5, v2, v5

    long-to-int v5, v5

    .line 214
    xor-int/2addr v4, v5

    .line 215
    const/16 v5, 0xb

    shl-long v5, v2, v5

    long-to-int v5, v5

    .line 214
    xor-int/2addr v4, v5

    return v4
.end method

.method public length()D
    .locals 6

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/hermit/geometry/Vector;->x:D

    iget-wide v2, p0, Lorg/hermit/geometry/Vector;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/hermit/geometry/Vector;->y:D

    iget-wide v4, p0, Lorg/hermit/geometry/Vector;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/hermit/geometry/Vector;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/hermit/geometry/Vector;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
