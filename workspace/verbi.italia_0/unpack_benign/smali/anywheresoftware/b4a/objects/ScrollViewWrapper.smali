.class public Lanywheresoftware/b4a/objects/ScrollViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ScrollViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ScrollView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field private pw:Lanywheresoftware/b4a/objects/PanelWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    .line 34
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->pw:Lanywheresoftware/b4a/objects/PanelWrapper;

    .line 33
    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 9
    .param p0, "prev"    # Ljava/lang/Object;
    .param p2, "designer"    # Z
    .param p3, "tag"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "innerHeight"

    .line 96
    if-nez p0, :cond_0

    .line 97
    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    const-class v6, Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;

    invoke-static {v5, v6, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object p0

    .line 99
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 100
    .local v4, "v":Landroid/widget/ScrollView;
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 101
    invoke-virtual {v4}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 102
    :cond_1
    const-string v5, "drawable"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 103
    .local v3, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-static {p0, v3, p2, v5}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 104
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    const-string v5, "innerHeight"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    new-instance v1, Lanywheresoftware/b4a/BALayout;

    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    invoke-direct {v1, p3}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, "b":Lanywheresoftware/b4a/BALayout;
    const/4 v5, -0x1

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->getDeviceScale()F

    move-result v6

    const-string v7, "innerHeight"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "prev":Ljava/lang/Object;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 108
    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/BALayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .end local v1    # "b":Lanywheresoftware/b4a/BALayout;
    :goto_0
    return-object v4

    .line 111
    .restart local p0    # "prev":Ljava/lang/Object;
    .restart local p3    # "tag":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public FullScroll(Z)V
    .locals 1
    .param p1, "Bottom"    # Z

    .prologue
    .line 81
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ScrollViewWrapper;
    check-cast p0, Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    const/16 v0, 0x82

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 82
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x21

    goto :goto_0
.end method

.method public Initialize(Lanywheresoftware/b4a/BA;I)V
    .locals 1
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Height"    # I

    .prologue
    .line 43
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->Initialize2(Lanywheresoftware/b4a/BA;ILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public Initialize2(Lanywheresoftware/b4a/BA;ILjava/lang/String;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Height"    # I
    .param p3, "EventName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1, p3}, Lanywheresoftware/b4a/objects/ViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 51
    .local v0, "p":Lanywheresoftware/b4a/objects/PanelWrapper;
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ScrollViewWrapper;
    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 53
    return-void
.end method

.method public getPanel()Lanywheresoftware/b4a/objects/PanelWrapper;
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->pw:Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->pw:Lanywheresoftware/b4a/objects/PanelWrapper;

    return-object v0
.end method

.method public getScrollPosition()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ScrollViewWrapper;
    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 57
    if-nez p3, :cond_0

    .line 58
    new-instance v1, Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;

    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 59
    :cond_0
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_scrollchanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;

    .line 63
    .local v0, "m":Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;
    iput-object p1, v0, Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;->ba:Lanywheresoftware/b4a/BA;

    .line 64
    iput-object p2, v0, Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;->eventName:Ljava/lang/String;

    .line 67
    .end local v0    # "m":Lanywheresoftware/b4a/objects/ScrollViewWrapper$MyScrollView;
    :cond_1
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 1
    .param p1, "Scroll"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ScrollViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ScrollViewWrapper;
    check-cast p0, Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 91
    return-void
.end method