.class public Lorg/hermit/geometry/Edge;
.super Ljava/lang/Object;
.source "Edge.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/hermit/geometry/Edge;",
        ">;"
    }
.end annotation


# instance fields
.field private final VVertexA:Lorg/hermit/geometry/Point;

.field private final VVertexB:Lorg/hermit/geometry/Point;

.field private final leftDatum:Lorg/hermit/geometry/Point;

.field private final rightDatum:Lorg/hermit/geometry/Point;


# direct methods
.method public constructor <init>(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)V
    .locals 2
    .param p1, "a"    # Lorg/hermit/geometry/Point;
    .param p2, "b"    # Lorg/hermit/geometry/Point;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/hermit/geometry/Point;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/hermit/geometry/Point;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Undefined vertices not allowed in an Edge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lorg/hermit/geometry/Point;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/hermit/geometry/Point;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Infinite co-ordinates not allowed in an Edge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    iput-object p1, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    .line 56
    iput-object p2, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    .line 57
    iput-object v1, p0, Lorg/hermit/geometry/Edge;->leftDatum:Lorg/hermit/geometry/Point;

    .line 58
    iput-object v1, p0, Lorg/hermit/geometry/Edge;->rightDatum:Lorg/hermit/geometry/Point;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)V
    .locals 2
    .param p1, "a"    # Lorg/hermit/geometry/Point;
    .param p2, "b"    # Lorg/hermit/geometry/Point;
    .param p3, "ld"    # Lorg/hermit/geometry/Point;
    .param p4, "rd"    # Lorg/hermit/geometry/Point;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Lorg/hermit/geometry/Point;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/hermit/geometry/Point;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Undefined vertices not allowed in an Edge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    invoke-virtual {p3}, Lorg/hermit/geometry/Point;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lorg/hermit/geometry/Point;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Undefined data points not allowed in an Edge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    invoke-virtual {p3}, Lorg/hermit/geometry/Point;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p4}, Lorg/hermit/geometry/Point;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Infinite data points not allowed in an Edge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_5
    iput-object p3, p0, Lorg/hermit/geometry/Edge;->leftDatum:Lorg/hermit/geometry/Point;

    .line 86
    iput-object p4, p0, Lorg/hermit/geometry/Edge;->rightDatum:Lorg/hermit/geometry/Point;

    .line 87
    iput-object p1, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    .line 88
    iput-object p2, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/hermit/geometry/Edge;

    invoke-virtual {p0, p1}, Lorg/hermit/geometry/Edge;->compareTo(Lorg/hermit/geometry/Edge;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/hermit/geometry/Edge;)I
    .locals 7
    .param p1, "ev"    # Lorg/hermit/geometry/Edge;

    .prologue
    .line 293
    iget-object v5, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    iget-object v6, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    invoke-virtual {v5, v6}, Lorg/hermit/geometry/Point;->compareTo(Lorg/hermit/geometry/Point;)I

    move-result v5

    if-gez v5, :cond_1

    .line 294
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    .line 295
    .local v0, "me1":Lorg/hermit/geometry/Point;
    iget-object v1, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    .line 302
    .local v1, "me2":Lorg/hermit/geometry/Point;
    :goto_0
    iget-object v5, p1, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    iget-object v6, p1, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    invoke-virtual {v5, v6}, Lorg/hermit/geometry/Point;->compareTo(Lorg/hermit/geometry/Point;)I

    move-result v5

    if-gez v5, :cond_2

    .line 303
    iget-object v2, p1, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    .line 304
    .local v2, "o1":Lorg/hermit/geometry/Point;
    iget-object v3, p1, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    .line 310
    .local v3, "o2":Lorg/hermit/geometry/Point;
    :goto_1
    invoke-virtual {v0, v2}, Lorg/hermit/geometry/Point;->compareTo(Lorg/hermit/geometry/Point;)I

    move-result v4

    .line 311
    .local v4, "stat":I
    if-nez v4, :cond_0

    .line 312
    invoke-virtual {v1, v3}, Lorg/hermit/geometry/Point;->compareTo(Lorg/hermit/geometry/Point;)I

    move-result v4

    .line 313
    :cond_0
    return v4

    .line 297
    .end local v0    # "me1":Lorg/hermit/geometry/Point;
    .end local v1    # "me2":Lorg/hermit/geometry/Point;
    .end local v2    # "o1":Lorg/hermit/geometry/Point;
    .end local v3    # "o2":Lorg/hermit/geometry/Point;
    .end local v4    # "stat":I
    :cond_1
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    .line 298
    .restart local v0    # "me1":Lorg/hermit/geometry/Point;
    iget-object v1, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    .restart local v1    # "me2":Lorg/hermit/geometry/Point;
    goto :goto_0

    .line 306
    :cond_2
    iget-object v2, p1, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    .line 307
    .restart local v2    # "o1":Lorg/hermit/geometry/Point;
    iget-object v3, p1, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    .restart local v3    # "o2":Lorg/hermit/geometry/Point;
    goto :goto_1
.end method

