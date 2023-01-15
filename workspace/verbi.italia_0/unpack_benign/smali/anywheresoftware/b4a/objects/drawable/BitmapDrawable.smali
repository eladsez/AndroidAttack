.class public Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "BitmapDrawable.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "BitmapDrawable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 56
    .local v1, "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    const-string v5, "file"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "prev":Ljava/lang/Object;
    check-cast p0, Ljava/lang/String;

    sget-object v5, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "file":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 58
    const/4 v5, 0x0

    .line 75
    :goto_0
    return-object v5

    .line 61
    :cond_0
    if-eqz p2, :cond_2

    .line 62
    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirInternal()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "Dir":Ljava/lang/String;
    :goto_1
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    .end local v1    # "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 68
    .restart local v1    # "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    new-instance v2, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 69
    .local v2, "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-virtual {v2, v0, v3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 71
    const-string v5, "gravity"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 72
    .local v4, "gravity":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 73
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 75
    :cond_1
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    move-object v5, p0

    goto :goto_0

    .line 65
    .end local v0    # "Dir":Ljava/lang/String;
    .end local v2    # "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .end local v4    # "gravity":Ljava/lang/Integer;
    :cond_2
    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "Dir":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public Initialize(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "Bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 33
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->setObject(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v0

    return v0
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 51
    return-void
.end method
