.class public Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
.super Ljava/lang/Object;
.source "LayoutBuilder.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/keywords/LayoutBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewWrapperAndAnchor"
.end annotation


# static fields
.field public static BOTH:I

.field public static BOTTOM:I

.field public static LEFT:I

.field public static RIGHT:I

.field public static TOP:I


# instance fields
.field public bottom:I

.field public hanchor:I

.field public final parent:Landroid/view/View;

.field public ph:I

.field public pw:I

.field public right:I

.field public vanchor:I

.field public final vw:Lanywheresoftware/b4a/objects/ViewWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanywheresoftware/b4a/objects/ViewWrapper",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 423
    sput v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->LEFT:I

    sput v2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->RIGHT:I

    const/4 v0, 0x2

    sput v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->BOTH:I

    sput v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->TOP:I

    sput v2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->BOTTOM:I

    .line 422
    return-void
.end method

.method public constructor <init>(Lanywheresoftware/b4a/objects/ViewWrapper;Landroid/view/View;)V
    .locals 0
    .param p2, "parent"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanywheresoftware/b4a/objects/ViewWrapper",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "vw":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    .line 429
    iput-object p2, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->parent:Landroid/view/View;

    .line 430
    return-void
.end method
