.class public Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "ColorDrawable.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ColorDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/graphics/drawable/Drawable;
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
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 54
    const-string v6, "alpha"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    .local v0, "alpha":I
    const-string v6, "color"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 56
    .local v5, "solidColor":I
    const v6, -0xf0701

    if-ne v5, v6, :cond_1

    .line 57
    if-eqz p2, :cond_0

    .line 58
    check-cast p0, Landroid/view/View;

    .end local p0    # "prev":Ljava/lang/Object;
    const-string v6, "background"

    invoke-static {p0, v6, v7}, Lanywheresoftware/b4a/objects/ViewWrapper;->getDefault(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 59
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_1

    .line 60
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    move-object v6, v4

    .line 74
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v6

    .restart local p0    # "prev":Ljava/lang/Object;
    :cond_0
    move-object v6, v7

    .line 65
    goto :goto_0

    .line 68
    .end local p0    # "prev":Ljava/lang/Object;
    :cond_1
    shl-int/lit8 v6, v0, 0x18

    shl-int/lit8 v7, v5, 0x8

    ushr-int/lit8 v7, v7, 0x8

    or-int v2, v6, v7

    .line 69
    .local v2, "color":I
    const-string v6, "cornerRadius"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 70
    .local v3, "corners":Ljava/lang/Integer;
    if-nez v3, :cond_2

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 72
    :cond_2
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;-><init>()V

    .line 73
    .local v1, "cd":Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
    invoke-static {}, Lanywheresoftware/b4a/BALayout;->getDeviceScale()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v2, v6}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->Initialize(II)V

    .line 74
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    move-object v6, p0

    goto :goto_0
.end method


# virtual methods
.method public Initialize(II)V
    .locals 4
    .param p1, "Color"    # I
    .param p2, "CornerRadius"    # I

    .prologue
    .line 31
    if-nez p2, :cond_0

    .line 32
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->setObject(Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;

    .line 35
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 34
    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 36
    .local v0, "gd":Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;->setCornerRadius(F)V

    .line 37
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
