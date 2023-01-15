.class Lcom/ievyhrdnoniovof/AdController$ContextList;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic M:Lcom/ievyhrdnoniovof/AdController;

.field private synthetic k:Landroid/content/SharedPreferences$Editor;

.field private synthetic l:Landroid/content/SharedPreferences;

.field private synthetic m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdController;Landroid/content/Context;)V
    .locals 3
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;
    .param p2, "arg1"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->M:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->m:Landroid/content/Context;

    const-string v1, "5I\u0000]\u0000I\u0000U\u0006^"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->l:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->k:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdController$ContextList;->l([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs l([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const-wide/16 v5, 0x0

    const/16 v13, 0x9

    const/4 v1, 0x0

    const-string v2, "LBAdController"

    const-string v3, "|\nR\u000b\\EO\n\u001b\u0016O\u0004I\u0011\u001b$H\u001cU\u0006o\u0004H\u000e\u001b\u0011TE\\\u0000U\u0000I\u0004O\u0000\u001b\u0006T\u000bO\u0000C\u0011H"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController$ContextList;
    .local v0, "this":Lcom/ievyhrdnoniovof/AdController$ContextList;
    :goto_1
    iget-object v1, v0, Lcom/ievyhrdnoniovof/AdController$ContextList;->m:Landroid/content/Context;

    const-string v2, "\u0004X\u0011R\u0013R\u0011B"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->m:Landroid/content/Context;

    const-string v3, "F?C#H8C\u007fW4U<N\"T8H?\t\u0016b\u0005x\u0005f\u0002l\u0002"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "CX\u000bOW`8\u0006"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const-string v6, "?F<Bl"

    invoke-static {v6}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->m:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u001d\u0015Z\u0006P\u0004\\\u0000\u0006"

    invoke-static {v5}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u0004s\u0017\ni"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    .end local v0    # "this":Lcom/ievyhrdnoniovof/AdController$ContextList;
    .restart local p0    # "this":Lcom/ievyhrdnoniovof/AdController$ContextList;
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v3, "S8S=Bl"

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v10, "\u0011R\u0011W\u0000\u0006"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->m:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v10, "wW0D:F6Bl"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v10, "\u001d\u000cU\u0016O\u0004W\t\u0006"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v13, :cond_2

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    :goto_3
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v10, "\u0001$W5F%Bl"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v13, :cond_3

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    :goto_4
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v10, "\u001d\u0013X\n_\u0000\u0006"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v10, "wQ?F<Bl"

    invoke-static {v10}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "CX\u000bOT`8\u0006"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0004s\u0017\ni"

    invoke-static {v4}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_2
    move-wide v3, v5

    goto/16 :goto_3

    :cond_3
    move-wide v3, v5

    goto :goto_4

    :cond_4
    move-object v0, p0

    .end local p0    # "this":Lcom/ievyhrdnoniovof/AdController$ContextList;
    .restart local v0    # "this":Lcom/ievyhrdnoniovof/AdController$ContextList;
    goto/16 :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected l(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->k:Landroid/content/SharedPreferences$Editor;

    const-string v1, "6\u007f:x*u1~=o6d,u5i*|7~6h"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->k:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->k:Landroid/content/SharedPreferences$Editor;

    const-string v1, "\u0002c\u000ed\u001ei\u0005b\ts\u0002"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->k:Landroid/content/SharedPreferences$Editor;

    const-string v1, "h!d&t+o c1h:n5\u007f$o d1r(~"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->k:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ievyhrdnoniovof/AdController$ContextList;->l(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->k:Landroid/content/SharedPreferences$Editor;

    const-string v1, "t\u0015x\u0012h\u001fs\u0014\u007f\u0005t\u000en\u001fw\u0003h\u0016u\u0014t\u0002"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$ContextList;->k:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
