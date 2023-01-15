.class public Lanywheresoftware/b4a/objects/ViewWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "ViewWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4aDebuggable;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<TT;>;",
        "Lanywheresoftware/b4a/BA$B4aDebuggable;"
    }
.end annotation


# static fields
.field public static final defaultColor:I = -0xf0701
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field

.field public static lastId:I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field


# instance fields
.field protected ba:Lanywheresoftware/b4a/BA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lanywheresoftware/b4a/objects/ViewWrapper;->lastId:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;
    .locals 9
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
    .line 294
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 295
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v1, "defaults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "background"

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    .end local v1    # "defaults":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 301
    .local v2, "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    if-nez v2, :cond_1

    .line 302
    new-instance v2, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .end local v2    # "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    invoke-direct {v2}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>()V

    .line 303
    .restart local v2    # "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    :cond_1
    const-string v5, "left"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "prev":Ljava/lang/Object;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "top"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 306
    const-string v7, "width"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "height"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 305
    invoke-virtual {v2, v5, v6, v7, v8}, Lanywheresoftware/b4a/BALayout$LayoutParams;->setFromUserPlane(IIII)V

    .line 307
    const-string v5, "enabled"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 308
    if-nez p2, :cond_3

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "visible":I
    const-string v5, "visible"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 311
    const/16 v4, 0x8

    .line 312
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const-string v5, "tag"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 315
    .end local v4    # "visible":I
    :cond_3
    return-object v3
.end method

.method public static buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "designer"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "."

    .line 348
    const-string v4, "nativeClass"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    .local v3, "overideClass":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    :cond_0
    if-nez p3, :cond_1

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object v0, p1

    .line 360
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 355
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 356
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 357
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 358
    .local v2, "i":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public static fixAnchor(IILanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;)V
    .locals 3
    .param p0, "pw"    # I
    .param p1, "ph"    # I
    .param p2, "vwa"    # Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 319
    iget v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->hanchor:I

    sget v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->RIGHT:I

    if-ne v0, v1, :cond_2

    .line 320
    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getLeft()I

    move-result v0

    iput v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->right:I

    .line 321
    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    iget v1, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->right:I

    sub-int v1, p0, v1

    iget-object v2, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setLeft(I)V

    .line 327
    :cond_0
    :goto_0
    iget v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vanchor:I

    sget v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->BOTTOM:I

    if-ne v0, v1, :cond_3

    .line 328
    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTop()I

    move-result v0

    iput v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->bottom:I

    .line 329
    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    iget v1, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->bottom:I

    sub-int v1, p1, v1

    iget-object v2, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setTop(I)V

    .line 335
    :cond_1
    :goto_1
    return-void

    .line 323
    :cond_2
    iget v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->hanchor:I

    sget v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->BOTH:I

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getWidth()I

    move-result v0

    iput v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->right:I

    .line 325
    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    iget v1, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->right:I

    sub-int v1, p0, v1

    iget-object v2, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setWidth(I)V

    goto :goto_0

    .line 331
    :cond_3
    iget v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vanchor:I

    sget v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->BOTH:I

    if-ne v0, v1, :cond_1

    .line 332
    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getHeight()I

    move-result v0

    iput v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->bottom:I

    .line 333
    iget-object v0, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    iget v1, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->bottom:I

    sub-int v1, p1, v1

    iget-object v2, p2, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setHeight(I)V

    goto :goto_1
.end method

