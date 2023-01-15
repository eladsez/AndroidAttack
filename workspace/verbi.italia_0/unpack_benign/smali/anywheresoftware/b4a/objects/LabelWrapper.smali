.class public Lanywheresoftware/b4a/objects/LabelWrapper;
.super Lanywheresoftware/b4a/objects/TextViewWrapper;
.source "LabelWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/TextViewWrapper",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 4
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
    .line 32
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 33
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    const-class v3, Landroid/widget/TextView;

    invoke-static {p3, v3, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object p0

    .line 35
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/TextViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, "v":Landroid/widget/TextView;
    const-string v3, "drawable"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 37
    .local v1, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 38
    const/4 v3, 0x0

    invoke-static {p0, v1, p2, v3}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 39
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 25
    if-nez p3, :cond_0

    .line 26
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/LabelWrapper;->setObject(Ljava/lang/Object;)V

    .line 27
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method
