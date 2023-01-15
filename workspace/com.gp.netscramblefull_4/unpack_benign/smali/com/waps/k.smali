.class Lcom/waps/k;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;


# direct methods
.method private constructor <init>(Lcom/waps/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/AppConnect;Lcom/waps/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/k;-><init>(Lcom/waps/AppConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v1}, Lcom/waps/AppConnect;->access$100(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v2}, Lcom/waps/AppConnect;->access$200(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v2}, Lcom/waps/AppConnect;->access$200(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/waps/AppConnect;->access$300()Lcom/waps/r;

    move-result-object v2

    const-string v3, "http://app.wapx.cn/action/connect/active?"

    invoke-virtual {v2, v3, v1}, Lcom/waps/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->access$400(Lcom/waps/AppConnect;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 10

    const/4 v9, 0x0

    const-string v0, "push_flag"

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/waps/AppConnect;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$600(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v1}, Lcom/waps/AppConnect;->access$600(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$600(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v1}, Lcom/waps/AppConnect;->access$700(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://app.wapx.cn/action/app/update?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v2}, Lcom/waps/AppConnect;->access$100(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->access$800(Lcom/waps/AppConnect;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/waps/AppConnect;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/Package.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-static {}, Lcom/waps/AppConnect;->access$1000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-static {}, Lcom/waps/AppConnect;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$1100(Lcom/waps/AppConnect;)V

    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    new-instance v1, Lcom/waps/h;

    iget-object v2, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/waps/h;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->access$1202(Lcom/waps/AppConnect;Lcom/waps/h;)Lcom/waps/h;

    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$1200(Lcom/waps/AppConnect;)Lcom/waps/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$1400(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PushFlag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v0, "push_flag"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    iget-object v0, v0, Lcom/waps/AppConnect;->w:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, ""

    iget-object v1, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    iget-object v1, v1, Lcom/waps/AppConnect;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->access$1500(Lcom/waps/AppConnect;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    new-instance v0, Lcom/waps/m;

    iget-object v1, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    iget-object v2, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    iget-object v2, v2, Lcom/waps/AppConnect;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    iget-object v3, v3, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    iget-object v4, v4, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    iget-object v5, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    iget-object v5, v5, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    iget-object v6, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v6}, Lcom/waps/AppConnect;->access$100(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/waps/m;-><init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_flag"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v9}, Lcom/waps/AppConnect;->access$902(Z)Z

    :goto_1
    return-void

    :cond_5
    :try_start_1
    sget-object v0, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v1}, Lcom/waps/AppConnect;->access$1500(Lcom/waps/AppConnect;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/waps/m;

    iget-object v3, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    sget-object v4, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    iget-object v5, p0, Lcom/waps/k;->a:Lcom/waps/AppConnect;

    invoke-static {v5}, Lcom/waps/AppConnect;->access$100(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/waps/m;-><init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v9}, Lcom/waps/AppConnect;->access$902(Z)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/waps/AppConnect;->access$902(Z)Z

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/k;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/waps/k;->a(Ljava/lang/Boolean;)V

    return-void
.end method
