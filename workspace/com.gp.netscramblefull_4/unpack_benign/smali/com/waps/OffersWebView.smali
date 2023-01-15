.class public Lcom/waps/OffersWebView;
.super Landroid/app/Activity;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lcom/waps/p;

.field private D:Landroid/content/SharedPreferences;

.field private E:Landroid/content/SharedPreferences;

.field private F:Landroid/content/SharedPreferences;

.field private G:Landroid/content/SharedPreferences$Editor;

.field private H:Landroid/content/SharedPreferences$Editor;

.field private I:Landroid/content/SharedPreferences$Editor;

.field private J:Ljava/lang/String;

.field private K:Landroid/content/pm/PackageManager;

.field private L:Ljava/util/List;

.field private M:Ljava/util/List;

.field private N:Landroid/widget/ListView;

.field private O:Landroid/widget/LinearLayout;

.field private P:Z

.field private Q:Ljava/lang/String;

.field a:Ljava/lang/String;

.field b:Lcom/waps/o;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/waps/q;

.field f:Ljava/io/File;

.field private g:Landroid/webkit/WebView;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ProgressBar;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-string v1, ""

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->n:Ljava/lang/String;

    const-string v0, "false"

    iput-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waps/OffersWebView;->q:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->J:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/OffersWebView;->P:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->Q:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/waps/OffersWebView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->G:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/waps/OffersWebView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->M:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/waps/OffersWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/waps/OffersWebView;->P:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->H:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->I:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/waps/OffersWebView;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->K:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/waps/OffersWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/waps/OffersWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/waps/OffersWebView;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/waps/OffersWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/waps/OffersWebView;->getDownload()V

    return-void
.end method

