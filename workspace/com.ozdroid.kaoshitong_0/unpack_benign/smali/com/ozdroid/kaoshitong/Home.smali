.class public Lcom/ozdroid/kaoshitong/Home;
.super LMysticGD/iBoobsLite/BaseAActivity;
.source "Home.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/Home$MenuAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final DB_PATH:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.ozdroid.kaoshitong"


# instance fields
.field private adView:Lnet/youmi/android/AdView;

.field private adh:I

.field private height:I

.field private mBtnAbout:Landroid/widget/Button;

.field private mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

.field private mHomeListView:Landroid/widget/ListView;

.field private mMenuAdapter:Lcom/ozdroid/kaoshitong/Home$MenuAdapter;

.field private mSinpper:Lcom/ozdroid/kaoshitong/ui/MySinpper;

.field private menuArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.ozdroid.kaoshitong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ozdroid/kaoshitong/Home;->DB_PATH:Ljava/lang/String;

    .line 57
    const-string v0, "c23d55cdfcfcfe33"

    const-string v1, "04945dbd06e4b5c4"

    const/16 v2, 0x14

    const/4 v3, 0x0

    const-string v4, "1.0"

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, LMysticGD/iBoobsLite/BaseAActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/Home;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    return-object v0
.end method

.method private checkData()Z
    .locals 4

    .prologue
    .line 248
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ozdroid/kaoshitong/Home;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/bishitong.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "TestDBFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ozdroid/kaoshitong/Home;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/channel.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "ChDBFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    :cond_0
    const/4 v2, 0x0

    .line 254
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Home;->mBtnAbout:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ozdroid/kaoshitong/About;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    const-string v2, "\u5173\u4e8e\u8f6f\u4ef6"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/ozdroid/kaoshitong/Home;->startActivity(Landroid/content/Intent;)V

    .line 277
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0xb4

    const/4 v11, 0x0

    .line 63
    invoke-super {p0, p1}, LMysticGD/iBoobsLite/BaseAActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v8, 0x7f030003

    invoke-virtual {p0, v8}, Lcom/ozdroid/kaoshitong/Home;->setContentView(I)V

    .line 66
    const v8, 0x7f080016

    invoke-virtual {p0, v8}, Lcom/ozdroid/kaoshitong/Home;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->mHomeListView:Landroid/widget/ListView;

    .line 67
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "baseIntent":Landroid/content/Intent;
    new-instance v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    const v8, 0x7f02005b

    const-string v9, "\u987a\u5e8f\u7ec3\u4e60"

    const-string v10, "\u6309\u7167\u9898\u76ee\u987a\u5e8f\u8fdb\u884c\u7ec3\u4e60"

    invoke-direct {v2, v8, v9, v10, v0}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 72
    .local v2, "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/ozdroid/kaoshitong/SuiJi;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v6, "suijiIntent":Landroid/content/Intent;
    new-instance v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    .end local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    const v8, 0x7f02005c

    const-string v9, "\u968f\u673a\u7ec3\u4e60"

    const-string v10, "\u6309\u7167\u9898\u76ee\u968f\u673a\u8fdb\u884c\u7ec3\u4e60"

    invoke-direct {v2, v8, v9, v10, v6}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 75
    .restart local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/ozdroid/kaoshitong/Moni;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v4, "moniIntent":Landroid/content/Intent;
    new-instance v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    .end local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    const v8, 0x7f020053

    const-string v9, "\u6a21\u62df\u8003\u8bd5"

    const-string v10, "\u6309\u7167\u771f\u5b9e\u6a21\u5f0f\u8fdb\u884c\u8003\u8bd5"

    invoke-direct {v2, v8, v9, v10, v4}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 78
    .restart local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v1, "cuowuIntent":Landroid/content/Intent;
    new-instance v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    .end local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    const v8, 0x7f02004d

    const-string v9, "\u9519\u9898\u96c6"

    const-string v10, "\u5728\u8bad\u7ec3\u4e2d\u7b54\u9519\u7684\u9898\u96c6"

    invoke-direct {v2, v8, v9, v10, v1}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 81
    .restart local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/ozdroid/kaoshitong/JiaQiang;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v3, "jqIntent":Landroid/content/Intent;
    new-instance v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    .end local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    const v8, 0x7f020052

    const-string v9, "\u5f85\u52a0\u5f3a"

    const-string v10, "\u6709\u5f85\u52a0\u5f3a\u7684\u9898\u96c6"

    invoke-direct {v2, v8, v9, v10, v3}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 84
    .restart local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/ozdroid/kaoshitong/Update;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v7, "updateIntent":Landroid/content/Intent;
    new-instance v2, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    .end local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    const v8, 0x7f02004f

    const-string v9, "\u9009\u62e9\u9898\u5e93"

    const-string v10, "\u9009\u62e9\u52a0\u8f7d\u7684\u9898\u5e93"

    invoke-direct {v2, v8, v9, v10, v7}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 87
    .restart local v2    # "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v8, Lcom/ozdroid/kaoshitong/Home$MenuAdapter;

    invoke-direct {v8, p0}, Lcom/ozdroid/kaoshitong/Home$MenuAdapter;-><init>(Lcom/ozdroid/kaoshitong/Home;)V

    iput-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->mMenuAdapter:Lcom/ozdroid/kaoshitong/Home$MenuAdapter;

    .line 90
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->mHomeListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/ozdroid/kaoshitong/Home;->mMenuAdapter:Lcom/ozdroid/kaoshitong/Home$MenuAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->mHomeListView:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    new-instance v8, Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    invoke-direct {v8, p0}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    .line 94
    new-instance v8, Lcom/ozdroid/kaoshitong/ui/MySinpper;

    invoke-direct {v8, p0}, Lcom/ozdroid/kaoshitong/ui/MySinpper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->mSinpper:Lcom/ozdroid/kaoshitong/ui/MySinpper;

    .line 96
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Home;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/ozdroid/kaoshitong/Home;->height:I

    .line 97
    new-instance v8, Lnet/youmi/android/AdView;

    const v9, -0x777778

    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-direct {v8, p0, v9, v10, v11}, Lnet/youmi/android/AdView;-><init>(Landroid/content/Context;III)V

    iput-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->adView:Lnet/youmi/android/AdView;

    .line 98
    const/4 v8, 0x1

    const/high16 v9, 0x428c0000    # 70.0f

    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/ozdroid/kaoshitong/Home;->adh:I

    .line 99
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->adView:Lnet/youmi/android/AdView;

    iget v9, p0, Lcom/ozdroid/kaoshitong/Home;->height:I

    iget v10, p0, Lcom/ozdroid/kaoshitong/Home;->adh:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v11, v9, v11, v11}, Lnet/youmi/android/AdView;->setPadding(IIII)V

    .line 100
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->adView:Lnet/youmi/android/AdView;

    invoke-virtual {p0, v8, v5}, Lcom/ozdroid/kaoshitong/Home;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const v8, 0x7f080018

    invoke-virtual {p0, v8}, Lcom/ozdroid/kaoshitong/Home;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->mBtnAbout:Landroid/widget/Button;

    .line 104
    iget-object v8, p0, Lcom/ozdroid/kaoshitong/Home;->mBtnAbout:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->update(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 169
    add-int/lit8 v0, p3, 0x1

    .line 170
    .local v0, "index":I
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Home;->checkData()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Home;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    const-string v3, "\u6ca1\u6709\u8bd5\u9898\u6570\u636e,\u662f\u5426\u9009\u62e9\u4e0b\u8f7d\u8bd5\u9898?"

    new-instance v4, Lcom/ozdroid/kaoshitong/Home$1;

    invoke-direct {v4, p0, v0}, Lcom/ozdroid/kaoshitong/Home$1;-><init>(Lcom/ozdroid/kaoshitong/Home;I)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    .line 217
    :goto_0
    return-void

    .line 189
    :cond_0
    if-ne p3, v5, :cond_1

    .line 190
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->open()V

    .line 191
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Home;->mSinpper:Lcom/ozdroid/kaoshitong/ui/MySinpper;

    const-string v3, "\u9009\u62e9\u968f\u673a\u7ec3\u4e60\u7684\u5355\u5143"

    new-instance v4, Lcom/ozdroid/kaoshitong/Home$2;

    invoke-direct {v4, p0}, Lcom/ozdroid/kaoshitong/Home$2;-><init>(Lcom/ozdroid/kaoshitong/Home;)V

    .line 210
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getAll()Ljava/util/List;

    move-result-object v5

    .line 191
    invoke-virtual {v2, v3, v4, v5}, Lcom/ozdroid/kaoshitong/ui/MySinpper;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/SinpperListener;Ljava/util/List;)V

    .line 211
    invoke-static {}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->getInstance()Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ozdroid/kaoshitong/sql/ChannelDBHelper;->close()V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Home;->menuArray:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;

    .line 216
    .local v1, "item":Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;
    invoke-virtual {v1, p0}, Lcom/ozdroid/kaoshitong/model/HomeMenuEntry;->StartActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 225
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Home;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    const-string v1, "\u662f\u5426\u771f\u7684\u9000\u51fa?"

    new-instance v2, Lcom/ozdroid/kaoshitong/Home$3;

    invoke-direct {v2, p0}, Lcom/ozdroid/kaoshitong/Home$3;-><init>(Lcom/ozdroid/kaoshitong/Home;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;->Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/OnInfoDialogSubmitListener;Z)V

    move v0, v3

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, LMysticGD/iBoobsLite/BaseAActivity;->onPause()V

    .line 264
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, LMysticGD/iBoobsLite/BaseAActivity;->onResume()V

    .line 259
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 260
    return-void
.end method
