.class public abstract Lorg/hermit/geometry/cluster/Clusterer;
.super Ljava/lang/Object;
.source "Clusterer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract iterate()Z
.end method

.method public abstract metric()D
.end method

.method public prepare([Lorg/hermit/geometry/Point;[I[[DLorg/hermit/geometry/Region;)V
    .locals 0
    .param p1, "points"    # [Lorg/hermit/geometry/Point;
    .param p2, "ids"    # [I
    .param p3, "means"    # [[D
    .param p4, "region"    # Lorg/hermit/geometry/Region;

    .prologue
    .line 48
    return-void
.end method