.method static synthetic access$400(Lcom/waps/OffersWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/waps/OffersWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/waps/OffersWebView;->q:Z

    return p1
.end method

.method static synthetic access$600(Lcom/waps/OffersWebView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/waps/OffersWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/waps/OffersWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/waps/OffersWebView;)Lcom/waps/p;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->C:Lcom/waps/p;

    return-object v0
.end method

.method private bindNewApp(Landroid/content/pm/PackageManager;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->L:Ljava/util/List;

    iget-object v0, p0, Lcom/waps/OffersWebView;->L:Ljava/util/List;

    iget-object v1, p0, Lcom/waps/OffersWebView;->J:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/waps/OffersWebView;->getNewAppInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->M:Ljava/util/List;

    iget-object v0, p0, Lcom/waps/OffersWebView;->M:Ljava/util/List;

    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v1, p1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private getAlreadyInstalledPackages(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    const-string v0, ""

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    move v4, v2

    move-object v2, v0

    move v0, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "Package_Name"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Package_Names"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private getDownload()V
    .locals 8

    const-wide/16 v6, 0x0

    const-string v0, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    const-string v0, "true"

    :try_start_0
    iget-object v0, p0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    iget-object v1, p0, Lcom/waps/OffersWebView;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waps/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->c:Ljava/lang/String;

    const-string v0, "/sdcard/download/"

    iput-object v0, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    const v0, 0x1080072

    iget-object v1, p0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    iget-object v2, p0, Lcom/waps/OffersWebView;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waps/o;->b(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/waps/OffersWebView;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8be5\u5b89\u88c5\u6587\u4ef6\u5df2\u5b58\u5728\u4e8e/sdcard/download/\u76ee\u5f55\u4e0b\uff0c\u60a8\u53ef\u4ee5\u76f4\u63a5\u5b89\u88c5\u6216\u91cd\u65b0\u4e0b\u8f7d\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5b89\u88c5"

    new-instance v2, Lcom/waps/z;

    invoke-direct {v2, p0}, Lcom/waps/z;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u4e0b\u8f7d"

    new-instance v2, Lcom/waps/y;

    invoke-direct {v2, p0}, Lcom/waps/y;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/waps/x;

    invoke-direct {v2, p0}, Lcom/waps/x;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v0, v1

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/waps/o;->h:Z

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waps/OffersWebView;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/waps/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    const-string v0, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waps/OffersWebView;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/waps/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/waps/OffersWebView;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v0, v1

    cmp-long v0, v2, v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waps/OffersWebView;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/waps/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/waps/OffersWebView;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    const-string v0, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/waps/OffersWebView;->b:Lcom/waps/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waps/OffersWebView;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/waps/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private initMetaData(Landroid/os/Bundle;)V
    .locals 4

    const-string v3, "UrlPath"

    const-string v2, "URL"

    const-string v1, "Offers_URL"

    if-eqz p1, :cond_3

    const-string v0, "Offers_URL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Offers_URL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->l:Ljava/lang/String;

    :cond_0
    const-string v0, "URL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "URL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->l:Ljava/lang/String;

    :cond_1
    const-string v0, "UrlPath"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Notify_Id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->r:Ljava/lang/String;

    const-string v0, "UrlPath"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->s:Ljava/lang/String;

    const-string v0, "ACTIVITY_FLAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->t:Ljava/lang/String;

    const-string v0, "SHWO_FLAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/OffersWebView;->s:Ljava/lang/String;

    const-string v1, "down_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Notify_Url_Params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->v:Ljava/lang/String;

    :cond_2
    const-string v0, "URL_PARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    const-string v0, "CLIENT_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->k:Ljava/lang/String;

    const-string v0, "USER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->n:Ljava/lang/String;

    const-string v0, "isFinshClose"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&publisher_user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    const-string v0, "offers_webview_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private initNotityData(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v2, ""

    if-eqz p1, :cond_0

    const-string v0, "Notity_Id"

    const-string v1, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->w:Ljava/lang/String;

    const-string v0, "Notity_Title"

    const-string v1, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->y:Ljava/lang/String;

    const-string v0, "Notity_Content"

    const-string v1, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->z:Ljava/lang/String;

    const-string v0, "Notity_UrlPath"

    const-string v1, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    const-string v0, "offers_webview_tag"

    const-string v1, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->B:Ljava/lang/String;

    const-string v0, "NotifyAd_Tag"

    const-string v1, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    const-string v1, "down_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Notity_UrlParams"

    const-string v1, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->A:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->A:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private showNewApp()V
    .locals 8

    :try_start_0
    const-string v0, "DownLoadSave"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->E:Landroid/content/SharedPreferences;

    const-string v0, "Package_Name"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->F:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/waps/OffersWebView;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->H:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/OffersWebView;->F:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->I:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/OffersWebView;->F:Landroid/content/SharedPreferences;

    const-string v1, "Package_Names"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->J:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->K:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/waps/OffersWebView;->K:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v0}, Lcom/waps/OffersWebView;->bindNewApp(Landroid/content/pm/PackageManager;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waps/OffersWebView;->O:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/waps/OffersWebView;->O:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->O:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->O:Landroid/widget/LinearLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u65b0\u5b89\u88c5\u5e94\u7528\u5217\u8868"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x1080029

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/waps/OffersWebView;->N:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    const-string v3, "\u786e\u3000\u5b9a"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    const-string v4, "\u5173\u3000\u95ed"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/waps/OffersWebView;->N:Landroid/widget/ListView;

    new-instance v5, Lcom/waps/af;

    iget-object v6, p0, Lcom/waps/OffersWebView;->M:Ljava/util/List;

    invoke-direct {v5, p0, p0, v6}, Lcom/waps/af;-><init>(Lcom/waps/OffersWebView;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/waps/OffersWebView;->N:Landroid/widget/ListView;

    new-instance v5, Lcom/waps/ac;

    invoke-direct {v5, p0}, Lcom/waps/ac;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/waps/OffersWebView;->N:Landroid/widget/ListView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/waps/OffersWebView;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->O:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/waps/OffersWebView;->N:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->O:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/waps/OffersWebView;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/waps/ad;

    invoke-direct {v0, p0}, Lcom/waps/ad;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/waps/v;

    invoke-direct {v0, p0}, Lcom/waps/v;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showNotifyList(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v1, 0x3

    const-string v4, ""

    const-string v0, "DownLoadSave"

    invoke-virtual {p0, v0, v1}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->E:Landroid/content/SharedPreferences;

    const-string v0, "Package_Name"

    invoke-virtual {p0, v0, v1}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->F:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/waps/OffersWebView;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->H:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/OffersWebView;->F:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->I:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/OffersWebView;->F:Landroid/content/SharedPreferences;

    const-string v1, "Package_Names"

    const-string v2, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->J:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->K:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/waps/OffersWebView;->K:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v0}, Lcom/waps/OffersWebView;->bindNewApp(Landroid/content/pm/PackageManager;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/waps/OffersWebView;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/waps/OffersWebView;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package_tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/waps/OffersWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private showPushDialog()V
    .locals 3

    :try_start_0
    const-string v0, "Notify"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->D:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/waps/OffersWebView;->D:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/waps/OffersWebView;->initNotityData(Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->D:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->G:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/waps/OffersWebView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/waps/OffersWebView;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/waps/aa;

    invoke-direct {v2, p0}, Lcom/waps/aa;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const-string v1, "\u5173\u95ed"

    new-instance v2, Lcom/waps/ab;

    invoke-direct {v2, p0}, Lcom/waps/ab;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-static {p0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->w:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/waps/AppConnect;->notify_receiver(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getNewAppInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v11, 0x3

    const/4 v10, -0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const-string v9, ""

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/OffersWebView;->initMetaData(Landroid/os/Bundle;)V

    const-string v0, "Notify"

    invoke-virtual {p0, v0, v11}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/OffersWebView;->initNotityData(Landroid/content/SharedPreferences;)V

    const-string v0, "feedback"

    iget-object v1, p0, Lcom/waps/OffersWebView;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, ""

    iget-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    const-string v1, "OffersWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/waps/OffersWebView;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/waps/OffersWebView;->i:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/waps/OffersWebView;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/waps/OffersWebView;->i:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/OffersWebView;->t:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v2, ""

    iget-object v2, p0, Lcom/waps/OffersWebView;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "notify"

    iget-object v5, p0, Lcom/waps/OffersWebView;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v4, "show"

    iget-object v5, p0, Lcom/waps/OffersWebView;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v4

    iget-object v5, p0, Lcom/waps/OffersWebView;->r:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/waps/AppConnect;->notify_receiver(Ljava/lang/String;I)V

    :cond_1
    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_1
    const-string v4, "feedback"

    iget-object v5, p0, Lcom/waps/OffersWebView;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v8}, Lcom/waps/OffersWebView;->setRequestedOrientation(I)V

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setId(I)V

    iget-object v5, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setId(I)V

    const-string v6, "\u5173\u3000\u95ed"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v6, p0, Lcom/waps/OffersWebView;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xd

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/waps/OffersWebView;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/waps/OffersWebView;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/waps/u;

    invoke-direct {v0, p0}, Lcom/waps/u;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    new-instance v2, Lcom/waps/ae;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/waps/ae;-><init>(Lcom/waps/OffersWebView;Lcom/waps/u;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/waps/SDKUtils;

    invoke-direct {v0, p0}, Lcom/waps/SDKUtils;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    const-string v3, "SDKUtils"

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    const-string v1, "10.0.0.172"

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v9, v9, v9}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/waps/w;

    invoke-direct {v1, p0}, Lcom/waps/w;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    const-string v0, "Package_Name"

    invoke-virtual {p0, v0, v11}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Package_Names"

    const-string v2, ""

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v9, :cond_4

    invoke-direct {p0, p0}, Lcom/waps/OffersWebView;->getAlreadyInstalledPackages(Landroid/content/Context;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, ""

    iget-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    const-string v1, "down_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/waps/OffersWebView;->Q:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/waps/OffersWebView;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&publisher_user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    const-string v0, "true"

    iput-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/waps/AppConnect;->notify_receiver(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/waps/OffersWebView;->Q:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/waps/AppConnect;->notify_receiver(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    const-string v0, "true"

    iput-object v0, p0, Lcom/waps/OffersWebView;->o:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/waps/AppConnect;->notify_receiver(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nyid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/waps/OffersWebView;->l:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v7, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?a=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/waps/OffersWebView;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/waps/OffersWebView;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "Start_Tag"

    invoke-virtual {p0, v0, v11}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notify_start_tag"

    const-string v3, ""

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v2, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x103000b

    invoke-virtual {p0, v0}, Lcom/waps/OffersWebView;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/waps/OffersWebView;->requestWindowFeature(I)Z

    new-instance v0, Lcom/waps/p;

    invoke-direct {v0, p0}, Lcom/waps/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waps/OffersWebView;->C:Lcom/waps/p;

    sget-boolean v0, Lcom/waps/q;->c:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/waps/AppConnect;->E:Z

    if-eqz v0, :cond_4

    const-string v0, "DownLoadSave"

    invoke-virtual {p0, v0, v11}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->E:Landroid/content/SharedPreferences;

    const-string v0, "Package_Name"

    invoke-virtual {p0, v0, v11}, Lcom/waps/OffersWebView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->F:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/waps/OffersWebView;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->H:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/OffersWebView;->F:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->I:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/OffersWebView;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v8, :cond_d

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/waps/OffersWebView;->E:Landroid/content/SharedPreferences;

    const-string v4, "0"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/waps/OffersWebView;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->C:Lcom/waps/p;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/waps/p;->a(I)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_4

    :cond_d
    invoke-direct {p0}, Lcom/waps/OffersWebView;->showNewApp()V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_e
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/waps/AppConnect;->A:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/waps/AppConnect;->A:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+++++"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--startActivity--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/waps/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/waps/OffersWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_f
    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/waps/OffersWebView;->M:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/waps/OffersWebView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/waps/OffersWebView;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V

    iput-boolean v1, p0, Lcom/waps/OffersWebView;->q:Z

    :cond_0
    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    sput-boolean v1, Lcom/waps/p;->c:Z

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/OffersWebView;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