.method public directionVector()Lorg/hermit/geometry/Vector;
    .locals 25

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/hermit/geometry/Edge;->isPartlyInfinite()Z

    move-result v20

    if-nez v20, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/hermit/geometry/Point;->vector(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)Lorg/hermit/geometry/Vector;

    move-result-object v3

    .line 193
    .local v3, "diff":Lorg/hermit/geometry/Vector;
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3}, Lorg/hermit/geometry/Vector;->length()D

    move-result-wide v22

    div-double v20, v20, v22

    move-object v0, v3

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lorg/hermit/geometry/Vector;->scale(Lorg/hermit/geometry/Vector;D)Lorg/hermit/geometry/Vector;

    move-result-object v20

    .line 218
    .end local v3    # "diff":Lorg/hermit/geometry/Vector;
    :goto_0
    return-object v20

    .line 197
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/Edge;->leftDatum:Lorg/hermit/geometry/Point;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v6

    .line 198
    .local v6, "lx":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/Edge;->leftDatum:Lorg/hermit/geometry/Point;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v8

    .line 199
    .local v8, "ly":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/Edge;->rightDatum:Lorg/hermit/geometry/Point;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/hermit/geometry/Point;->getX()D

    move-result-wide v10

    .line 200
    .local v10, "rx":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/hermit/geometry/Edge;->rightDatum:Lorg/hermit/geometry/Point;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/hermit/geometry/Point;->getY()D

    move-result-wide v12

    .line 205
    .local v12, "ry":D
    cmpl-double v20, v6, v10

    if-nez v20, :cond_2

    .line 206
    cmpg-double v20, v8, v12

    if-gez v20, :cond_1

    .line 207
    new-instance v20, Lorg/hermit/geometry/Vector;

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    const-wide/16 v23, 0x0

    invoke-direct/range {v20 .. v24}, Lorg/hermit/geometry/Vector;-><init>(DD)V

    goto :goto_0

    .line 209
    :cond_1
    new-instance v20, Lorg/hermit/geometry/Vector;

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    const-wide/16 v23, 0x0

    invoke-direct/range {v20 .. v24}, Lorg/hermit/geometry/Vector;-><init>(DD)V

    goto :goto_0

    .line 214
    :cond_2
    sub-double v20, v12, v8

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    sub-double v22, v10, v6

    div-double v16, v20, v22

    .line 215
    .local v16, "x":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 216
    .local v18, "y":D
    mul-double v20, v16, v16

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 217
    .local v4, "len":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v20, v20, v4

    cmpg-double v22, v10, v6

    if-gez v22, :cond_3

    const/16 v22, -0x1

    :goto_1
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v14, v20, v22

    .line 218
    .local v14, "scale":D
    new-instance v20, Lorg/hermit/geometry/Vector;

    mul-double v21, v16, v14

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    mul-double v23, v23, v14

    invoke-direct/range {v20 .. v24}, Lorg/hermit/geometry/Vector;-><init>(DD)V

    goto :goto_0

    .line 217
    .end local v14    # "scale":D
    :cond_3
    const/16 v22, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 265
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/hermit/geometry/Edge;

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 270
    :goto_0
    return v2

    .line 268
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/hermit/geometry/Edge;

    move-object v1, v0

    .line 270
    .local v1, "o":Lorg/hermit/geometry/Edge;
    iget-object v2, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    iget-object v3, v1, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    invoke-virtual {v2, v3}, Lorg/hermit/geometry/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    iget-object v3, v1, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    invoke-virtual {v2, v3}, Lorg/hermit/geometry/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public getDatumA()Lorg/hermit/geometry/Point;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->leftDatum:Lorg/hermit/geometry/Point;

    return-object v0
.end method

.method public getDatumB()Lorg/hermit/geometry/Point;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->rightDatum:Lorg/hermit/geometry/Point;

    return-object v0
.end method

.method public getVertexA()Lorg/hermit/geometry/Point;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    return-object v0
.end method

.method public getVertexB()Lorg/hermit/geometry/Point;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    invoke-virtual {v0}, Lorg/hermit/geometry/Point;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    invoke-virtual {v1}, Lorg/hermit/geometry/Point;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPartlyInfinite()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public length()D
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/hermit/geometry/Edge;->isPartlyInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 232
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    iget-object v1, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    invoke-virtual {v0, v1}, Lorg/hermit/geometry/Point;->dist(Lorg/hermit/geometry/Point;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public referencePoint()Lorg/hermit/geometry/Point;
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/hermit/geometry/Edge;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->leftDatum:Lorg/hermit/geometry/Point;

    iget-object v1, p0, Lorg/hermit/geometry/Edge;->rightDatum:Lorg/hermit/geometry/Point;

    invoke-static {v0, v1}, Lorg/hermit/geometry/Point;->mid(Lorg/hermit/geometry/Point;Lorg/hermit/geometry/Point;)Lorg/hermit/geometry/Point;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    sget-object v1, Lorg/hermit/geometry/Point;->INFINITE:Lorg/hermit/geometry/Point;

    if-eq v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hermit/geometry/Edge;->VVertexA:Lorg/hermit/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/geometry/Edge;->VVertexB:Lorg/hermit/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    const-string v1, ":L="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/geometry/Edge;->leftDatum:Lorg/hermit/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hermit/geometry/Edge;->rightDatum:Lorg/hermit/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
