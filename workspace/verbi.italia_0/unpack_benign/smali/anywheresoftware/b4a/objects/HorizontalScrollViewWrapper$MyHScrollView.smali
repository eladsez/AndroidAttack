.class public Lanywheresoftware/b4a/objects/HorizontalScrollViewWrapper$MyHScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalScrollViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/HorizontalScrollViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHScrollView"
.end annotation


# instance fields
.field public ba:Lanywheresoftware/b4a/BA;

.field public eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 119
    iget-object v0, p0, Lanywheresoftware/b4a/objects/HorizontalScrollViewWrapper$MyHScrollView;->ba:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lanywheresoftware/b4a/objects/HorizontalScrollViewWrapper$MyHScrollView;->ba:Lanywheresoftware/b4a/BA;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/HorizontalScrollViewWrapper$MyHScrollView;->eventName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_scrollchanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method
