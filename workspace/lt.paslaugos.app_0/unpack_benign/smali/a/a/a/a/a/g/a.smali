.class abstract La/a/a/a/a/g/a;
.super La/a/a/a/a/b/a;


# direct methods
.method public constructor <init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;La/a/a/a/a/e/c;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, La/a/a/a/a/b/a;-><init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;La/a/a/a/a/e/c;)V

    return-void
.end method

.method private a(La/a/a/a/a/e/d;La/a/a/a/a/g/d;)La/a/a/a/a/e/d;
    .locals 1

    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object p2, p2, La/a/a/a/a/g/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string p2, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v0, "android"

    invoke-virtual {p1, p2, v0}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string p2, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v0, p0, La/a/a/a/a/g/a;->a:La/a/a/a/i;

    invoke-virtual {v0}, La/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    return-object p1
.end method

.method private b(La/a/a/a/a/e/d;La/a/a/a/a/g/d;)La/a/a/a/a/e/d;
    .locals 7

    const-string v0, "app[identifier]"

    iget-object v1, p2, La/a/a/a/a/g/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string v0, "app[name]"

    iget-object v1, p2, La/a/a/a/a/g/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string v0, "app[display_version]"

    iget-object v1, p2, La/a/a/a/a/g/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string v0, "app[build_version]"

    iget-object v1, p2, La/a/a/a/a/g/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string v0, "app[source]"

    iget v1, p2, La/a/a/a/a/g/d;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/Number;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string v0, "app[minimum_sdk_version]"

    iget-object v1, p2, La/a/a/a/a/g/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string v0, "app[built_sdk_version]"

    iget-object v1, p2, La/a/a/a/a/g/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    iget-object v0, p2, La/a/a/a/a/g/d;->e:Ljava/lang/String;

    invoke-static {v0}, La/a/a/a/a/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app[instance_identifier]"

    iget-object v1, p2, La/a/a/a/a/g/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    :cond_0
    iget-object v0, p2, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/g/a;->a:La/a/a/a/i;

    invoke-virtual {v1}, La/a/a/a/i;->q()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p2, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    iget v2, v2, La/a/a/a/a/g/n;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "app[icon][hash]"

    iget-object v2, p2, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    iget-object v2, v2, La/a/a/a/a/g/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object v0

    const-string v2, "app[icon][data]"

    const-string v3, "icon.png"

    const-string v4, "application/octet-stream"

    invoke-virtual {v0, v2, v3, v4, v1}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)La/a/a/a/a/e/d;

    move-result-object v0

    const-string v2, "app[icon][width]"

    iget-object v3, p2, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    iget v3, v3, La/a/a/a/a/g/n;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/Number;)La/a/a/a/a/e/d;

    move-result-object v0

    const-string v2, "app[icon][height]"

    iget-object v3, p2, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    iget v3, v3, La/a/a/a/a/g/n;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/Number;)La/a/a/a/a/e/d;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    :try_start_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find app icon with resource ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    iget v5, v5, La/a/a/a/a/g/n;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_2
    const-string p2, "Failed to close app icon InputStream."

    invoke-static {v1, p2}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_3
    iget-object v0, p2, La/a/a/a/a/g/d;->k:Ljava/util/Collection;

    if-eqz v0, :cond_2

    iget-object p2, p2, La/a/a/a/a/g/d;->k:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/k;

    invoke-virtual {p0, v0}, La/a/a/a/a/g/a;->a(La/a/a/a/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, La/a/a/a/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    invoke-virtual {p0, v0}, La/a/a/a/a/g/a;->b(La/a/a/a/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, La/a/a/a/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    goto :goto_4

    :cond_2
    return-object p1
.end method


# virtual methods
.method a(La/a/a/a/k;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "app[build][libraries][%s][version]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, La/a/a/a/k;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(La/a/a/a/a/g/d;)Z
    .locals 5

    invoke-virtual {p0}, La/a/a/a/a/g/a;->b()La/a/a/a/a/e/d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, La/a/a/a/a/g/a;->a(La/a/a/a/a/e/d;La/a/a/a/a/g/d;)La/a/a/a/a/e/d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, La/a/a/a/a/g/a;->b(La/a/a/a/a/e/d;La/a/a/a/a/g/d;)La/a/a/a/a/e/d;

    move-result-object v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending app info to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/a/g/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    if-eqz v1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon hash is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    iget-object v4, v4, La/a/a/a/a/g/n;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    iget v4, v4, La/a/a/a/a/g/n;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, La/a/a/a/a/g/d;->j:La/a/a/a/a/g/n;

    iget p1, p1, La/a/a/a/a/g/n;->d:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, La/a/a/a/a/e/d;->b()I

    move-result p1

    const-string v1, "POST"

    invoke-virtual {v0}, La/a/a/a/a/e/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Create"

    goto :goto_0

    :cond_1
    const-string v1, "Update"

    :goto_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app request ID: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "X-REQUEST-ID"

    invoke-virtual {v0, v1}, La/a/a/a/a/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, La/a/a/a/a/b/s;->a(I)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method b(La/a/a/a/k;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "app[build][libraries][%s][type]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, La/a/a/a/k;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
