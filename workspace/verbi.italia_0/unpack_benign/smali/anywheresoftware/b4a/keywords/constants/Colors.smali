.class public Lanywheresoftware/b4a/keywords/constants/Colors;
.super Ljava/lang/Object;
.source "Colors.java"


# static fields
.field public static final Black:I = -0x1000000

.field public static final Blue:I = -0xffff01

.field public static final Cyan:I = -0xff0001

.field public static final DarkGray:I = -0xbbbbbc

.field public static final Gray:I = -0x777778

.field public static final Green:I = -0xff0100

.field public static final LightGray:I = -0x333334

.field public static final Magenta:I = -0xff01

.field public static final Red:I = -0x10000

.field public static final Transparent:I = 0x0

.field public static final White:I = -0x1

.field public static final Yellow:I = -0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ARGB(IIII)I
    .locals 1
    .param p0, "Alpha"    # I
    .param p1, "R"    # I
    .param p2, "G"    # I
    .param p3, "B"    # I

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static RGB(III)I
    .locals 1
    .param p0, "R"    # I
    .param p1, "G"    # I
    .param p2, "B"    # I

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method
