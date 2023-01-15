.class public Lanywheresoftware/b4a/objects/TabHostWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "TabHostWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "TabHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;,
        Lanywheresoftware/b4a/objects/TabHostWrapper$MyTabHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/widget/TabHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
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
    .line 202
    .local p1, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 203
    .local v1, "firstTime":Z
    if-nez p0, :cond_0

    .line 204
    const/4 v1, 0x1

    .line 205
    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v7, v0

    const-class v8, Lanywheresoftware/b4a/objects/TabHostWrapper$MyTabHost;

    invoke-static {v7, v8, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->buildNativeView(Landroid/content/Context;Ljava/lang/Class;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object p0

    .line 207
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    .line 208
    .local v4, "th":Landroid/widget/TabHost;
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    .line 209
    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7, v4}, Lanywheresoftware/b4a/objects/TabHostWrapper;->initializeTabWidget(Landroid/content/Context;Landroid/widget/TabHost;)V

    .line 210
    new-instance v6, Landroid/widget/TextView;

    check-cast p3, Landroid/content/Context;

    .end local p3    # "tag":Ljava/lang/Object;
    invoke-direct {v6, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 211
    .local v6, "v":Landroid/widget/TextView;
    const-string v7, "This is an example page.\nTab pages should be added programmatically."

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x3

    if-le v2, v7, :cond_2

    .line 220
    .end local v2    # "i":I
    .end local v6    # "v":Landroid/widget/TextView;
    :cond_1
    return-object v4

    .line 213
    .restart local v2    # "i":I
    .restart local v6    # "v":Landroid/widget/TextView;
    :cond_2
    new-instance v3, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;

    invoke-direct {v3, v6}, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;-><init>(Landroid/view/View;)V

    .line 214
    .local v3, "m":Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 215
    .local v5, "ts":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Page "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 217
    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createPanelForLayoutFile(Lanywheresoftware/b4a/BA;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "LayoutFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0xb

    .line 108
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 109
    .local v0, "pw":Lanywheresoftware/b4a/objects/PanelWrapper;
    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lanywheresoftware/b4a/objects/PanelWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 110
    const/16 v1, 0x54

    .line 111
    .local v1, "yfix":I
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 112
    invoke-static {p1}, Lanywheresoftware/b4a/keywords/Common;->GetDeviceLayoutValues(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    move-result-object v2

    invoke-virtual {v2}, Lanywheresoftware/b4a/keywords/LayoutValues;->getApproximateScreenSize()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 113
    const/16 v1, 0x44

    .line 115
    :cond_0
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getWidth()I

    move-result v4

    const/16 v5, 0x14

    invoke-static {v5}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 116
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getHeight()I

    move-result v5

    invoke-static {v1}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 115
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {v0, p2, p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 118
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TabHostWrapper;
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private static initializeTabWidget(Landroid/content/Context;Landroid/widget/TabHost;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tabHost"    # Landroid/widget/TabHost;

    .prologue
    const/4 v6, -0x1

    .line 67
    new-instance v3, Landroid/widget/TabWidget;

    invoke-direct {v3, p0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 68
    .local v3, "tw":Landroid/widget/TabWidget;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v4, 0x5

    invoke-static {v4}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    .line 70
    .local v2, "pad":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 71
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setId(I)V

    .line 73
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v4, 0x1020011

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 76
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 77
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v4}, Landroid/widget/TabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 81
    return-void
.end method


# virtual methods
.method public AddTab(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Title"    # Ljava/lang/String;
    .param p3, "LayoutFile"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p3}, Lanywheresoftware/b4a/objects/TabHostWrapper;->createPanelForLayoutFile(Lanywheresoftware/b4a/BA;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->AddTab2(Ljava/lang/String;Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public AddTab2(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "View"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "~temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 90
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;

    invoke-direct {v0, p2}, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;-><init>(Landroid/view/View;)V

    .line 91
    .local v0, "m":Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 92
    .local v1, "ts":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 93
    invoke-virtual {v1, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 94
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TabHostWrapper;
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 95
    return-void
.end method

.method public AddTabWithIcon(Lanywheresoftware/b4a/BA;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "Title"    # Ljava/lang/String;
    .param p3, "DefaultBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "SelectedBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "LayoutFile"    # Ljava/lang/String;
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p5}, Lanywheresoftware/b4a/objects/TabHostWrapper;->createPanelForLayoutFile(Lanywheresoftware/b4a/BA;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2, p3, p4, v0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->AddTabWithIcon2(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public AddTabWithIcon2(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 8
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "DefaultBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "SelectedBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "View"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 128
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "~temp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 130
    :cond_0
    new-instance v2, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;

    invoke-direct {v2, p4}, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;-><init>(Landroid/view/View;)V

    .line 131
    .local v2, "m":Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 132
    .local v4, "ts":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 134
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 135
    .local v0, "bd1":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v0, p2}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 136
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 137
    .local v1, "bd2":Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v1, p3}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 138
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 139
    .local v3, "sd":Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x1

    new-array v6, v5, [I

    const v5, 0x10100a1

    aput v5, v6, v7

    .line 140
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {v3, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 141
    new-array v6, v7, [I

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v4, p1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 143
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TabHostWrapper;
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 144
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TabHostWrapper;
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TabHostWrapper;
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "keepOldObject"    # Z
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 48
    if-nez p3, :cond_0

    .line 49
    new-instance v2, Landroid/widget/TabHost;

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/TabHostWrapper;->setObject(Ljava/lang/Object;)V

    .line 50
    :cond_0
    const/4 v2, 0x1

    invoke-super {p0, p1, p2, v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 51
    iget-object v3, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-static {v3, v2}, Lanywheresoftware/b4a/objects/TabHostWrapper;->initializeTabWidget(Landroid/content/Context;Landroid/widget/TabHost;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_tabchanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    new-instance v3, Lanywheresoftware/b4a/objects/TabHostWrapper$1;

    invoke-direct {v3, p0, p1, p2}, Lanywheresoftware/b4a/objects/TabHostWrapper$1;-><init>(Lanywheresoftware/b4a/objects/TabHostWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 60
    :cond_1
    new-instance v0, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;

    new-instance v2, Landroid/view/View;

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;-><init>(Landroid/view/View;)V

    .line 61
    .local v0, "m":Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    const-string v3, "~temp"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 62
    .local v1, "ts":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 63
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 64
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TabHostWrapper;
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 65
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 0
    .param p1, "Index"    # I
    .annotation build Lanywheresoftware/b4a/BA$RaisesSynchronousEvents;
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/TabHostWrapper;
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 174
    return-void
.end method
