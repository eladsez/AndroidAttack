.class public Lanywheresoftware/b4a/keywords/Bit;
.super Ljava/lang/Object;
.source "Bit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static And(II)I
    .locals 1
    .param p0, "N1"    # I
    .param p1, "N2"    # I

    .prologue
    .line 14
    and-int v0, p0, p1

    return v0
.end method

.method public static Not(I)I
    .locals 1
    .param p0, "N"    # I

    .prologue
    .line 32
    xor-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static Or(II)I
    .locals 1
    .param p0, "N1"    # I
    .param p1, "N2"    # I

    .prologue
    .line 20
    or-int v0, p0, p1

    return v0
.end method

.method public static ParseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "Value"    # Ljava/lang/String;
    .param p1, "Radix"    # I

    .prologue
    .line 80
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static ShiftLeft(II)I
    .locals 1
    .param p0, "N"    # I
    .param p1, "Shift"    # I

    .prologue
    .line 39
    shl-int v0, p0, p1

    return v0
.end method

.method public static ShiftRight(II)I
    .locals 1
    .param p0, "N"    # I
    .param p1, "Shift"    # I

    .prologue
    .line 47
    shr-int v0, p0, p1

    return v0
.end method

.method public static ToBinaryString(I)Ljava/lang/String;
    .locals 1
    .param p0, "N"    # I

    .prologue
    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ToHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "N"    # I

    .prologue
    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ToOctalString(I)Ljava/lang/String;
    .locals 1
    .param p0, "N"    # I

    .prologue
    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static UnsignedShiftRight(II)I
    .locals 1
    .param p0, "N"    # I
    .param p1, "Shift"    # I

    .prologue
    .line 55
    ushr-int v0, p0, p1

    return v0
.end method

.method public static Xor(II)I
    .locals 1
    .param p0, "N1"    # I
    .param p1, "N2"    # I

    .prologue
    .line 26
    xor-int v0, p0, p1

    return v0
.end method
