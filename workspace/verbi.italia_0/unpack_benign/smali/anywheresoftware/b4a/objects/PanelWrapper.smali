.class public Lanywheresoftware/b4a/objects/PanelWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "PanelWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$IterableList;


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Panel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/view/ViewGroup;",
        ">;",
        "Lanywheresoftware/b4a/BA$IterableList;"
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_UP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 5
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
    .line 140
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 141
    .local v3, "vg":Landroid/view/View;
    if-nez v3, :cond_0

    .line 142
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    const-class v4, Lanywheresoftware/b4a/BALayout;

    invoke-static {p3, v4, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "vg":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 144
    .restart local v3    # "vg":Landroid/view/View;
    :cond_0
    invoke-static {v3, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v3

    .line 145
    const-string v4, "drawable"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 146
    .local v2, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    invoke-static {v3, v2, p2, v4}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 147
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_1
    return-object v3
.end method


# virtual methods
.method public AddView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "View"    # Landroid/view/View;
    .param p2, "Left"    # I
    .param p3, "Top"    # I
    .param p4, "Width"    # I
    .param p5, "Height"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/PanelWrapper;
    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-direct {v0, p2, p3, p4, p5}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-void
.end method

.method public Get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->GetView(I)Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public GetAllViewsRecursive()Lanywheresoftware/b4a/BA$IterableList;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/PanelWrapper;
    check-cast p0, Landroid/view/ViewGroup;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public GetView(I)Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    .locals 2
    .param p1, "Index"    # I

    .prologue
    .line 69
    new-instance v0, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;-><init>()V

    .line 70
    .local v0, "c":Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/PanelWrapper;
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 71
    return-object v0
.end method

.method public LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 11
    .param p1, "LayoutFile"    # Ljava/lang/String;
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, -0x1

    .line 96
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 97
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x0

    .line 98
    .local v9, "zeroSize":Z
    const/4 v8, 0x0

    .line 99
    .local v8, "width_fill_parent":Z
    if-nez v6, :cond_0

    .line 100
    const/4 v9, 0x1

    .line 101
    :cond_0
    if-nez v9, :cond_2

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v10, :cond_2

    .line 102
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_5

    .line 103
    :cond_1
    const/4 v9, 0x1

    .line 109
    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    .line 110
    const/16 v0, 0x3e9

    invoke-static {v0}, Lanywheresoftware/b4a/BA$WarningEngine;->warn(I)V

    .line 112
    :cond_3
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;ZLandroid/view/ViewGroup;Ljava/util/LinkedHashMap;Z)Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;

    move-result-object v0

    iget-object v7, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;->layoutValues:Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 113
    .local v7, "lv":Lanywheresoftware/b4a/keywords/LayoutValues;
    if-eqz v8, :cond_4

    .line 114
    invoke-virtual {p0, v10}, Lanywheresoftware/b4a/objects/PanelWrapper;->setWidth(I)V

    .line 115
    :cond_4
    return-object v7

    .line 105
    .end local v7    # "lv":Lanywheresoftware/b4a/keywords/LayoutValues;
    :cond_5
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setWidth(I)V

    .line 106
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public RemoveAllViews()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/PanelWrapper;
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 78
    return-void
.end method

.method public RemoveViewAt(I)V
    .locals 0
    .param p1, "Index"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/PanelWrapper;
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 84
    return-void
.end method

.method public getNumberOfViews()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/PanelWrapper;
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getNumberOfViews()I

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 42
    if-nez p3, :cond_0

    .line 43
    new-instance v0, Lanywheresoftware/b4a/BALayout;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 44
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lanywheresoftware/b4a/objects/PanelWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/PanelWrapper$1;-><init>(Lanywheresoftware/b4a/objects/PanelWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    :cond_1
    return-void
.end method