.method public static getDefault(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 366
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 370
    :goto_0
    return-object v1

    .line 369
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    .line 370
    goto :goto_0
.end method


# virtual methods
.method public BringToFront()V
    .locals 2

    .prologue
    .line 226
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 228
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 231
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;

    .prologue
    .line 53
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    sget-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public Invalidate()V
    .locals 0

    .prologue
    .line 103
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 104
    return-void
.end method

.method public Invalidate2(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "Rect"    # Landroid/graphics/Rect;

    .prologue
    .line 110
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 111
    return-void
.end method

.method public Invalidate3(IIII)V
    .locals 0
    .param p1, "Left"    # I
    .param p2, "Top"    # I
    .param p3, "Right"    # I
    .param p4, "Bottom"    # I

    .prologue
    .line 117
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 118
    return-void
.end method

.method public RemoveView()V
    .locals 2

    .prologue
    .line 246
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 250
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public RequestFocus()Z
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public SendToBack()V
    .locals 2

    .prologue
    .line 236
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 241
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public SetBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "Bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 95
    .local v0, "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 96
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method public SetLayout(IIII)V
    .locals 2
    .param p1, "Left"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param
    .param p2, "Top"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param
    .param p3, "Width"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param
    .param p4, "Height"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param

    .prologue
    .line 255
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 256
    .local v0, "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    iput p1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    .line 257
    iput p2, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    .line 258
    iput p3, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->width:I

    .line 259
    iput p4, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->height:I

    .line 260
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 261
    return-void
.end method

.method public debug(I[Z)[Ljava/lang/Object;
    .locals 4
    .param p1, "limit"    # I
    .param p2, "outShouldAddReflectionFields"    # [Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 340
    .local v0, "res":[Ljava/lang/Object;
    const-string v1, "ToString"

    aput-object v1, v0, v2

    .line 341
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 342
    aput-boolean v3, p2, v2

    .line 343
    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 139
    .local v0, "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    iget v1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 145
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 146
    .local v0, "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    iget v1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    return v1
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

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
    .line 58
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    iput-object p1, p0, Lanywheresoftware/b4a/objects/ViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    .line 59
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lanywheresoftware/b4a/objects/ViewWrapper;->lastId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lanywheresoftware/b4a/objects/ViewWrapper;->lastId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lanywheresoftware/b4a/objects/ViewWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper$1;-><init>(Lanywheresoftware/b4a/objects/ViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_longclick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lanywheresoftware/b4a/objects/ViewWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper$2;-><init>(Lanywheresoftware/b4a/objects/ViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    :cond_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 91
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method

.method public setColor(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 173
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 174
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v8, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v8, :cond_1

    .line 175
    const/4 v5, 0x0

    .line 176
    .local v5, "radius":F
    instance-of v8, v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;

    if-eqz v8, :cond_0

    .line 177
    check-cast v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    iget v5, v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;->cornerRadius:F

    .line 192
    :goto_0
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;-><init>()V

    .line 193
    .local v0, "cd":Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
    float-to-int v8, v5

    invoke-virtual {v0, p1, v8}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->Initialize(II)V

    .line 194
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    .end local v0    # "cd":Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
    .end local v5    # "radius":F
    :goto_1
    return-void

    .line 180
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "radius":F
    .restart local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 182
    .local v3, "g":Landroid/graphics/drawable/GradientDrawable;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mGradientState"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 183
    .local v7, "state":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 184
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 185
    .local v4, "gstate":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mRadius"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 186
    .local v6, "radiusF":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 188
    .end local v4    # "gstate":Ljava/lang/Object;
    .end local v6    # "radiusF":Ljava/lang/reflect/Field;
    .end local v7    # "state":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "g":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "radius":F
    :cond_1
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "Enabled"    # Z

    .prologue
    .line 217
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param

    .prologue
    .line 152
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 155
    return-void
.end method

.method public setLeft(I)V
    .locals 2
    .param p1, "left"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param

    .prologue
    .line 158
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 159
    .local v0, "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    iput p1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    .line 160
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 161
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 202
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public setTop(I)V
    .locals 2
    .param p1, "top"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param

    .prologue
    .line 164
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 165
    .local v0, "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    iput p1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    .line 166
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 167
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "Visible"    # Z

    .prologue
    .line 211
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    return-void

    .line 211
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param

    .prologue
    .line 123
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 124
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->baseToString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->IsInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Enabled=false, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Visible=false, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 280
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lanywheresoftware/b4a/BALayout$LayoutParams;

    if-nez v1, :cond_4

    .line 281
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Layout not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", Tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_3
    return-object v0

    .line 284
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    const-string v2, ", Height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
