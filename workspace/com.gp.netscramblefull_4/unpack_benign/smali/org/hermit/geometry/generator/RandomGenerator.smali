.class public Lorg/hermit/geometry/generator/RandomGenerator;
.super Ljava/lang/Object;
.source "RandomGenerator.java"

# interfaces
.implements Lorg/hermit/geometry/generator/Generator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPoints(Lorg/hermit/geometry/Region;I)[Lorg/hermit/geometry/Point;
    .locals 3
    .param p1, "region"    # Lorg/hermit/geometry/Region;
    .param p2, "num"    # I

    .prologue
    .line 48
    new-array v1, p2, [Lorg/hermit/geometry/Point;

    .line 49
    .local v1, "points":[Lorg/hermit/geometry/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 52
    return-object v1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lorg/hermit/geometry/Region;->randomPoint()Lorg/hermit/geometry/Point;

    move-result-object v2

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getReferencePoints()[Lorg/hermit/geometry/Point;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method
