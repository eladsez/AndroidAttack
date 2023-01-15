.class public Lverbi/italia/designerscripts/LS_unodesc;
.super Ljava/lang/Object;
.source "LS_unodesc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LS_general(Ljava/util/LinkedHashMap;IIF)V
    .locals 6
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
    const-wide/16 v3, 0x0

    const-string v5, "pbase"

    .line 10
    const-wide v0, 0x3fd3333333333333L    # 0.3

    invoke-static {v0, v1}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->setScaleRate(D)V

    .line 11
    invoke-static {p0}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->scaleAll(Ljava/util/LinkedHashMap;)V

    .line 12
    const-string v0, "pbase"

    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    int-to-double v1, p1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setTop(I)V

    .line 13
    const-string v0, "pbase"

    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    int-to-double v1, p2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setLeft(I)V

    .line 14
    const-string v0, "pbase"

    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, p1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setWidth(I)V

    .line 15
    const-string v0, "pbase"

    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v0, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    const-wide v1, 0x407c200000000000L    # 450.0

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setHeight(I)V

    .line 17
    return-void
.end method
