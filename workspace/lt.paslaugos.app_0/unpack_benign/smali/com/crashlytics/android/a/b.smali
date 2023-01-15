.class public Lcom/crashlytics/android/a/b;
.super La/a/a/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/i<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcom/crashlytics/android/a/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/a/a/i;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/a/b;->a:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.1.19"

    return-object v0
.end method

.method public a(La/a/a/a/a/b/j$a;)V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/z;

    invoke-virtual {p1}, La/a/a/a/a/b/j$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/a/a/a/a/b/j$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/crashlytics/android/a/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a_()Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/crashlytics/android/a/b;->q()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "0.0"

    goto :goto_0

    :cond_0
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    iget-wide v1, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    :goto_1
    move-wide v6, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/crashlytics/android/a/b;->p()La/a/a/a/a/b/p;

    move-result-object v3

    move-object v1, p0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lcom/crashlytics/android/a/z;->a(La/a/a/a/i;Landroid/content/Context;La/a/a/a/a/b/p;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/a/z;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/z;

    iget-object v1, p0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/z;

    invoke-virtual {v1}, Lcom/crashlytics/android/a/z;->b()V

    new-instance v1, La/a/a/a/a/b/o;

    invoke-direct {v1}, La/a/a/a/a/b/o;-><init>()V

    invoke-virtual {v1, v8}, La/a/a/a/a/b/o;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/crashlytics/android/a/b;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error retrieving app properties"

    invoke-interface {v2, v3, v4, v1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, La/a/a/a/a/g/q;->a()La/a/a/a/a/g/q;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/g/q;->b()La/a/a/a/a/g/t;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to retrieve settings"

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, v1, La/a/a/a/a/g/t;->d:La/a/a/a/a/g/m;

    iget-boolean v2, v2, La/a/a/a/a/g/m;->d:Z

    if-eqz v2, :cond_1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Analytics collection enabled"

    invoke-interface {v2, v3, v4}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/z;

    iget-object v1, v1, La/a/a/a/a/g/t;->e:La/a/a/a/a/g/b;

    invoke-virtual {p0}, Lcom/crashlytics/android/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/crashlytics/android/a/z;->a(La/a/a/a/a/g/b;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Analytics collection disabled"

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/z;

    invoke-virtual {v1}, Lcom/crashlytics/android/a/z;->c()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error dealing with settings"

    invoke-interface {v2, v3, v4, v1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/a/b;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/crashlytics/android/a/b;->q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
