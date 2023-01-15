.class public Lanywheresoftware/b4a/objects/ImageViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ImageViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ImageView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 3
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
    .line 108
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 109
    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    const-class v2, Landroid/widget/ImageView;

    invoke-static {p3, v2, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object p0

    .line 111
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    .local v1, "iv":Landroid/widget/ImageView;
    const-string v2, "drawable"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 113
    .local v0, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v1, v0, p2}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setImage(Landroid/view/View;Ljava/util/HashMap;Z)V

    .line 114
    return-object v1
.end method

.method public static setImage(Landroid/view/View;Ljava/util/HashMap;Z)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p2, "designer"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v4}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 95
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, -0x1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 96
    .local v0, "cd":Landroid/graphics/drawable/ColorDrawable;
    const-string v4, "gravity"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 97
    .local v3, "gravity":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 98
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 99
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/ColorDrawable;->setLevel(I)Z

    .line 104
    .end local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v3    # "gravity":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 91
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 103
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public SetBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "Bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ImageViewWrapper;
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 73
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getGravity()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ImageViewWrapper;
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    move v1, v2

    .line 51
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    .line 46
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v1

    goto :goto_0

    .line 48
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 33
    if-nez p3, :cond_0

    .line 34
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 35
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 76
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getGravity()I

    move-result v1

    .line 77
    .local v1, "gravity":I
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 78
    .local v0, "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 79
    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->setGravity(I)V

    .line 80
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setGravity(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 55
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    .line 56
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 57
    .local v0, "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ImageViewWrapper;
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 61
    .end local v0    # "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 62
    return-void
.end method
