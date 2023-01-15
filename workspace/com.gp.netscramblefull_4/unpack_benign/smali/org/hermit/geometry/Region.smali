.class public Lorg/hermit/geometry/Region;
.super Ljava/lang/Object;
.source "Region.java"


# static fields
.field private static rnd:Ljava/util/Random;


# instance fields
.field private final x1:D

.field private final x2:D

.field private final y1:D

.field private final y2:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/hermit/geometry/Region;->rnd:Ljava/util/Random;

    .line 30
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 2
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/geometry/Region;->x1:D

    .line 47
    invoke-static {p3, p4, p7, p8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/geometry/Region;->y1:D

    .line 48
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/geometry/Region;->x2:D

    .line 49
    invoke-static {p3, p4, p7, p8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/geometry/Region;->y2:D

    .line 50
    return-void
.end method


# virtual methods
.method public getHeight()D
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/hermit/geometry/Region;->y2:D

    iget-wide v2, p0, Lorg/hermit/geometry/Region;->y1:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getWidth()D
    .locals 4

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/hermit/geometry/Region;->x2:D

    iget-wide v2, p0, Lorg/hermit/geometry/Region;->x1:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/hermit/geometry/Region;->x1:D

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/hermit/geometry/Region;->x2:D

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/hermit/geometry/Region;->y1:D

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/hermit/geometry/Region;->y2:D

    return-wide v0
.end method

.method public randomPoint()Lorg/hermit/geometry/Point;
    .locals 10

    .prologue
    .line 127
    sget-object v4, Lorg/hermit/geometry/Region;->rnd:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/hermit/geometry/Region;->x2:D

    iget-wide v8, p0, Lorg/hermit/geometry/Region;->x1:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/hermit/geometry/Region;->x1:D

    add-double v0, v4, v6

    .line 128
    .local v0, "x":D
    sget-object v4, Lorg/hermit/geometry/Region;->rnd:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/hermit/geometry/Region;->y2:D

    iget-wide v8, p0, Lorg/hermit/geometry/Region;->y1:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/hermit/geometry/Region;->y1:D

    add-double v2, v4, v6

    .line 129
    .local v2, "y":D
    new-instance v4, Lorg/hermit/geometry/Point;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/hermit/geometry/Point;-><init>(DD)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ","

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/hermit/geometry/Region;->x1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/hermit/geometry/Region;->y1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/hermit/geometry/Region;->x2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/hermit/geometry/Region;->y2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
