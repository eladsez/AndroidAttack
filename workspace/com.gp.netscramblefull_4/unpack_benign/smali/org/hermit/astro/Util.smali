.class public Lorg/hermit/astro/Util;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lorg/hermit/astro/AstroConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static interpolate([D[DD)D
    .locals 6
    .param p0, "args"    # [D
    .param p1, "values"    # [D
    .param p2, "index"    # D

    .prologue
    .line 75
    array-length v2, p0

    .line 76
    .local v2, "tablen":I
    array-length v0, p1

    if-eq v2, v0, :cond_0

    .line 77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "args":[D
    const-string p1, "Both tables for interpolate() must be the same length."

    .end local p1    # "values":[D
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    .restart local p0    # "args":[D
    .restart local p1    # "values":[D
    :cond_0
    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    .line 80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "args":[D
    const-string p1, "interpolate() can only handle tables of length 3.  Sorry."

    .end local p1    # "values":[D
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    .restart local p0    # "args":[D
    .restart local p1    # "values":[D
    :cond_1
    const/4 v0, 0x1

    sub-int v0, v2, v0

    new-array v1, v0, [[D

    .line 86
    .local v1, "diffTable":[[D
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    const/4 v3, 0x1

    sub-int v3, v2, v3

    if-lt v0, v3, :cond_2

    .line 90
    const/4 v0, 0x1

    aget-wide v2, p0, v0

    .end local v0    # "col":I
    .end local v2    # "tablen":I
    sub-double/2addr p2, v2

    .line 93
    .local p2, "n":D
    const/4 p0, 0x0

    aget-object p0, v1, p0

    .end local p0    # "args":[D
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const/4 p0, 0x0

    aget-object p0, v1, p0

    const/4 v0, 0x1

    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    const/4 p0, 0x1

    aget-object p0, v1, p0

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    mul-double/2addr v0, p2

    add-double/2addr v0, v2

    .line 94
    .end local v1    # "diffTable":[[D
    .local v0, "sum":D
    const/4 p0, 0x1

    aget-wide p0, p1, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v2

    mul-double/2addr p2, v0

    add-double/2addr p0, p2

    .end local p2    # "n":D
    return-wide p0

    .line 87
    .local v0, "col":I
    .restart local v1    # "diffTable":[[D
    .restart local v2    # "tablen":I
    .restart local p0    # "args":[D
    .local p2, "index":D
    :cond_2
    if-nez v0, :cond_3

    move-object v3, p1

    :goto_1
    invoke-static {v3}, Lorg/hermit/astro/Util;->makeDiffs([D)[D

    move-result-object v3

    aput-object v3, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v0, v3

    aget-object v3, v1, v3

    goto :goto_1
.end method

.method private static makeDiffs([D)[D
    .locals 7
    .param p0, "values"    # [D

    .prologue
    .line 105
    array-length v3, p0

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .line 106
    .local v2, "n":I
    new-array v0, v2, [D

    .line 107
    .local v0, "diffs":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 109
    return-object v0

    .line 108
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p0, v3

    aget-wide v5, p0, v1

    sub-double/2addr v3, v5

    aput-wide v3, v0, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
