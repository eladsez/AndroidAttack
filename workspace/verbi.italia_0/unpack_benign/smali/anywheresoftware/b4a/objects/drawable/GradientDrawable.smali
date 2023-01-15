.class public Lanywheresoftware/b4a/objects/drawable/GradientDrawable;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "GradientDrawable.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "GradientDrawable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/drawable/GradientDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/graphics/drawable/Drawable;
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
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const-class v1, Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 59
    const-string v2, "orientation"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "prev":Ljava/lang/Object;
    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 60
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    const-string v1, "firstColor"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v3

    const/4 v3, 0x1

    const-string v1, "secondColor"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v3

    .line 58
    invoke-direct {v0, p0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 61
    .local v0, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {}, Lanywheresoftware/b4a/BALayout;->getDeviceScale()F

    move-result v1

    const-string v2, "cornerRadius"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public Initialize(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 1
    .param p1, "Orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "Colors"    # [I

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/GradientDrawable;->setObject(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0
    .param p1, "Radius"    # F

    .prologue
    .line 53
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/GradientDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/GradientDrawable;
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 54
    return-void
.end method
