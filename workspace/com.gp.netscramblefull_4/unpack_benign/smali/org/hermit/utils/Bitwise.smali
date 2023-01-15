.class public Lorg/hermit/utils/Bitwise;
.super Ljava/lang/Object;
.source "Bitwise.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static final bitrev(II)I
    .locals 4
    .param p0, "j"    # I
    .param p1, "n"    # I

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 76
    return v1

    .line 75
    :cond_0
    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, p0, 0x1

    or-int v1, v2, v3

    .line 74
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public static final isPowerOf2(I)Z
    .locals 2
    .param p0, "n"    # I

    .prologue
    const/4 v1, 0x1

    .line 54
    if-lez p0, :cond_0

    sub-int v0, p0, v1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
