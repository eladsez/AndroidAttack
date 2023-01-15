.class public Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "CanvasWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Rect"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(IIII)V
    .locals 1
    .param p1, "Left"    # I
    .param p2, "Top"    # I
    .param p3, "Right"    # I
    .param p4, "Bottom"    # I

    .prologue
    .line 639
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 640
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->setObject(Ljava/lang/Object;)V

    .line 641
    return-void
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public setBottom(I)V
    .locals 0
    .param p1, "Bottom"    # I

    .prologue
    .line 645
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "Left"    # I

    .prologue
    .line 642
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public setRight(I)V
    .locals 0
    .param p1, "Right"    # I

    .prologue
    .line 644
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "Top"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    check-cast p0, Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const-string v3, ", "

    .line 657
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->baseToString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->IsInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    :cond_0
    return-object v0
.end method
