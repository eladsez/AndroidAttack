.class public Lanywheresoftware/b4a/keywords/LayoutValues;
.super Ljava/lang/Object;
.source "LayoutValues.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "LayoutValues"
.end annotation


# instance fields
.field public Height:I

.field public Scale:F

.field public Width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromStream(Ljava/io/DataInputStream;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 2
    .param p0, "din"    # Ljava/io/DataInputStream;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lanywheresoftware/b4a/keywords/LayoutValues;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/LayoutValues;-><init>()V

    .line 43
    .local v0, "lv":Lanywheresoftware/b4a/keywords/LayoutValues;
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iput v1, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    .line 44
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    .line 45
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    .line 46
    return-object v0
.end method


# virtual methods
.method public calcDistance(Lanywheresoftware/b4a/keywords/LayoutValues;)F
    .locals 12
    .param p1, "device"    # Lanywheresoftware/b4a/keywords/LayoutValues;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v10, 0x42480000    # 50.0f

    const-wide v8, 0x3ff3333333333333L    # 1.2

    .line 50
    iget v4, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    iget v5, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    div-float v0, v4, v5

    .line 51
    .local v0, "fixedScale":F
    iget v4, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-float v4, v4

    mul-float v3, v4, v0

    .line 52
    .local v3, "w":F
    iget v4, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-float v4, v4

    mul-float v1, v4, v0

    .line 53
    .local v1, "h":F
    float-to-double v4, v3

    iget v6, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move v4, v11

    .line 62
    :goto_0
    return v4

    .line 55
    :cond_0
    float-to-double v4, v1

    iget v6, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    move v4, v11

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v4, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 58
    add-float/2addr v3, v10

    .line 59
    :cond_2
    iget v4, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    .line 60
    add-float/2addr v1, v10

    .line 61
    :cond_3
    sub-float v4, v3, v1

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v5, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    iget v6, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :goto_1
    int-to-float v2, v4

    .line 62
    .local v2, "sameOrientation":F
    iget v4, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    iget v6, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    iget v7, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    goto :goto_0

    .line 61
    .end local v2    # "sameOrientation":F
    :cond_4
    const/16 v4, 0x64

    goto :goto_1
.end method

.method public getApproximateScreenSize()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 38
    iget v0, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-float v0, v0

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-float v2, v2

    iget v3, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string v1, ", scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dpi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
