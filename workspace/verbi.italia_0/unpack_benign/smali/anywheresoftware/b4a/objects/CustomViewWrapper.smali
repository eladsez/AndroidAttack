.class public Lanywheresoftware/b4a/objects/CustomViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "CustomViewWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Lanywheresoftware/b4a/BALayout;",
        ">;",
        "Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;"
    }
.end annotation


# instance fields
.field public customObject:Ljava/lang/Object;

.field private eventName:Ljava/lang/String;

.field public props:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

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
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 75
    if-nez p0, :cond_0

    .line 76
    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    const-class v6, Lanywheresoftware/b4a/BALayout;

    invoke-static {v5, v6, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object p0

    .line 78
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 79
    .local v4, "v":Landroid/view/ViewGroup;
    const-string v5, "drawable"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 80
    .local v2, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-static {p0, v2, p2, v5}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 81
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_1
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    const-class v5, Landroid/widget/TextView;

    invoke-static {p3, v5, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lanywheresoftware/b4a/objects/TextViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, "label":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 87
    if-eqz p2, :cond_2

    .line 88
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 89
    new-instance v5, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-direct {v5, v8, v8, v7, v7}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_2
    return-object v4
.end method


# virtual methods
.method public AfterDesignerScript()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v2, 0x1

    .line 36
    iget-object v0, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->customObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 37
    .local v7, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->customObject:Ljava/lang/Object;

    instance-of v11, v0, Lanywheresoftware/b4a/B4AClass;

    .line 38
    .local v11, "userClass":Z
    new-instance v9, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v9}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    .line 39
    .local v9, "m":Lanywheresoftware/b4a/objects/collections/Map;
    invoke-virtual {v9}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 40
    const-string v0, "defaultcolor"

    const v3, -0xf0701

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v10, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v10}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 42
    .local v10, "pw":Lanywheresoftware/b4a/objects/PanelWrapper;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CustomViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v10, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 43
    new-instance v8, Lanywheresoftware/b4a/objects/LabelWrapper;

    invoke-direct {v8}, Lanywheresoftware/b4a/objects/LabelWrapper;-><init>()V

    .line 44
    .local v8, "lw":Lanywheresoftware/b4a/objects/LabelWrapper;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CustomViewWrapper;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Lanywheresoftware/b4a/objects/LabelWrapper;->setObject(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->props:Ljava/util/HashMap;

    const-string v3, "fontsize"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v8, v0}, Lanywheresoftware/b4a/objects/LabelWrapper;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->props:Ljava/util/HashMap;

    const-string v3, "tag"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setTag(Ljava/lang/Object;)V

    .line 47
    if-eqz v11, :cond_0

    .line 48
    const-string v0, "activity"

    iget-object v3, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v3, v3, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v9, v0, v3}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    sget-boolean v0, Lanywheresoftware/b4a/BA;->shellMode:Z

    if-eqz v0, :cond_1

    if-eqz v11, :cond_1

    .line 51
    iget-object v0, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    const-string v3, "CREATE_CUSTOM_VIEW"

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->customObject:Ljava/lang/Object;

    aput-object v4, v5, v12

    iget-object v4, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    aput-object v4, v5, v2

    iget-object v4, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v4, v4, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v5, v13

    iget-object v4, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->eventName:Ljava/lang/String;

    aput-object v4, v5, v14

    const/4 v4, 0x4

    aput-object v10, v5, v4

    const/4 v4, 0x5

    aput-object v8, v5, v4

    const/4 v4, 0x6

    aput-object v9, v5, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local p0    # "this":Lanywheresoftware/b4a/objects/CustomViewWrapper;
    :goto_0
    return-void

    .line 54
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/CustomViewWrapper;
    :cond_1
    const-string v0, "_initialize"

    new-array v3, v14, [Ljava/lang/Class;

    const-class v4, Lanywheresoftware/b4a/BA;

    aput-object v4, v3, v12

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v2

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v13

    invoke-virtual {v7, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->customObject:Ljava/lang/Object;

    new-array v4, v14, [Ljava/lang/Object;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    aput-object v5, v4, v12

    iget-object v5, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v5, v5, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->eventName:Ljava/lang/String;

    aput-object v5, v4, v13

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    if-eqz v11, :cond_2

    .line 56
    iget-object v6, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->customObject:Ljava/lang/Object;

    check-cast v6, Lanywheresoftware/b4a/B4AClass;

    .line 57
    .local v6, "bc":Lanywheresoftware/b4a/B4AClass;
    invoke-interface {v6}, Lanywheresoftware/b4a/B4AClass;->getBA()Lanywheresoftware/b4a/BA;

    move-result-object v0

    const-string v3, "designercreateview"

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v10, v5, v12

    aput-object v8, v5, v2

    aput-object v9, v5, v13

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    .end local v6    # "bc":Lanywheresoftware/b4a/B4AClass;
    :cond_2
    iget-object p0, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->customObject:Ljava/lang/Object;

    .end local p0    # "this":Lanywheresoftware/b4a/objects/CustomViewWrapper;
    check-cast p0, Lanywheresoftware/b4a/keywords/Common$DesignerCustomView;

    invoke-interface {p0, v10, v8, v9}, Lanywheresoftware/b4a/keywords/Common$DesignerCustomView;->DesignerCreateView(Lanywheresoftware/b4a/objects/PanelWrapper;Lanywheresoftware/b4a/objects/LabelWrapper;Lanywheresoftware/b4a/objects/collections/Map;)V

    goto :goto_0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->props:Ljava/util/HashMap;

    const-string v1, "fontsize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/CustomViewWrapper;
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    .line 33
    iput-object p2, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->eventName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTextSize(F)V
    .locals 3
    .param p1, "TextSize"    # F

    .prologue
    .line 70
    iget-object v0, p0, Lanywheresoftware/b4a/objects/CustomViewWrapper;->props:Ljava/util/HashMap;

    const-string v1, "fontsize"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method
