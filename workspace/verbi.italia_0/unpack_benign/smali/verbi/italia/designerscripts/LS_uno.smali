.class public Lverbi/italia/designerscripts/LS_uno;
.super Ljava/lang/Object;
.source "LS_uno.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LS_general(Ljava/util/LinkedHashMap;IIF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;",
            ">;IIF)V"
        }
    .end annotation

    .prologue
    .line 10
    const-wide v0, 0x3fd3333333333333L    # 0.3

    invoke-static {v0, v1}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->setScaleRate(D)V

    .line 11
    invoke-static {p0}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->scaleAll(Ljava/util/LinkedHashMap;)V

    .line 12
    const-string v0, "txtverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setTop(I)V

    .line 13
    const-string v0, "txtverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setLeft(I)V

    .line 14
    const-string v0, "txtverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, p1

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    float-to-double v5, p3

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setWidth(I)V

    .line 15
    const-string v0, "btnanalizzaverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide v1, 0x4062c00000000000L    # 150.0

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setWidth(I)V

    .line 16
    const-string v0, "btnanalizzaverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v1, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-string v0, "txtverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTop()I

    move-result v2

    const-string v0, "txtverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    int-to-double v2, v0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->setTop(I)V

    .line 17
    const-string v0, "btnanalizzaverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v1, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, p1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    float-to-double v6, p3

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-string v0, "btnanalizzaverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getWidth()I

    move-result v0

    int-to-double v4, v0

    sub-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->setLeft(I)V

    .line 18
    const-string v0, "sw"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v1, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-string v0, "btnanalizzaverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTop()I

    move-result v2

    const-string v0, "btnanalizzaverbo"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    int-to-double v2, v0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->setTop(I)V

    .line 20
    const-string v0, "sw"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setLeft(I)V

    .line 22
    const-string v0, "sw"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, p1

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    float-to-double v5, p3

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setWidth(I)V

    .line 24
    const-string p1, "sw"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object p0, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide v0, 0x3fe3333333333333L    # 0.6

    int-to-double p1, p2

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setHeight(I)V

    .line 26
    return-void
.end method
