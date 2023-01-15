.class public Lanywheresoftware/b4a/objects/CompoundButtonWrapper;
.super Lanywheresoftware/b4a/objects/TextViewWrapper;
.source "CompoundButtonWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/CompoundButtonWrapper$CheckBoxWrapper;,
        Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper;,
        Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/CompoundButton;",
        ">",
        "Lanywheresoftware/b4a/objects/TextViewWrapper",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lanywheresoftware/b4a/objects/CompoundButtonWrapper;, "Lanywheresoftware/b4a/objects/CompoundButtonWrapper<TT;>;"
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;Z)Landroid/view/View;
    .locals 4
    .param p0, "prev"    # Ljava/lang/Object;
    .param p2, "designer"    # Z
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
    .line 69
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/TextViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 70
    .local v2, "v":Landroid/widget/CompoundButton;
    const-string v3, "isChecked"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 71
    const-string v3, "drawable"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 72
    .local v1, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 73
    const/4 v3, 0x0

    invoke-static {p0, v1, p2, v3}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 74
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lanywheresoftware/b4a/objects/CompoundButtonWrapper;, "Lanywheresoftware/b4a/objects/CompoundButtonWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/CompoundButtonWrapper;, "Lanywheresoftware/b4a/objects/CompoundButtonWrapper<TT;>;"
    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lanywheresoftware/b4a/objects/CompoundButtonWrapper;, "Lanywheresoftware/b4a/objects/CompoundButtonWrapper<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;ZZ)V

    .line 35
    return-void
.end method

.method protected innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .param p4, "addCheckedChangeEvent"    # Z

    .prologue
    .line 38
    .local p0, "this":Lanywheresoftware/b4a/objects/CompoundButtonWrapper;, "Lanywheresoftware/b4a/objects/CompoundButtonWrapper<TT;>;"
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_checkedchange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$1;-><init>(Lanywheresoftware/b4a/objects/CompoundButtonWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "Value"    # Z
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lanywheresoftware/b4a/objects/CompoundButtonWrapper;, "Lanywheresoftware/b4a/objects/CompoundButtonWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/CompoundButtonWrapper;, "Lanywheresoftware/b4a/objects/CompoundButtonWrapper<TT;>;"
    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lanywheresoftware/b4a/objects/CompoundButtonWrapper;, "Lanywheresoftware/b4a/objects/CompoundButtonWrapper<TT;>;"
    invoke-super {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->IsInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", Checked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->getChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 64
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
