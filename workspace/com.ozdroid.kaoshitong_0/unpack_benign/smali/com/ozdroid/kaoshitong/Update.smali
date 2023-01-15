.class public Lcom/ozdroid/kaoshitong/Update;
.super Lcom/ozdroid/kaoshitong/Base;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/Update$VersionAdapter;
    }
.end annotation


# static fields
.field public static final DB_PATH:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.ozdroid.kaoshitong"


# instance fields
.field private currentDownload:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

.field private downloadListner:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

.field private getdataListener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

.field private intenttoLoad:Landroid/content/Intent;

.field private loading:Landroid/view/View;

.field private mAdapter:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

.field private mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

.field private mVerisonListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
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

    sput-object v0, Lcom/ozdroid/kaoshitong/Update;->DB_PATH:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Base;-><init>()V

    .line 204
    new-instance v0, Lcom/ozdroid/kaoshitong/Update$1;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/Update$1;-><init>(Lcom/ozdroid/kaoshitong/Update;)V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->getdataListener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    .line 235
    new-instance v0, Lcom/ozdroid/kaoshitong/Update$2;

    invoke-direct {v0, p0}, Lcom/ozdroid/kaoshitong/Update$2;-><init>(Lcom/ozdroid/kaoshitong/Update;)V

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->downloadListner:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/Update;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ozdroid/kaoshitong/Update;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->mVerisonListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/Update$VersionAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->mAdapter:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/ui/InfoDialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ozdroid/kaoshitong/Update;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/ozdroid/kaoshitong/Update;->restore()V

    return-void
.end method

.method static synthetic access$5(Lcom/ozdroid/kaoshitong/Update;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->intenttoLoad:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ozdroid/kaoshitong/Update;Lcom/ozdroid/kaoshitong/model/VersionItemEntry;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Update;->currentDownload:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    return-void
.end method

.method static synthetic access$7(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/model/VersionItemEntry;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->currentDownload:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ozdroid/kaoshitong/Update;)Lcom/ozdroid/kaoshitong/model/IDownloadListener;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/Update;->downloadListner:Lcom/ozdroid/kaoshitong/model/IDownloadListener;

    return-object v0
.end method

.method private restore()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 288
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ozdroid/kaoshitong/Update;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/databases/cwdata.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "CWDBFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ozdroid/kaoshitong/Update;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/databases/jsdata.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, "JQDBFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 294
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 298
    :cond_1
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setCuoWuLastIndex(I)V

    .line 299
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setJiaQiangLastInde(I)V

    .line 300
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setMoniLastIndex(Ljava/lang/String;)V

    .line 301
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setShunXuLastIndex(I)V

    .line 302
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setTheMoniLastIndex(I)V

    .line 303
    invoke-static {p0}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->getInstance(Landroid/content/Context;)Lcom/ozdroid/kaoshitong/sql/PrefHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/ozdroid/kaoshitong/Update;->currentDownload:Lcom/ozdroid/kaoshitong/model/VersionItemEntry;

    invoke-virtual {v3}, Lcom/ozdroid/kaoshitong/model/VersionItemEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ozdroid/kaoshitong/sql/PrefHelper;->setDataType(Ljava/lang/String;)V

    .line 304
    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f030010

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/ozdroid/kaoshitong/Base;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Update;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->mVerisonListView:Landroid/widget/ListView;

    .line 66
    const v1, 0x7f08003d

    invoke-virtual {p0, v1}, Lcom/ozdroid/kaoshitong/Update;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->loading:Landroid/view/View;

    .line 67
    new-instance v1, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/Update$VersionAdapter;-><init>(Lcom/ozdroid/kaoshitong/Update;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->mAdapter:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    .line 68
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->mVerisonListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Update;->mAdapter:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    invoke-static {}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->getInstance()Lcom/ozdroid/kaoshitong/model/VersionEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/Update;->getdataListener:Lcom/ozdroid/kaoshitong/model/IGetDataListener;

    invoke-virtual {v1, v2, p0}, Lcom/ozdroid/kaoshitong/model/VersionEntry;->getDataList(Lcom/ozdroid/kaoshitong/model/IGetDataListener;Landroid/content/Context;)V

    .line 70
    new-instance v1, Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/ui/InfoDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->mExitDlg:Lcom/ozdroid/kaoshitong/ui/InfoDialog;

    .line 72
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/Update;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "intent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intent"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v1, "intent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 77
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ozdroid/kaoshitong/ShunXu;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->intenttoLoad:Landroid/content/Intent;

    goto :goto_0

    .line 81
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ozdroid/kaoshitong/SuiJi;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->intenttoLoad:Landroid/content/Intent;

    goto :goto_0

    .line 85
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ozdroid/kaoshitong/Moni;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->intenttoLoad:Landroid/content/Intent;

    goto :goto_0

    .line 89
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ozdroid/kaoshitong/Cuowu;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->intenttoLoad:Landroid/content/Intent;

    goto :goto_0

    .line 93
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ozdroid/kaoshitong/JiaQiang;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->intenttoLoad:Landroid/content/Intent;

    goto :goto_0

    .line 97
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/Update;->intenttoLoad:Landroid/content/Intent;

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/ozdroid/kaoshitong/Base;->onDestroy()V

    .line 49
    return-void
.end method
