.class public Lcom/crashlytics/android/b/c;
.super La/a/a/a/i;

# interfaces
.implements La/a/a/a/a/b/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/i<",
        "Ljava/lang/Boolean;",
        ">;",
        "La/a/a/a/a/b/m;"
    }
.end annotation


# instance fields
.field private final a:La/a/a/a/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/crashlytics/android/b/h;

.field private c:Lcom/crashlytics/android/b/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/a/a/i;-><init>()V

    new-instance v0, La/a/a/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/b/c;->a:La/a/a/a/a/a/b;

    new-instance v0, Lcom/crashlytics/android/b/h;

    invoke-direct {v0}, Lcom/crashlytics/android/b/h;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/b/c;->b:Lcom/crashlytics/android/b/h;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/crashlytics/android/b/d;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "crashlytics-build.properties"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-static {p1}, Lcom/crashlytics/android/b/d;->a(Ljava/io/InputStream;)Lcom/crashlytics/android/b/d;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v2, "Beta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/crashlytics/android/b/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " build properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/crashlytics/android/b/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/crashlytics/android/b/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/crashlytics/android/b/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Beta"

    const-string v3, "Error closing Beta build properties asset"

    invoke-interface {v1, v2, v3, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :goto_1
    :try_start_4
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error reading Beta build properties"

    invoke-interface {v2, v3, v4, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v2, "Beta"

    const-string v3, "Error closing Beta build properties asset"

    invoke-interface {v0, v2, v3, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    move-object v0, v1

    :cond_2
    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p1, :cond_3

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Beta"

    const-string v3, "Error closing Beta build properties asset"

    invoke-interface {v1, v2, v3, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/b/c;->a:La/a/a/a/a/a/b;

    iget-object v1, p0, Lcom/crashlytics/android/b/c;->b:Lcom/crashlytics/android/b/h;

    invoke-virtual {v0, p1, v1}, La/a/a/a/a/a/b;->a(Landroid/content/Context;La/a/a/a/a/a/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Failed to load the Beta device token"

    invoke-interface {v0, v1, v2, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v0, "Beta"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beta device token present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private h()La/a/a/a/a/g/f;
    .locals 1

    invoke-static {}, La/a/a/a/a/g/q;->a()La/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/g/q;->b()La/a/a/a/a/g/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, La/a/a/a/a/g/t;->f:La/a/a/a/a/g/f;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a(ILandroid/app/Application;)Lcom/crashlytics/android/b/j;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 p2, 0xe

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->r()La/a/a/a/c;

    move-result-object p1

    invoke-virtual {p1}, La/a/a/a/c;->e()La/a/a/a/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->r()La/a/a/a/c;

    move-result-object p2

    invoke-virtual {p2}, La/a/a/a/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/crashlytics/android/b/b;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/b/b;-><init>(La/a/a/a/a;Ljava/util/concurrent/ExecutorService;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/crashlytics/android/b/i;

    invoke-direct {p1}, Lcom/crashlytics/android/b/i;-><init>()V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.7.19"

    return-object v0
.end method

.method a(La/a/a/a/a/g/f;Lcom/crashlytics/android/b/d;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, La/a/a/a/a/g/f;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected a_()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/b/c;->a(ILandroid/app/Application;)Lcom/crashlytics/android/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/b/c;->c:Lcom/crashlytics/android/b/j;

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 12

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta kit initializing..."

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->q()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->p()La/a/a/a/a/b/p;

    move-result-object v6

    invoke-virtual {v6}, La/a/a/a/a/b/p;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/crashlytics/android/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "A Beta device token was not found for this app"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta device token is present, checking for app updates."

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/crashlytics/android/b/c;->h()La/a/a/a/a/g/f;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/crashlytics/android/b/c;->a(Landroid/content/Context;)Lcom/crashlytics/android/b/d;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/crashlytics/android/b/c;->a(La/a/a/a/a/g/f;Lcom/crashlytics/android/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/crashlytics/android/b/c;->c:Lcom/crashlytics/android/b/j;

    new-instance v9, La/a/a/a/a/f/d;

    invoke-direct {v9, p0}, La/a/a/a/a/f/d;-><init>(La/a/a/a/i;)V

    new-instance v10, La/a/a/a/a/b/t;

    invoke-direct {v10}, La/a/a/a/a/b/t;-><init>()V

    new-instance v11, La/a/a/a/a/e/b;

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    invoke-direct {v11, v0}, La/a/a/a/a/e/b;-><init>(La/a/a/a/l;)V

    move-object v5, p0

    invoke-interface/range {v3 .. v11}, Lcom/crashlytics/android/b/j;->a(Landroid/content/Context;Lcom/crashlytics/android/b/c;La/a/a/a/a/b/p;La/a/a/a/a/g/f;Lcom/crashlytics/android/b/d;La/a/a/a/a/f/c;La/a/a/a/a/b/k;La/a/a/a/a/e/e;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "La/a/a/a/a/b/p$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->p()La/a/a/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b/p;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->q()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, La/a/a/a/a/b/p$a;->c:La/a/a/a/a/b/p$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method g()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/crashlytics/android/b/c;->q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
