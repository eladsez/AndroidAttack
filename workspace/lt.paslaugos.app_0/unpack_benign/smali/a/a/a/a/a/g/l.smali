.class La/a/a/a/a/g/l;
.super La/a/a/a/a/b/a;

# interfaces
.implements La/a/a/a/a/g/x;


# direct methods
.method public constructor <init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;)V
    .locals 6

    sget-object v5, La/a/a/a/a/e/c;->a:La/a/a/a/a/e/c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, La/a/a/a/a/g/l;-><init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;La/a/a/a/a/e/c;)V

    return-void
.end method

.method constructor <init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;La/a/a/a/a/e/c;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, La/a/a/a/a/b/a;-><init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;La/a/a/a/a/e/c;)V

    return-void
.end method

.method private a(La/a/a/a/a/e/d;La/a/a/a/a/g/w;)La/a/a/a/a/e/d;
    .locals 2

    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, La/a/a/a/a/g/w;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-direct {p0, p1, v0, v1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v1, p0, La/a/a/a/a/g/l;->a:La/a/a/a/i;

    invoke-virtual {v1}, La/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-direct {p0, p1, v0, v1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-DEVICE-MODEL"

    iget-object v1, p2, La/a/a/a/a/g/w;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-OS-BUILD-VERSION"

    iget-object v1, p2, La/a/a/a/a/g/w;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    iget-object v1, p2, La/a/a/a/a/g/w;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    iget-object v1, p2, La/a/a/a/a/g/w;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, La/a/a/a/a/g/w;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "X-CRASHLYTICS-ANDROID-ID"

    iget-object p2, p2, La/a/a/a/a/g/w;->g:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1, v0, p2}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "X-CRASHLYTICS-ADVERTISING-TOKEN"

    iget-object p2, p2, La/a/a/a/a/g/w;->e:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse settings JSON from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/a/g/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(La/a/a/a/a/e/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    :cond_0
    return-void
.end method

.method private b(La/a/a/a/a/g/w;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/a/g/w;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "build_version"

    iget-object v2, p1, La/a/a/a/a/g/w;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "display_version"

    iget-object v2, p1, La/a/a/a/a/g/w;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget v2, p1, La/a/a/a/a/g/w;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, La/a/a/a/a/g/w;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "icon_hash"

    iget-object v2, p1, La/a/a/a/a/g/w;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, La/a/a/a/a/g/w;->h:Ljava/lang/String;

    invoke-static {p1}, La/a/a/a/a/b/i;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "instance"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method a(La/a/a/a/a/e/d;)Lorg/json/JSONObject;
    .locals 5

    invoke-virtual {p1}, La/a/a/a/a/e/d;->b()I

    move-result v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings result was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, La/a/a/a/a/g/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/a/a/a/a/e/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, La/a/a/a/a/g/l;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v0, "Fabric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve settings from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/a/g/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(La/a/a/a/a/g/w;)Lorg/json/JSONObject;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, La/a/a/a/a/g/l;->b(La/a/a/a/a/g/w;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, La/a/a/a/a/g/l;->a(Ljava/util/Map;)La/a/a/a/a/e/d;

    move-result-object v2
    :try_end_0
    .catch La/a/a/a/a/e/d$c; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2, p1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;La/a/a/a/a/g/w;)La/a/a/a/a/e/d;

    move-result-object p1
    :try_end_1
    .catch La/a/a/a/a/e/d$c; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting settings from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/a/g/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings query params were: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, La/a/a/a/a/g/l;->a(La/a/a/a/a/e/d;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch La/a/a/a/a/e/d$c; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings request ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {p1, v4}, La/a/a/a/a/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v2

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_2

    :catch_2
    move-exception v1

    move-object p1, v0

    :goto_0
    :try_start_3
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Settings request failed."

    invoke-interface {v2, v3, v4, v1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings request ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {p1, v4}, La/a/a/a/a/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz p1, :cond_2

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings request ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {p1, v3}, La/a/a/a/a/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Fabric"

    invoke-interface {v1, v2, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v0
.end method

.method a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xca

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
