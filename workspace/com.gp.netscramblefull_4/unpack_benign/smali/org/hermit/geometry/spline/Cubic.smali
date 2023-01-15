.class public final Lorg/hermit/geometry/spline/Cubic;
.super Ljava/lang/Object;
.source "Cubic.java"


# instance fields
.field private final a:D

.field private final b:D

.field private final c:D

.field private final d:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lorg/hermit/geometry/spline/Cubic;->a:D

    .line 43
    iput-wide p3, p0, Lorg/hermit/geometry/spline/Cubic;->b:D

    .line 44
    iput-wide p5, p0, Lorg/hermit/geometry/spline/Cubic;->c:D

    .line 45
    iput-wide p7, p0, Lorg/hermit/geometry/spline/Cubic;->d:D

    .line 46
    return-void
.end method


# virtual methods
.method public eval(D)D
    .locals 4
    .param p1, "x"    # D

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/hermit/geometry/spline/Cubic;->d:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/hermit/geometry/spline/Cubic;->c:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/hermit/geometry/spline/Cubic;->b:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/hermit/geometry/spline/Cubic;->a:D

    add-double/2addr v0, v2

    return-wide v0
.end method
