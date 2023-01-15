.class public Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$PathWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "CanvasWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Path"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 674
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 675
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 676
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$PathWrapper;->setObject(Ljava/lang/Object;)V

    .line 677
    return-void
.end method

.method public LineTo(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 682
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$PathWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$PathWrapper;
    check-cast p0, Landroid/graphics/Path;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 683
    return-void
.end method
