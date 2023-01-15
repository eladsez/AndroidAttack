.class public Lanywheresoftware/b4a/keywords/LayoutBuilder;
.super Ljava/lang/Object;
.source "LayoutBuilder.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;,
        Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutHashMap;,
        Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;,
        Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;,
        Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    }
.end annotation


# static fields
.field private static autoscale:D

.field private static cachedLayouts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;",
            ">;>;"
        }
    .end annotation
.end field

.field private static chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

.field private static customViewWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanywheresoftware/b4a/objects/CustomViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static screenSize:D

.field private static tempBA:Lanywheresoftware/b4a/BA;

.field private static viewsToSendInShellMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->cachedLayouts:Ljava/util/HashMap;

    .line 203
    const-wide/16 v0, 0x0

    sput-wide v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->screenSize:D

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenSize()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 227
    sget-wide v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->screenSize:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-object v2, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v2}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    div-double/2addr v0, v2

    sget v2, Lanywheresoftware/b4a/keywords/Common;->Density:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    sput-wide v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->screenSize:D

    .line 229
    :cond_0
    sget-wide v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->screenSize:D

    return-wide v0
.end method

.method public static isPortrait()Z
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v0

    sget-object v1, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;ZLandroid/view/ViewGroup;Ljava/util/LinkedHashMap;Z)Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;
    .locals 20
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "isActivity"    # Z
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p5, "d4a"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/BA;",
            "Z",
            "Landroid/view/ViewGroup;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;",
            ">;Z)",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    .local p4, "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    :try_start_0
    sput-object p1, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    .line 69
    if-nez p5, :cond_0

    .line 70
    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 71
    :cond_0
    const-string v3, ".bal"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".bal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_1
    const/4 v4, 0x0

    .line 74
    .local v4, "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    sget-object v3, Lanywheresoftware/b4a/keywords/LayoutBuilder;->cachedLayouts:Ljava/util/HashMap;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 75
    .local v3, "cl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;>;"
    if-eqz v3, :cond_12

    .line 76
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;>;"
    check-cast v3, Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;

    .end local v4    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .local v3, "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    move-object v7, v3

    .line 77
    .end local v3    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .local v7, "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    :goto_0
    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 78
    .local v3, "in":Ljava/io/InputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .local v13, "din":Ljava/io/DataInputStream;
    invoke-static {v13}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v4

    .line 80
    .local v4, "version":I
    invoke-static {v13}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v3

    .line 81
    .local v3, "pos":I
    :goto_1
    if-gtz v3, :cond_6

    .line 84
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    .line 85
    .local v3, "cache":[Ljava/lang/String;
    const/4 v5, 0x3

    if-lt v4, v5, :cond_9

    .line 86
    if-eqz v7, :cond_8

    .line 87
    iget-object v3, v7, Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;->cachedStrings:[Ljava/lang/String;

    .line 88
    invoke-static {v13}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    .line 89
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v3

    if-lt v4, v5, :cond_7

    move-object v4, v3

    .line 101
    .end local v3    # "cache":[Ljava/lang/String;
    .local v4, "cache":[Ljava/lang/String;
    :goto_3
    invoke-static {v13}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v8

    .line 102
    .local v8, "numberOfVariants":I
    const/4 v3, 0x0

    sput-object v3, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 103
    invoke-static/range {p1 .. p1}, Lanywheresoftware/b4a/keywords/Common;->GetDeviceLayoutValues(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    move-result-object v3

    .line 104
    .local v3, "device":Lanywheresoftware/b4a/keywords/LayoutValues;
    const/4 v9, 0x0

    .line 105
    .local v9, "variantIndex":I
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 106
    .local v5, "distance":F
    const/4 v6, 0x0

    .local v6, "i":I
    move v14, v9

    .end local v9    # "variantIndex":I
    .local v14, "variantIndex":I
    :goto_4
    if-lt v6, v8, :cond_b

    .line 122
    sget-object v3, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    .end local v3    # "device":Lanywheresoftware/b4a/keywords/LayoutValues;
    iget v3, v3, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    invoke-static {v3}, Lanywheresoftware/b4a/BALayout;->setUserScale(F)V

    .line 124
    if-nez p2, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_d

    .line 125
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    move-object v3, v0

    invoke-virtual {v3}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v11

    .line 126
    .local v11, "mainWidth":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    move-object v3, v0

    invoke-virtual {v3}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v12

    .line 131
    .local v12, "mainHeight":I
    :goto_5
    if-nez p4, :cond_4

    .line 132
    new-instance v10, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutHashMap;

    invoke-direct {v10}, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutHashMap;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .local v10, "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    const/4 v3, 0x0

    .line 134
    .local v3, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v7, :cond_e

    .line 135
    :try_start_1
    iget-object v3, v7, Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;->map:Ljava/util/HashMap;

    .line 141
    .end local v5    # "distance":F
    .end local v6    # "i":I
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->eventsTarget:Ljava/lang/Object;

    move-object/from16 p4, v0

    if-nez p4, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    move-object/from16 p4, v0

    move-object/from16 v5, p4

    :goto_7
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v4, "variant"

    .end local v4    # "cache":[Ljava/lang/String;
    move-object/from16 v0, p4

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .end local v8    # "numberOfVariants":I
    const/4 v9, 0x1

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p2

    .line 141
    invoke-static/range {v3 .. v12}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayoutHelper(Ljava/util/HashMap;Lanywheresoftware/b4a/BA;Ljava/lang/Object;Landroid/view/ViewGroup;ZLjava/lang/String;ZLjava/util/HashMap;II)V

    .line 143
    .end local v7    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    invoke-static/range {p1 .. p1}, Lanywheresoftware/b4a/BA;->isShellModeRuntimeCheck(Lanywheresoftware/b4a/BA;)Z

    move-result p2

    .end local p2    # "isActivity":Z
    if-eqz p2, :cond_3

    sget-object p2, Lanywheresoftware/b4a/keywords/LayoutBuilder;->viewsToSendInShellMode:Ljava/util/HashMap;

    if-eqz p2, :cond_3

    .line 144
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "SEND_VIEWS_AFTER_LAYOUT"

    const/4 v8, 0x1

    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object v9, v0

    const/16 p2, 0x0

    sget-object p3, Lanywheresoftware/b4a/keywords/LayoutBuilder;->viewsToSendInShellMode:Ljava/util/HashMap;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    aput-object p3, v9, p2

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 p1, 0x0

    sput-object p1, Lanywheresoftware/b4a/keywords/LayoutBuilder;->viewsToSendInShellMode:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local p1    # "ba":Lanywheresoftware/b4a/BA;
    :cond_3
    move-object/from16 p4, v10

    .line 149
    .end local v3    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    :cond_4
    :try_start_2
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    .line 150
    sget-object v14, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    .end local v14    # "variantIndex":I
    sget v18, Lanywheresoftware/b4a/keywords/Common;->Density:F

    move-object/from16 v13, p0

    move-object/from16 v15, p4

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v19, p5

    invoke-static/range {v13 .. v19}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->runScripts(Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutValues;Ljava/util/LinkedHashMap;IIFZ)V

    .line 151
    .end local v13    # "din":Ljava/io/DataInputStream;
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static/range {p1 .. p1}, Lanywheresoftware/b4a/BALayout;->setUserScale(F)V

    .line 152
    sget-object p1, Lanywheresoftware/b4a/keywords/LayoutBuilder;->customViewWrappers:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 153
    sget-object p1, Lanywheresoftware/b4a/keywords/LayoutBuilder;->customViewWrappers:Ljava/util/List;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_10

    .line 157
    :cond_5
    new-instance p1, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;

    sget-object p2, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;-><init>(Lanywheresoftware/b4a/keywords/LayoutValues;Ljava/util/LinkedHashMap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    const/16 p0, 0x0

    sput-object p0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    .line 165
    .end local p0    # "file":Ljava/lang/String;
    const/16 p0, 0x0

    sput-object p0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->customViewWrappers:Ljava/util/List;

    .line 157
    return-object p1

    .line 82
    .end local v11    # "mainWidth":I
    .end local v12    # "mainHeight":I
    .local v3, "pos":I
    .local v4, "version":I
    .restart local v7    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .restart local v13    # "din":Ljava/io/DataInputStream;
    .restart local p0    # "file":Ljava/lang/String;
    .restart local p1    # "ba":Lanywheresoftware/b4a/BA;
    .restart local p2    # "isActivity":Z
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_6
    int-to-long v5, v3

    int-to-long v8, v3

    :try_start_3
    invoke-virtual {v13, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v8

    sub-long/2addr v5, v8

    long-to-int v3, v5

    goto/16 :goto_1

    .line 90
    .local v3, "cache":[Ljava/lang/String;
    .local v4, "i":I
    :cond_7
    invoke-static {v13}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v5

    .line 91
    .local v5, "stringSize":I
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 95
    .end local v5    # "stringSize":I
    .local v4, "version":I
    :cond_8
    invoke-static {v13}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v3

    .end local v3    # "cache":[Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/String;

    .line 96
    .restart local v3    # "cache":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    array-length v5, v3

    if-lt v4, v5, :cond_a

    .end local v4    # "i":I
    :cond_9
    move-object v4, v3

    .end local v3    # "cache":[Ljava/lang/String;
    .local v4, "cache":[Ljava/lang/String;
    goto/16 :goto_3

    .line 97
    .restart local v3    # "cache":[Ljava/lang/String;
    .local v4, "i":I
    :cond_a
    invoke-static {v13}, Lanywheresoftware/b4a/ConnectorUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 107
    .local v3, "device":Lanywheresoftware/b4a/keywords/LayoutValues;
    .local v4, "cache":[Ljava/lang/String;
    .local v5, "distance":F
    .restart local v6    # "i":I
    .restart local v8    # "numberOfVariants":I
    .restart local v14    # "variantIndex":I
    :cond_b
    invoke-static {v13}, Lanywheresoftware/b4a/keywords/LayoutValues;->readFromStream(Ljava/io/DataInputStream;)Lanywheresoftware/b4a/keywords/LayoutValues;

    move-result-object v9

    .line 108
    .local v9, "test":Lanywheresoftware/b4a/keywords/LayoutValues;
    sget-object v10, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    if-nez v10, :cond_c

    .line 109
    sput-object v9, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 110
    invoke-virtual {v9, v3}, Lanywheresoftware/b4a/keywords/LayoutValues;->calcDistance(Lanywheresoftware/b4a/keywords/LayoutValues;)F

    move-result v5

    .line 111
    move v9, v6

    .line 106
    .end local v14    # "variantIndex":I
    .local v9, "variantIndex":I
    :goto_a
    add-int/lit8 v6, v6, 0x1

    move v14, v9

    .end local v9    # "variantIndex":I
    .restart local v14    # "variantIndex":I
    goto/16 :goto_4

    .line 114
    .local v9, "test":Lanywheresoftware/b4a/keywords/LayoutValues;
    :cond_c
    invoke-virtual {v9, v3}, Lanywheresoftware/b4a/keywords/LayoutValues;->calcDistance(Lanywheresoftware/b4a/keywords/LayoutValues;)F

    move-result v10

    .line 115
    .local v10, "testDistance":F
    cmpg-float v11, v10, v5

    if-gez v11, :cond_11

    .line 116
    sput-object v9, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 117
    move v5, v10

    .line 118
    move v9, v6

    .end local v14    # "variantIndex":I
    .local v9, "variantIndex":I
    goto :goto_a

    .line 128
    .end local v3    # "device":Lanywheresoftware/b4a/keywords/LayoutValues;
    .end local v9    # "variantIndex":I
    .end local v10    # "testDistance":F
    .restart local v14    # "variantIndex":I
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    .restart local v11    # "mainWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v12, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v12    # "mainHeight":I
    goto/16 :goto_5

    .line 137
    .end local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .local v3, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v10, "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    :cond_e
    :try_start_4
    invoke-static {v13, v4}, Lanywheresoftware/b4a/ConnectorUtils;->readMap(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 138
    sget-object p4, Lanywheresoftware/b4a/keywords/LayoutBuilder;->cachedLayouts:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    .end local v5    # "distance":F
    new-instance v6, Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;

    .end local v6    # "i":I
    invoke-direct {v6, v3, v4}, Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;-><init>(Ljava/util/HashMap;[Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_6

    .line 158
    .end local v4    # "cache":[Ljava/lang/String;
    .end local v7    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .end local v8    # "numberOfVariants":I
    .end local p1    # "ba":Lanywheresoftware/b4a/BA;
    .end local p2    # "isActivity":Z
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :catch_0
    move-exception p1

    move-object/from16 p4, v10

    .line 159
    .end local v3    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .end local v11    # "mainWidth":I
    .end local v12    # "mainHeight":I
    .end local v13    # "din":Ljava/io/DataInputStream;
    .end local v14    # "variantIndex":I
    .local p1, "e":Ljava/io/IOException;
    .restart local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    :goto_b
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    .end local p1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception p1

    .line 164
    :goto_c
    const/16 p0, 0x0

    sput-object p0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    .line 165
    .end local p0    # "file":Ljava/lang/String;
    const/16 p0, 0x0

    sput-object p0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->customViewWrappers:Ljava/util/List;

    .line 166
    throw p1

    .line 141
    .end local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local v3    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "cache":[Ljava/lang/String;
    .restart local v7    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .restart local v8    # "numberOfVariants":I
    .restart local v10    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local v11    # "mainWidth":I
    .restart local v12    # "mainHeight":I
    .restart local v13    # "din":Ljava/io/DataInputStream;
    .restart local v14    # "variantIndex":I
    .restart local p0    # "file":Ljava/lang/String;
    .local p1, "ba":Lanywheresoftware/b4a/BA;
    .restart local p2    # "isActivity":Z
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_f
    :try_start_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->eventsTarget:Ljava/lang/Object;

    move-object/from16 p4, v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v5, p4

    goto/16 :goto_7

    .line 153
    .end local v3    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "cache":[Ljava/lang/String;
    .end local v7    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .end local v8    # "numberOfVariants":I
    .end local v10    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .end local v13    # "din":Ljava/io/DataInputStream;
    .end local v14    # "variantIndex":I
    .end local p1    # "ba":Lanywheresoftware/b4a/BA;
    .end local p2    # "isActivity":Z
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    :cond_10
    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanywheresoftware/b4a/objects/CustomViewWrapper;

    .line 154
    .local p1, "cvw":Lanywheresoftware/b4a/objects/CustomViewWrapper;
    invoke-virtual/range {p1 .. p1}, Lanywheresoftware/b4a/objects/CustomViewWrapper;->AfterDesignerScript()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_8

    .line 158
    .end local v11    # "mainWidth":I
    .end local v12    # "mainHeight":I
    .end local p1    # "cvw":Lanywheresoftware/b4a/objects/CustomViewWrapper;
    :catch_1
    move-exception p1

    goto :goto_b

    .line 160
    :catch_2
    move-exception p1

    .line 161
    .local p1, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_8
    new-instance p2, Ljava/lang/RuntimeException;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 163
    .end local p1    # "e":Ljava/lang/Exception;
    .end local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local v3    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v10    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local v11    # "mainWidth":I
    .restart local v12    # "mainHeight":I
    .restart local v13    # "din":Ljava/io/DataInputStream;
    .restart local v14    # "variantIndex":I
    :catchall_1
    move-exception p1

    move-object/from16 p4, v10

    .end local v10    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    goto :goto_c

    .line 160
    .end local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local v10    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    :catch_3
    move-exception p1

    move-object/from16 p4, v10

    .end local v10    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local p4    # "dynamicTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    goto :goto_d

    .end local v11    # "mainWidth":I
    .end local v12    # "mainHeight":I
    .local v3, "device":Lanywheresoftware/b4a/keywords/LayoutValues;
    .restart local v4    # "cache":[Ljava/lang/String;
    .restart local v5    # "distance":F
    .restart local v6    # "i":I
    .restart local v7    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .restart local v8    # "numberOfVariants":I
    .local v9, "test":Lanywheresoftware/b4a/keywords/LayoutValues;
    .local v10, "testDistance":F
    .local p1, "ba":Lanywheresoftware/b4a/BA;
    .restart local p2    # "isActivity":Z
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_11
    move v9, v14

    .end local v14    # "variantIndex":I
    .local v9, "variantIndex":I
    goto :goto_a

    .end local v5    # "distance":F
    .end local v6    # "i":I
    .end local v7    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .end local v8    # "numberOfVariants":I
    .end local v9    # "variantIndex":I
    .end local v10    # "testDistance":F
    .end local v13    # "din":Ljava/io/DataInputStream;
    .local v3, "cl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;>;"
    .local v4, "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    :cond_12
    move-object v7, v4

    .end local v4    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    .restart local v7    # "mcs":Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
    goto/16 :goto_0
.end method

.method private static loadLayoutHelper(Ljava/util/HashMap;Lanywheresoftware/b4a/BA;Ljava/lang/Object;Landroid/view/ViewGroup;ZLjava/lang/String;ZLjava/util/HashMap;II)V
    .locals 14
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "fieldsTarget"    # Ljava/lang/Object;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "isActivity"    # Z
    .param p5, "currentVariant"    # Ljava/lang/String;
    .param p6, "firstCall"    # Z
    .param p8, "parentWidth"    # I
    .param p9, "parentHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lanywheresoftware/b4a/BA;",
            "Ljava/lang/Object;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p7, "dynamicTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 315
    .local v8, "variant":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 316
    .local v4, "o":Landroid/view/View;
    if-nez p4, :cond_0

    if-nez p6, :cond_f

    .line 317
    :cond_0
    if-eqz p4, :cond_5

    move-object/from16 p6, p3

    .line 318
    .local p6, "act":Landroid/view/ViewGroup;
    :goto_0
    const-string v4, "left"

    .end local v4    # "o":Landroid/view/View;
    const-string v5, "left"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v4, "top"

    const-string v5, "top"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v4, "width"

    const-string v5, "width"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v4, "height"

    const-string v5, "height"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const/4 v4, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p6

    move-object v1, p0

    move v2, v4

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 324
    .local v6, "o":Landroid/view/View;
    if-nez p4, :cond_13

    .line 325
    const-string p6, "name"

    .end local p6    # "act":Landroid/view/ViewGroup;
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 326
    .local p6, "upperCaseName":Ljava/lang/String;
    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "name":Ljava/lang/String;
    const-string p6, "type"

    .end local p6    # "upperCaseName":Ljava/lang/String;
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 328
    .local p6, "cls":Ljava/lang/String;
    const-string v4, "."

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "anywheresoftware.b4a.objects"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    .end local p6    # "cls":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 330
    .restart local p6    # "cls":Ljava/lang/String;
    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p6

    .end local p6    # "cls":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanywheresoftware/b4a/objects/ViewWrapper;

    .line 331
    .local v7, "ow":Lanywheresoftware/b4a/objects/ViewWrapper;
    new-instance v9, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    if-eqz p4, :cond_6

    const/16 p4, 0x0

    .end local p4    # "isActivity":Z
    :goto_1
    move-object v0, v9

    move-object v1, v7

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;-><init>(Lanywheresoftware/b4a/objects/ViewWrapper;Landroid/view/View;)V

    .line 332
    .local v9, "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    const-string p4, "hanchor"

    move-object v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 333
    const-string p4, "hanchor"

    move-object v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    move/from16 v0, p4

    move-object v1, v9

    iput v0, v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->hanchor:I

    .line 334
    const-string p4, "vanchor"

    move-object v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    move/from16 v0, p4

    move-object v1, v9

    iput v0, v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vanchor:I

    .line 336
    :cond_2
    move/from16 v0, p8

    move-object v1, v9

    iput v0, v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->pw:I

    .line 337
    move/from16 v0, p9

    move-object v1, v9

    iput v0, v1, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->ph:I

    .line 338
    move-object/from16 v0, p7

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    move-object/from16 p4, v7

    .line 340
    .local p4, "assigningObject":Lanywheresoftware/b4a/objects/ViewWrapper;
    move-object v0, v7

    instance-of v0, v0, Lanywheresoftware/b4a/objects/CustomViewWrapper;

    move/from16 p6, v0

    if-eqz p6, :cond_8

    .line 341
    sget-object p4, Lanywheresoftware/b4a/keywords/LayoutBuilder;->customViewWrappers:Ljava/util/List;

    .end local p4    # "assigningObject":Lanywheresoftware/b4a/objects/ViewWrapper;
    if-nez p4, :cond_3

    .line 342
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V

    sput-object p4, Lanywheresoftware/b4a/keywords/LayoutBuilder;->customViewWrappers:Ljava/util/List;

    .line 343
    :cond_3
    sget-object p4, Lanywheresoftware/b4a/keywords/LayoutBuilder;->customViewWrappers:Ljava/util/List;

    move-object v0, v7

    check-cast v0, Lanywheresoftware/b4a/objects/CustomViewWrapper;

    move-object v8, v0

    .end local v8    # "variant":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p4

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const-string p4, "customType"

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 345
    .local p4, "cclass":Ljava/lang/String;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result p6

    if-nez p6, :cond_7

    .line 346
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string p1, "CustomView CustomType property was not set."

    .end local p1    # "ba":Lanywheresoftware/b4a/BA;
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "o":Landroid/view/View;
    .end local v7    # "ow":Lanywheresoftware/b4a/objects/ViewWrapper;
    .end local v9    # "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    .restart local v4    # "o":Landroid/view/View;
    .restart local v8    # "variant":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p0    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1    # "ba":Lanywheresoftware/b4a/BA;
    .local p4, "isActivity":Z
    .local p6, "firstCall":Z
    :cond_5
    const/16 p6, 0x0

    goto/16 :goto_0

    .end local v4    # "o":Landroid/view/View;
    .end local p6    # "firstCall":Z
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "o":Landroid/view/View;
    .restart local v7    # "ow":Lanywheresoftware/b4a/objects/ViewWrapper;
    :cond_6
    move-object/from16 p4, p3

    .line 331
    goto/16 :goto_1

    .line 349
    .end local v8    # "variant":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    .local p4, "cclass":Ljava/lang/String;
    :cond_7
    :try_start_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 360
    .local p4, "customClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p4

    .line 361
    .local p4, "customObject":Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Lanywheresoftware/b4a/objects/CustomViewWrapper;

    move-object/from16 p6, v0

    .line 362
    .local p6, "cvw":Lanywheresoftware/b4a/objects/CustomViewWrapper;
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    iput-object v0, v1, Lanywheresoftware/b4a/objects/CustomViewWrapper;->customObject:Ljava/lang/Object;

    .line 363
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v4

    move-object/from16 v1, p6

    iput-object v0, v1, Lanywheresoftware/b4a/objects/CustomViewWrapper;->props:Ljava/util/HashMap;

    .line 364
    move-object/from16 p4, p4

    .line 366
    .end local p4    # "customObject":Ljava/lang/Object;
    .end local p6    # "cvw":Lanywheresoftware/b4a/objects/CustomViewWrapper;
    :cond_8
    sget-boolean p6, Lanywheresoftware/b4a/BA;->shellMode:Z

    if-eqz p6, :cond_e

    .line 367
    sget-object p6, Lanywheresoftware/b4a/keywords/LayoutBuilder;->viewsToSendInShellMode:Ljava/util/HashMap;

    if-nez p6, :cond_9

    .line 368
    new-instance p6, Ljava/util/HashMap;

    invoke-direct/range {p6 .. p6}, Ljava/util/HashMap;-><init>()V

    sput-object p6, Lanywheresoftware/b4a/keywords/LayoutBuilder;->viewsToSendInShellMode:Ljava/util/HashMap;

    .line 369
    :cond_9
    sget-object p6, Lanywheresoftware/b4a/keywords/LayoutBuilder;->viewsToSendInShellMode:Ljava/util/HashMap;

    move-object/from16 v0, p6

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_a
    :goto_3
    invoke-virtual {v7, v6}, Lanywheresoftware/b4a/objects/ViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 385
    const-string p4, "eventName"

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    sget-object p6, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const/16 p6, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 386
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    move-object/from16 v0, p3

    move-object v1, v6

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    move-object v0, v9

    iget v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->hanchor:I

    move/from16 p3, v0

    .end local p3    # "parent":Landroid/view/ViewGroup;
    if-nez p3, :cond_b

    move-object v0, v9

    iget v0, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vanchor:I

    move/from16 p3, v0

    if-eqz p3, :cond_13

    .line 388
    :cond_b
    move/from16 v0, p8

    move/from16 v1, p9

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->fixAnchor(IILanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;)V

    move-object/from16 p4, v6

    .line 399
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "o":Landroid/view/View;
    .end local v7    # "ow":Lanywheresoftware/b4a/objects/ViewWrapper;
    .end local v9    # "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    .end local p8    # "parentWidth":I
    .end local p9    # "parentHeight":I
    .local p4, "o":Landroid/view/View;
    :goto_4
    const-string p3, ":kids"

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 400
    .local p3, "kids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_c

    .line 401
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_10

    const/4 p0, 0x0

    move v12, p0

    .line 402
    .local v12, "pw":I
    :goto_5
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    move v13, p0

    .line 403
    .local v13, "ph":I
    :goto_6
    const/4 p0, 0x0

    .local p0, "i":I
    :goto_7
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result p6

    move v0, p0

    move/from16 v1, p6

    if-lt v0, v1, :cond_12

    .line 408
    .end local v12    # "pw":I
    .end local v13    # "ph":I
    .end local p0    # "i":I
    :cond_c
    return-void

    .line 350
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "o":Landroid/view/View;
    .restart local v7    # "ow":Lanywheresoftware/b4a/objects/ViewWrapper;
    .restart local v9    # "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    .local p0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "parent":Landroid/view/ViewGroup;
    .local p4, "cclass":Ljava/lang/String;
    .restart local p8    # "parentWidth":I
    .restart local p9    # "parentHeight":I
    :catch_0
    move-exception p6

    .line 351
    .local p6, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v4, "."

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 352
    .local v4, "dollar":I
    const/4 v8, -0x1

    if-le v4, v8, :cond_d

    .line 353
    new-instance p6, Ljava/lang/StringBuilder;

    .end local p6    # "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v8, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "dollar":I
    move-object/from16 v0, p6

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 354
    .local p6, "corrected":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Class not found: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4    # "cclass":Ljava/lang/String;
    const-string v4, ", trying: "

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p4 .. p4}, Lanywheresoftware/b4a/BA;->LogInfo(Ljava/lang/String;)V

    .line 355
    invoke-static/range {p6 .. p6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    .local p4, "customClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_2

    .line 358
    .restart local v4    # "dollar":I
    .local p4, "cclass":Ljava/lang/String;
    .local p6, "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_d
    throw p6

    .line 372
    .end local v4    # "dollar":I
    .end local p4    # "cclass":Ljava/lang/String;
    .end local p6    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_e
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p6

    .line 373
    .local p6, "field":Ljava/lang/reflect/Field;
    if-eqz p6, :cond_a

    .line 375
    :try_start_2
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 376
    :catch_1
    move-exception p4

    .line 377
    .local p4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance p4, Ljava/lang/RuntimeException;

    .end local p4    # "e":Ljava/lang/IllegalArgumentException;
    new-instance p6, Ljava/lang/StringBuilder;

    .end local p6    # "field":Ljava/lang/reflect/Field;
    const-string v4, "Field "

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v4, " was declared with the wrong type."

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2

    .line 380
    :catch_2
    move-exception p4

    goto/16 :goto_3

    .line 393
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "o":Landroid/view/View;
    .end local v7    # "ow":Lanywheresoftware/b4a/objects/ViewWrapper;
    .end local v9    # "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    .local v4, "o":Landroid/view/View;
    .restart local v8    # "variant":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "isActivity":Z
    .local p6, "firstCall":Z
    :cond_f
    move-object/from16 p6, p3

    .line 394
    .end local v4    # "o":Landroid/view/View;
    .local p6, "o":Landroid/view/View;
    const-string p4, "drawable"

    .end local p4    # "isActivity":Z
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashMap;

    .line 395
    .local p4, "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 p8, 0x0

    const/16 p9, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p8

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    .end local p8    # "parentWidth":I
    .end local p9    # "parentHeight":I
    move-result-object p4

    .end local p4    # "drawProps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast p4, Landroid/graphics/drawable/Drawable;

    .line 396
    .local p4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p3 .. p4}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 p4, p6

    .end local p6    # "o":Landroid/view/View;
    .local p4, "o":Landroid/view/View;
    goto/16 :goto_4

    .line 401
    .end local v8    # "variant":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p0    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "kids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v12, p0

    goto/16 :goto_5

    .line 402
    .restart local v12    # "pw":I
    :cond_11
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v13, p0

    goto/16 :goto_6

    .line 404
    .restart local v13    # "ph":I
    .local p0, "i":I
    :cond_12
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    const/4 v8, 0x0

    .line 405
    const/4 v10, 0x0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    .line 404
    invoke-static/range {v4 .. v13}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayoutHelper(Ljava/util/HashMap;Lanywheresoftware/b4a/BA;Ljava/lang/Object;Landroid/view/ViewGroup;ZLjava/lang/String;ZLjava/util/HashMap;II)V

    .line 403
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_7

    .end local v12    # "pw":I
    .end local v13    # "ph":I
    .end local p3    # "kids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p4    # "o":Landroid/view/View;
    .restart local v6    # "o":Landroid/view/View;
    .local p0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p8    # "parentWidth":I
    .restart local p9    # "parentHeight":I
    :cond_13
    move-object/from16 p4, v6

    .end local v6    # "o":Landroid/view/View;
    .restart local p4    # "o":Landroid/view/View;
    goto/16 :goto_4
.end method

.method private static runScripts(Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutValues;Ljava/util/LinkedHashMap;IIFZ)V
    .locals 4
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "lv"    # Lanywheresoftware/b4a/keywords/LayoutValues;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "s"    # F
    .param p6, "d4a"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/keywords/LayoutValues;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;",
            ">;IIFZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "views":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string p6, "LS_"

    .end local p6    # "d4a":Z
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const/4 p6, 0x0

    .local p6, "i":I
    move v0, p6

    .end local p6    # "i":I
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p6

    const/4 v2, 0x4

    sub-int/2addr p6, v2

    if-lt v0, p6, :cond_0

    .line 181
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "file":Ljava/lang/String;
    sget-object p6, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p6, ".designerscripts."

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 185
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 p6, 0x0

    :try_start_1
    invoke-static {p6}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->variantToMethod(Lanywheresoftware/b4a/keywords/LayoutValues;)Ljava/lang/String;

    move-result-object p6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    .end local v0    # "i":I
    const/4 v1, 0x0

    const-class v2, Ljava/util/LinkedHashMap;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p0, p6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p6

    .line 186
    .local p6, "m":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local p6    # "m":Ljava/lang/reflect/Method;
    :goto_1
    :try_start_2
    invoke-static {p1}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->variantToMethod(Lanywheresoftware/b4a/keywords/LayoutValues;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "lv":Lanywheresoftware/b4a/keywords/LayoutValues;
    const/4 p6, 0x4

    new-array p6, p6, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Ljava/util/LinkedHashMap;

    aput-object v1, p6, v0

    const/4 v0, 0x1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p6, v0

    const/4 v0, 0x2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p6, v0

    const/4 v0, 0x3

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, p6, v0

    invoke-virtual {p0, p1, p6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 191
    .local p0, "m":Ljava/lang/reflect/Method;
    const/4 p1, 0x0

    const/4 p6, 0x4

    new-array p6, p6, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p6, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2    # "views":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    move-result-object p3

    .end local p3    # "w":I
    aput-object p3, p6, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p6, p2

    const/4 p2, 0x3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p6, p2

    invoke-virtual {p0, p1, p6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    .end local p0    # "m":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 174
    .restart local v0    # "i":I
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .local p0, "file":Ljava/lang/String;
    .restart local p1    # "lv":Lanywheresoftware/b4a/keywords/LayoutValues;
    .restart local p2    # "views":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local p3    # "w":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p6

    .line 175
    .local p6, "c":C
    invoke-static {p6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .end local p6    # "c":C
    :goto_3
    add-int/lit8 p6, v0, 0x1

    .end local v0    # "i":I
    .local p6, "i":I
    move v0, p6

    .end local p6    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_0

    .line 178
    .local p6, "c":C
    :cond_1
    const-string p6, "_"

    .end local p6    # "c":C
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 193
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "file":Ljava/lang/String;
    .end local p1    # "lv":Lanywheresoftware/b4a/keywords/LayoutValues;
    .end local p2    # "views":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .end local p3    # "w":I
    :catch_0
    move-exception p0

    .line 194
    .local p0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 196
    .end local p0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception p0

    .line 197
    .local p0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 195
    :catch_2
    move-exception p0

    goto :goto_2

    .line 192
    :catch_3
    move-exception p0

    goto :goto_2

    .line 187
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "lv":Lanywheresoftware/b4a/keywords/LayoutValues;
    .restart local p2    # "views":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    .restart local p3    # "w":I
    :catch_4
    move-exception p6

    goto :goto_1
.end method

.method public static scaleAll(Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "views":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    return-void

    .line 235
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    .line 236
    .local v0, "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    iget-object v2, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->IsInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    instance-of v2, v2, Lanywheresoftware/b4a/objects/ActivityWrapper;

    if-nez v2, :cond_0

    .line 239
    invoke-static {v0}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->scaleView(Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;)V

    goto :goto_0
.end method

.method public static scaleView(Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;)V
    .locals 15
    .param p0, "vwa"    # Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;

    .prologue
    .line 243
    iget-object v8, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vw:Lanywheresoftware/b4a/objects/ViewWrapper;

    .line 244
    .local v8, "v":Lanywheresoftware/b4a/objects/ViewWrapper;, "Lanywheresoftware/b4a/objects/ViewWrapper<*>;"
    invoke-virtual {v8}, Lanywheresoftware/b4a/objects/ViewWrapper;->getLeft()I

    move-result v3

    .line 245
    .local v3, "left":I
    invoke-virtual {v8}, Lanywheresoftware/b4a/objects/ViewWrapper;->getWidth()I

    move-result v9

    .line 246
    .local v9, "width":I
    invoke-virtual {v8}, Lanywheresoftware/b4a/objects/ViewWrapper;->getHeight()I

    move-result v2

    .line 247
    .local v2, "height":I
    invoke-virtual {v8}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTop()I

    move-result v7

    .line 248
    .local v7, "top":I
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->parent:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->pw:I

    move v6, v1

    .line 249
    .local v6, "pw":I
    :goto_0
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->parent:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_1
    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->ph:I

    move v5, v1

    .line 251
    .local v5, "ph":I
    :goto_1
    iget v4, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->right:I

    .local v4, "right":I
    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->bottom:I

    .line 252
    .local v1, "bottom":I
    iget v10, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->hanchor:I

    sget v11, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->LEFT:I

    if-ne v10, v11, :cond_5

    .line 253
    int-to-double v10, v3

    sget-wide v12, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v4, v10

    .line 254
    .local v4, "newLeft":I
    add-int/2addr v3, v9

    int-to-double v9, v3

    sget-wide v11, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .end local v3    # "left":I
    .end local v9    # "width":I
    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v3, v9

    sub-int/2addr v3, v4

    .local v3, "newWidth":I
    move v14, v3

    .end local v3    # "newWidth":I
    .local v14, "newWidth":I
    move v3, v4

    .end local v4    # "newLeft":I
    .local v3, "newLeft":I
    move v4, v14

    .line 270
    .end local v14    # "newWidth":I
    .local v4, "newWidth":I
    :goto_2
    invoke-virtual {v8, v3}, Lanywheresoftware/b4a/objects/ViewWrapper;->setLeft(I)V

    .line 271
    invoke-virtual {v8, v4}, Lanywheresoftware/b4a/objects/ViewWrapper;->setWidth(I)V

    .line 273
    iget v3, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vanchor:I

    .end local v3    # "newLeft":I
    sget v4, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->TOP:I

    .end local v4    # "newWidth":I
    if-ne v3, v4, :cond_7

    .line 275
    int-to-double v3, v7

    sget-wide v5, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .end local v5    # "ph":I
    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 276
    .local v1, "newTop":I
    add-int p0, v7, v2

    int-to-double v2, p0

    sget-wide v4, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .end local v2    # "height":I
    .end local p0    # "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int p0, v2

    sub-int/2addr p0, v1

    .line 291
    .end local v6    # "pw":I
    .local p0, "newHeight":I
    :goto_3
    invoke-virtual {v8, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setTop(I)V

    .line 292
    invoke-virtual {v8, p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->setHeight(I)V

    .line 294
    instance-of p0, v8, Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;

    .end local p0    # "newHeight":I
    if-eqz p0, :cond_2

    .line 295
    move-object v0, v8

    check-cast v0, Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;

    move-object p0, v0

    .line 296
    .local p0, "t":Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;
    invoke-interface {p0}, Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;->getTextSize()F

    move-result v1

    .end local v1    # "newTop":I
    float-to-double v1, v1

    sget-wide v3, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-interface {p0, v1}, Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;->setTextSize(F)V

    .line 298
    .end local p0    # "t":Lanywheresoftware/b4a/keywords/LayoutBuilder$DesignerTextSizeMethod;
    :cond_2
    return-void

    .line 248
    .restart local v2    # "height":I
    .local v3, "left":I
    .restart local v9    # "width":I
    .local p0, "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    :cond_3
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v6, v1

    goto :goto_0

    .line 249
    .restart local v6    # "pw":I
    :cond_4
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v5, v1

    goto :goto_1

    .line 256
    .local v1, "bottom":I
    .local v4, "right":I
    .restart local v5    # "ph":I
    :cond_5
    iget v10, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->hanchor:I

    sget v11, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->RIGHT:I

    if-ne v10, v11, :cond_6

    .line 257
    int-to-double v10, v4

    sget-wide v12, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v3, v10

    .line 258
    .local v3, "newRight":I
    add-int/2addr v4, v9

    int-to-double v9, v4

    sget-wide v11, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .end local v4    # "right":I
    .end local v9    # "width":I
    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v4, v9

    sub-int/2addr v4, v3

    .line 259
    .local v4, "newWidth":I
    sub-int v3, v6, v3

    sub-int/2addr v3, v4

    .local v3, "newLeft":I
    goto :goto_2

    .line 264
    .local v3, "left":I
    .local v4, "right":I
    .restart local v9    # "width":I
    :cond_6
    int-to-double v9, v3

    sget-wide v11, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .end local v9    # "width":I
    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v3, v9

    .line 265
    .local v3, "newLeft":I
    int-to-double v9, v4

    sget-wide v11, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v4, v9

    .line 266
    .local v4, "newRight":I
    sub-int v4, v6, v4

    sub-int/2addr v4, v3

    .local v4, "newWidth":I
    goto :goto_2

    .line 279
    .end local v3    # "newLeft":I
    .end local v4    # "newWidth":I
    :cond_7
    iget p0, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->vanchor:I

    .end local p0    # "vwa":Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;
    sget v3, Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;->BOTTOM:I

    if-ne p0, v3, :cond_8

    .line 281
    int-to-double v3, v1

    sget-wide v6, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .end local v6    # "pw":I
    mul-double/2addr v3, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v6

    double-to-int p0, v3

    .line 282
    .local p0, "newBottom":I
    add-int/2addr v1, v2

    int-to-double v1, v1

    sget-wide v3, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .end local v1    # "bottom":I
    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    sub-int/2addr v1, p0

    .line 283
    .local v1, "newHeight":I
    sub-int p0, v5, p0

    sub-int/2addr p0, v1

    .local p0, "newTop":I
    move v14, v1

    .end local v1    # "newHeight":I
    .local v14, "newHeight":I
    move v1, p0

    .end local p0    # "newTop":I
    .local v1, "newTop":I
    move p0, v14

    .end local v14    # "newHeight":I
    .local p0, "newHeight":I
    goto :goto_3

    .line 287
    .end local p0    # "newHeight":I
    .local v1, "bottom":I
    .restart local v6    # "pw":I
    :cond_8
    int-to-double v2, v7

    sget-wide v6, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .end local v2    # "height":I
    .end local v6    # "pw":I
    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    .line 288
    .local v2, "newTop":I
    int-to-double v3, v1

    sget-wide v6, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    mul-double/2addr v3, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v6

    double-to-int p0, v3

    .line 289
    .local p0, "newBottom":I
    sub-int v1, v5, v2

    sub-int p0, v1, p0

    .local p0, "newHeight":I
    move v1, v2

    .end local v2    # "newTop":I
    .local v1, "newTop":I
    goto/16 :goto_3
.end method

.method public static setScaleRate(D)V
    .locals 8
    .param p0, "rate"    # D

    .prologue
    .line 205
    sget-object v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v0

    sget-object v1, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lanywheresoftware/b4a/keywords/Common;->Density:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 206
    .local v0, "deviceSize":D
    sget-object v2, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    iget v2, v2, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    sget-object v3, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    iget v3, v3, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    add-int/2addr v2, v3

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lanywheresoftware/b4a/keywords/LayoutBuilder;->chosen:Lanywheresoftware/b4a/keywords/LayoutValues;

    iget v3, v3, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    div-float/2addr v2, v3

    float-to-double v4, v2

    .line 207
    .local v4, "variantSize":D
    div-double v2, v0, v4

    .line 208
    .local v2, "deviceToLayout":D
    const-string v6, "autoscaleall_old_behaviour"

    const-string v7, "false"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    sget-object v0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    .end local v0    # "deviceSize":D
    iget-object v0, v0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v0

    sget-object v1, Lanywheresoftware/b4a/keywords/LayoutBuilder;->tempBA:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x443b8000    # 750.0f

    sget v2, Lanywheresoftware/b4a/keywords/Common;->Density:F

    .end local v2    # "deviceToLayout":D
    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 210
    .local v0, "delta":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p0, v0

    add-double/2addr p0, v2

    sput-wide p0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    .line 223
    .end local v0    # "delta":D
    .end local v4    # "variantSize":D
    .end local p0    # "rate":D
    :goto_0
    const-wide/16 p0, 0x0

    sput-wide p0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->screenSize:D

    .line 225
    return-void

    .line 213
    .local v0, "deviceSize":D
    .restart local v2    # "deviceToLayout":D
    .restart local v4    # "variantSize":D
    .restart local p0    # "rate":D
    :cond_0
    const-wide v6, 0x3fee666666666666L    # 0.95

    cmpl-double v6, v2, v6

    if-lez v6, :cond_1

    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1

    .line 214
    .end local v2    # "deviceToLayout":D
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sput-wide p0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    goto :goto_0

    .line 216
    :cond_1
    const-wide v2, 0x4087700000000000L    # 750.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 217
    .local v0, "delta":D
    const-wide v2, 0x4087700000000000L    # 750.0

    div-double v2, v4, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 218
    .local v2, "vdelta":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, p0

    add-double/2addr v2, v4

    .line 219
    .local v2, "vscale":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p0, v0

    add-double/2addr p0, v4

    div-double/2addr p0, v2

    sput-wide p0, Lanywheresoftware/b4a/keywords/LayoutBuilder;->autoscale:D

    goto :goto_0
.end method

.method private static variantToMethod(Lanywheresoftware/b4a/keywords/LayoutValues;)Ljava/lang/String;
    .locals 6
    .param p0, "lv"    # Lanywheresoftware/b4a/keywords/LayoutValues;

    .prologue
    const-string v5, "_"

    .line 302
    if-nez p0, :cond_0

    .line 303
    const-string v0, "general"

    .line 306
    .local v0, "variant":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LS_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 305
    .end local v0    # "variant":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    invoke-static {v2}, Lanywheresoftware/b4a/BA;->NumberToString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "variant":Ljava/lang/String;
    goto :goto_0
.end method
