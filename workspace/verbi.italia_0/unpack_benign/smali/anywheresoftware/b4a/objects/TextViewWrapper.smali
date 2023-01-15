.class public Lanywheresoftware/b4a/objects/TextViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "TextViewWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/TextView;",
        ">",
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<TT;>;",
        "Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;
    .locals 4
    .param p0, "prev"    # Ljava/lang/Object;
    .param p2, "designer"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "v":Landroid/widget/TextView;
    const-string p0, "text"

    .end local p0    # "prev":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/4 p0, 0x0

    .line 83
    .local p0, "defaultTextColor":Landroid/content/res/ColorStateList;
    if-eqz p2, :cond_0

    .line 84
    const-string p0, "textColor"

    .end local p0    # "defaultTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getDefault(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ColorStateList;

    .line 86
    .restart local p0    # "defaultTextColor":Landroid/content/res/ColorStateList;
    :cond_0
    const-string v0, "typeface"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "typeFace":Ljava/lang/String;
    const-class v1, Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .end local v0    # "typeFace":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 88
    .local v1, "tf":Landroid/graphics/Typeface;
    const-class v3, Landroid/graphics/Typeface;

    const-string v0, "style"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    .local v0, "style":I
    const-string v3, "fontsize"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 91
    const-class v1, Landroid/view/Gravity;

    .end local v1    # "tf":Landroid/graphics/Typeface;
    const-string v0, "vAlignment"

    .end local v0    # "style":I
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    .local v1, "vAlign":I
    const-class v3, Landroid/view/Gravity;

    const-string v0, "hAlignment"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    .local v0, "hAlign":I
    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    .end local v0    # "hAlign":I
    const-string v0, "textColor"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    .local v0, "textColor":I
    const v1, -0xf0701

    if-eq v0, v1, :cond_1

    .line 96
    .end local v1    # "vAlign":I
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_1
    if-eqz p2, :cond_2

    const v1, -0xf0701

    if-ne v0, v1, :cond_2

    .line 98
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 100
    :cond_2
    if-eqz p2, :cond_3

    .line 101
    const-string p0, "name"

    .end local p0    # "defaultTextColor":Landroid/content/res/ColorStateList;
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v2, p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->setHint(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 102
    :cond_3
    return-object v2
.end method

.method public static setHint(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v0, -0x777778

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 52
    .local v0, "pixels":F
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v0, v1

    return v1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "Gravity"    # I

    .prologue
    .line 55
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    return-void
.end method

.method public setText(Ljava/lang/Object;)V
    .locals 3
    .param p1, "Text"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 36
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 39
    .local v1, "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void

    .line 38
    .end local v1    # "cs":Ljava/lang/CharSequence;
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "Color"    # I

    .prologue
    .line 42
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "TextSize"    # F

    .prologue
    .line 48
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "Typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 61
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lanywheresoftware/b4a/objects/TextViewWrapper;, "Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-super {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->IsInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", Text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 73
    .end local v0    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "s":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .end local v0    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0
.end method
