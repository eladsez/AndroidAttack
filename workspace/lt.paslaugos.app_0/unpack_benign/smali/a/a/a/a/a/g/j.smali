.class La/a/a/a/a/g/j;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/g/s;


# instance fields
.field private final a:La/a/a/a/a/g/w;

.field private final b:La/a/a/a/a/g/v;

.field private final c:La/a/a/a/a/b/k;

.field private final d:La/a/a/a/a/g/g;

.field private final e:La/a/a/a/a/g/x;

.field private final f:La/a/a/a/i;

.field private final g:La/a/a/a/a/f/c;


# direct methods
.method public constructor <init>(La/a/a/a/i;La/a/a/a/a/g/w;La/a/a/a/a/b/k;La/a/a/a/a/g/v;La/a/a/a/a/g/g;La/a/a/a/a/g/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/g/j;->f:La/a/a/a/i;

    iput-object p2, p0, La/a/a/a/a/g/j;->a:La/a/a/a/a/g/w;

    iput-object p3, p0, La/a/a/a/a/g/j;->c:La/a/a/a/a/b/k;

    iput-object p4, p0, La/a/a/a/a/g/j;->b:La/a/a/a/a/g/v;

    iput-object p5, p0, La/a/a/a/a/g/j;->d:La/a/a/a/a/g/g;

    iput-object p6, p0, La/a/a/a/a/g/j;->e:La/a/a/a/a/g/x;

    new-instance p1, La/a/a/a/a/f/d;

    iget-object p2, p0, La/a/a/a/a/g/j;->f:La/a/a/a/i;

    invoke-direct {p1, p2}, La/a/a/a/a/f/d;-><init>(La/a/a/a/i;)V

    iput-object p1, p0, La/a/a/a/a/g/j;->g:La/a/a/a/a/f/c;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(La/a/a/a/a/g/r;)La/a/a/a/a/g/t;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, La/a/a/a/a/g/r;->b:La/a/a/a/a/g/r;

    invoke-virtual {v1, p1}, La/a/a/a/a/g/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, La/a/a/a/a/g/j;->d:La/a/a/a/a/g/g;

    invoke-interface {v1}, La/a/a/a/a/g/g;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, La/a/a/a/a/g/j;->b:La/a/a/a/a/g/v;

    iget-object v3, p0, La/a/a/a/a/g/j;->c:La/a/a/a/a/b/k;

    invoke-interface {v2, v3, v1}, La/a/a/a/a/g/v;->a(La/a/a/a/a/b/k;Lorg/json/JSONObject;)La/a/a/a/a/g/t;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v1, v3}, La/a/a/a/a/g/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/a/g/j;->c:La/a/a/a/a/b/k;

    invoke-interface {v1}, La/a/a/a/a/b/k;->a()J

    move-result-wide v3

    sget-object v1, La/a/a/a/a/g/r;->c:La/a/a/a/a/g/r;

    invoke-virtual {v1, p1}, La/a/a/a/a/g/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2, v3, v4}, La/a/a/a/a/g/t;->a(J)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v1, "Fabric"

    const-string v2, "Cached settings have expired."

    :goto_0
    invoke-interface {p1, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v0, "Fabric"

    const-string v1, "Returning cached settings."

    invoke-interface {p1, v0, v1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v1, "Fabric"

    const-string v2, "Failed to transform cached settings data."

    invoke-interface {p1, v1, v2, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v1, "Fabric"

    const-string v2, "No cached settings data found."
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to get cached settings"

    invoke-interface {v1, v2, v3, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-object v0
.end method


# virtual methods
.method public a()La/a/a/a/a/g/t;
    .locals 1

    sget-object v0, La/a/a/a/a/g/r;->a:La/a/a/a/a/g/r;

    invoke-virtual {p0, v0}, La/a/a/a/a/g/j;->a(La/a/a/a/a/g/r;)La/a/a/a/a/g/t;

    move-result-object v0

    return-object v0
.end method

.method public a(La/a/a/a/a/g/r;)La/a/a/a/a/g/t;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, La/a/a/a/c;->i()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, La/a/a/a/a/g/j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, La/a/a/a/a/g/j;->b(La/a/a/a/a/g/r;)La/a/a/a/a/g/t;

    move-result-object p1

    move-object v0, p1

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, La/a/a/a/a/g/j;->e:La/a/a/a/a/g/x;

    iget-object v1, p0, La/a/a/a/a/g/j;->a:La/a/a/a/a/g/w;

    invoke-interface {p1, v1}, La/a/a/a/a/g/x;->a(La/a/a/a/a/g/w;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, La/a/a/a/a/g/j;->b:La/a/a/a/a/g/v;

    iget-object v2, p0, La/a/a/a/a/g/j;->c:La/a/a/a/a/b/k;

    invoke-interface {v1, v2, p1}, La/a/a/a/a/g/v;->a(La/a/a/a/a/b/k;Lorg/json/JSONObject;)La/a/a/a/a/g/t;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/g/j;->d:La/a/a/a/a/g/g;

    iget-wide v2, v1, La/a/a/a/a/g/t;->g:J

    invoke-interface {v0, v2, v3, p1}, La/a/a/a/a/g/g;->a(JLorg/json/JSONObject;)V

    const-string v0, "Loaded settings: "

    invoke-direct {p0, p1, v0}, La/a/a/a/a/g/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/a/g/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/a/a/a/a/g/j;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    :try_start_2
    sget-object p1, La/a/a/a/a/g/r;->c:La/a/a/a/a/g/r;

    invoke-direct {p0, p1}, La/a/a/a/a/g/j;->b(La/a/a/a/a/g/r;)La/a/a/a/a/g/t;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v1, v2, v3, p1}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method a(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, La/a/a/a/a/g/j;->g:La/a/a/a/a/f/c;

    invoke-interface {v0}, La/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, La/a/a/a/a/g/j;->g:La/a/a/a/a/f/c;

    invoke-interface {p1, v0}, La/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result p1

    return p1
.end method

.method b()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, La/a/a/a/a/g/j;->f:La/a/a/a/i;

    invoke-virtual {v1}, La/a/a/a/i;->q()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La/a/a/a/a/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, La/a/a/a/a/b/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La/a/a/a/a/g/j;->g:La/a/a/a/a/f/c;

    invoke-interface {v0}, La/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .locals 2

    invoke-virtual {p0}, La/a/a/a/a/g/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/a/g/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
