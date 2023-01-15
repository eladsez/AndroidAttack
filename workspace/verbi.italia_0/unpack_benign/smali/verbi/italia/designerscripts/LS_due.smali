.class public Lverbi/italia/designerscripts/LS_due;
.super Ljava/lang/Object;
.source "LS_due.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LS_general(Ljava/util/LinkedHashMap;IIF)V
    .locals 7
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

    .line 12
    invoke-static {p0}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->scaleAll(Ljava/util/LinkedHashMap;)V

    .line 14
    const-string v0, "webview1"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/16 v1, 0x0

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setTop(I)V

    .line 16
    const-string v0, "webview1"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/16 v1, 0x0

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setLeft(I)V

    .line 18
    const-string v0, "webview1"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, p1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setWidth(I)V

    .line 20
    const-string v0, "webview1"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, p2

    mul-double/2addr v1, v3

    const-wide v3, 0x4052c00000000000L    # 75.0

    float-to-double v5, p3

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int p2, v1

    invoke-virtual {v0, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->setHeight(I)V

    .line 22
    const-string p2, "preclam"

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-string p2, "webview1"

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object p2, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTop()I

    move-result v1

    const-string p2, "webview1"

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object p2, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->getHeight()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->setTop(I)V

    .line 24
    const-string p2, "preclam"

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object p2, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/16 v0, 0x0

    float-to-double v2, p3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p2, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->setLeft(I)V

    .line 26
    const-string p2, "preclam"

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object p2, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-virtual {p2, p1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setWidth(I)V

    .line 28
    const-string p1, "preclam"

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object p0, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide p1, 0x4052c00000000000L    # 75.0

    float-to-double v0, p3

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setHeight(I)V

    .line 30
    return-void
.end method
