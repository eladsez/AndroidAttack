.class public Lanywheresoftware/b4a/objects/ActivityWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ActivityWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$IterableList;


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Lanywheresoftware/b4a/BALayout;",
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
    .line 76
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 1
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    .line 80
    sget-boolean v0, Lanywheresoftware/b4a/BA;->shellMode:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/objects/ActivityWrapper;->reinitializeForShell(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    goto :goto_0
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
    .line 338
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string p3, "drawable"

    .end local p3    # "tag":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 339
    const/4 v1, 0x0

    .line 338
    invoke-static {p0, p3, p2, v1}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 340
    .local p3, "d":Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 341
    .local v3, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 342
    .local v1, "defaultTitleColor":I
    if-eqz p2, :cond_0

    .line 343
    const-string v2, "titleColor"

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .end local v1    # "defaultTitleColor":I
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitleColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->getDefault(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 344
    .restart local v1    # "defaultTitleColor":I
    :cond_0
    if-eqz p3, :cond_1

    .line 345
    invoke-virtual {v3, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .end local p3    # "d":Landroid/graphics/drawable/Drawable;
    check-cast p3, Landroid/app/Activity;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    const-string p3, "titleColor"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 348
    .local p3, "titleColor":I
    const v2, -0xf0701

    if-eq p3, v2, :cond_6

    .line 349
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .end local v1    # "defaultTitleColor":I
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p3}, Landroid/app/Activity;->setTitleColor(I)V

    .line 353
    .end local p3    # "titleColor":I
    :cond_2
    :goto_0
    sget-boolean p3, Lanywheresoftware/b4a/BA;->debugMode:Z

    if-eqz p3, :cond_3

    .line 354
    sget-object v1, Lanywheresoftware/b4a/BA;->warningEngine:Lanywheresoftware/b4a/BA$WarningEngine;

    const-string p3, "fullScreen"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string p3, "includeTitle"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v1, v2, p3}, Lanywheresoftware/b4a/BA$WarningEngine;->checkFullScreenInLayout(ZZ)V

    .line 357
    :cond_3
    if-eqz p2, :cond_5

    .line 358
    const-string p2, "fullScreen"

    .end local p2    # "designer":Z
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 359
    .local p2, "fullScreen":Z
    const-string p3, "includeTitle"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 360
    .local v1, "includeTitle":Z
    const-string p1, "anywheresoftware.b4a.designer.Designer"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 361
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string p3, "fullScreen"

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p3

    .line 362
    .local p3, "prevFullScreen":Z
    const-string v2, "includeTitle"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 363
    .local v2, "prevIncludeTitle":Z
    if-ne p3, p2, :cond_4

    if-eq v1, v2, :cond_5

    .line 364
    :cond_4
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "prevFullScreen":Z
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .end local v2    # "prevIncludeTitle":Z
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .local p3, "i":Landroid/content/Intent;
    const-string v2, "anywheresoftware.b4a.designer.includeTitle"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string v1, "anywheresoftware.b4a.designer.fullScreen"

    .end local v1    # "includeTitle":Z
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    const-string p2, "restartActivity"

    .end local p2    # "fullScreen":Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .end local p1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local p3    # "i":Landroid/content/Intent;
    :cond_5
    check-cast p0, Landroid/view/View;

    .end local p0    # "prev":Ljava/lang/Object;
    return-object p0

    .line 350
    .local v1, "defaultTitleColor":I
    .restart local p0    # "prev":Ljava/lang/Object;
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "designer":Z
    .local p3, "titleColor":I
    :cond_6
    if-eqz p2, :cond_2

    .line 351
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .end local p3    # "titleColor":I
    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3, v1}, Landroid/app/Activity;->setTitleColor(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public AddMenuItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "EventName"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lanywheresoftware/b4a/objects/ActivityWrapper;->AddMenuItem3(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 168
    return-void
.end method

.method public AddMenuItem2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "Bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->AddMenuItem3(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 186
    return-void
.end method

.method public AddMenuItem3(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "Bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "AddToActionBar"    # Z

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 194
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 195
    .local v0, "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v0, p3}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 196
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 198
    .end local v0    # "bd":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v2, Lanywheresoftware/b4a/B4AMenuItem;

    invoke-direct {v2, p1, v1, p2, p4}, Lanywheresoftware/b4a/B4AMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 199
    .local v2, "mi":Lanywheresoftware/b4a/B4AMenuItem;
    iget-object v3, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object p0, v3, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Lanywheresoftware/b4a/B4AActivity;

    invoke-interface {p0, v2}, Lanywheresoftware/b4a/B4AActivity;->addMenuItem(Lanywheresoftware/b4a/B4AMenuItem;)V

    .line 200
    return-void
.end method

.method public AddView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "View"    # Landroid/view/View;
    .param p2, "Left"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param
    .param p3, "Top"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param
    .param p4, "Width"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param
    .param p5, "Height"    # I
        .annotation build Lanywheresoftware/b4a/BA$Pixel;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    new-instance v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-direct {v0, p2, p3, p4, p5}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/BALayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method

.method public BringToFront()V
    .locals 0
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 297
    return-void
.end method

.method public CloseMenu()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 236
    return-void
.end method

.method public Finish()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 313
    return-void
.end method

.method public Get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ActivityWrapper;->GetView(I)Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public GetAllViewsRecursive()Lanywheresoftware/b4a/BA$IterableList;
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Landroid/view/ViewGroup;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public GetStartingIntent()Lanywheresoftware/b4a/objects/IntentWrapper;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lanywheresoftware/b4a/objects/IntentWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/IntentWrapper;-><init>()V

    .line 110
    .local v0, "iw":Lanywheresoftware/b4a/objects/IntentWrapper;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    .line 111
    return-object v0
.end method

.method public GetView(I)Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    .locals 2
    .param p1, "Index"    # I

    .prologue
    .line 129
    new-instance v0, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;-><init>()V

    .line 130
    .local v0, "vw":Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/BALayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 131
    return-object v0
.end method

.method public LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 6
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
    const/4 v2, 0x1

    .line 207
    sput-boolean v2, Lanywheresoftware/b4a/AbsObjectWrapper;->Activity_LoadLayout_Was_Called:Z

    .line 208
    iget-object v3, p2, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;ZLandroid/view/ViewGroup;Ljava/util/LinkedHashMap;Z)Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;->layoutValues:Lanywheresoftware/b4a/keywords/LayoutValues;

    return-object v0
.end method

.method public OpenMenu()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 230
    return-void
.end method

.method public RemoveAllViews()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->removeAllViews()V

    .line 138
    return-void
.end method

.method public RemoveView()V
    .locals 0
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 307
    return-void
.end method

.method public RemoveViewAt(I)V
    .locals 0
    .param p1, "Index"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/BALayout;->removeViewAt(I)V

    .line 144
    return-void
.end method

.method public RerunDesignerScript(Ljava/lang/String;Lanywheresoftware/b4a/BA;II)V
    .locals 10
    .param p1, "Layout"    # Ljava/lang/String;
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .param p3, "Width"    # I
    .param p4, "Height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 215
    new-instance v3, Lanywheresoftware/b4a/BALayout;

    iget-object v0, p2, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    .line 216
    .local v3, "vg":Landroid/view/ViewGroup;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v4, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutHashMap;

    invoke-direct {v4}, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutHashMap;-><init>()V

    .line 218
    .local v4, "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    iget-object v0, p2, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    move v5, v2

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    :goto_0
    if-lt v5, v1, :cond_0

    move-object v0, p1

    move-object v1, p2

    move v5, v2

    .line 223
    invoke-static/range {v0 .. v5}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;ZLandroid/view/ViewGroup;Ljava/util/LinkedHashMap;Z)Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;

    .line 224
    return-void

    .line 218
    :cond_0
    aget-object v6, v0, v5

    .line 219
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-class v7, Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 220
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    iget-object v9, p2, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanywheresoftware/b4a/objects/ViewWrapper;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;-><init>(Lanywheresoftware/b4a/objects/ViewWrapper;Landroid/view/View;)V

    invoke-virtual {v4, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public SendToBack()V
    .locals 0
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 302
    return-void
.end method

.method public SetActivityResult(ILanywheresoftware/b4a/objects/IntentWrapper;)V
    .locals 1
    .param p1, "Result"    # I
    .param p2, "Data"    # Lanywheresoftware/b4a/objects/IntentWrapper;

    .prologue
    .line 117
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, p1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public getEnabled()Z
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberOfViews()I
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getNumberOfViews()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitleColor()I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getVisible()Z
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ActivityWrapper;
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public reinitializeForShell(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->IsInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->setObject(Ljava/lang/Object;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 91
    const-string v0, "activity_touch"

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout;

    new-instance v1, Lanywheresoftware/b4a/objects/ActivityWrapper$1;

    invoke-direct {v1, p0, p1}, Lanywheresoftware/b4a/objects/ActivityWrapper$1;-><init>(Lanywheresoftware/b4a/objects/ActivityWrapper;Lanywheresoftware/b4a/BA;)V

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BALayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "Enabled"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 287
    return-void
.end method

.method public setTitle(Ljava/lang/Object;)V
    .locals 3
    .param p1, "Title"    # Ljava/lang/Object;

    .prologue
    .line 239
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 240
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 243
    .local v1, "cs":Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    return-void

    .line 242
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "Color"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitleColor(I)V

    .line 256
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "Visible"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 278
    return-void
.end method
