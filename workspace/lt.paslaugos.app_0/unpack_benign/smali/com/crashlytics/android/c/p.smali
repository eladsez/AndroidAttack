.class Lcom/crashlytics/android/c/p;
.super La/a/a/a/a/b/a;

# interfaces
.implements Lcom/crashlytics/android/c/o;


# direct methods
.method public constructor <init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;)V
    .locals 6

    sget-object v5, La/a/a/a/a/e/c;->b:La/a/a/a/a/e/c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, La/a/a/a/a/b/a;-><init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;La/a/a/a/a/e/c;)V

    return-void
.end method

.method private a(La/a/a/a/a/e/d;Lcom/crashlytics/android/c/ae;)La/a/a/a/a/e/d;
    .locals 10

    const-string v0, "report[identifier]"

    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->e(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->d()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding single file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "report[file]"

    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/octet-stream"

    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->c()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, v0, v1, v2, p2}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)La/a/a/a/a/e/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->d()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to report "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "report[file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/octet-stream"

    invoke-virtual {p1, v6, v7, v8, v5}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)La/a/a/a/a/e/d;

    add-int/2addr v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private a(La/a/a/a/a/e/d;Lcom/crashlytics/android/c/n;)La/a/a/a/a/e/d;
    .locals 2

    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lcom/crashlytics/android/c/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v1, p0, Lcom/crashlytics/android/c/p;->a:La/a/a/a/i;

    invoke-virtual {v1}, La/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object p1

    iget-object p2, p2, Lcom/crashlytics/android/c/n;->b:Lcom/crashlytics/android/c/ae;

    invoke-interface {p2}, Lcom/crashlytics/android/c/ae;->e()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p1, v0}, La/a/a/a/a/e/d;->a(Ljava/util/Map$Entry;)La/a/a/a/a/e/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/c/n;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/crashlytics/android/c/p;->b()La/a/a/a/a/e/d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/c/p;->a(La/a/a/a/a/e/d;Lcom/crashlytics/android/c/n;)La/a/a/a/a/e/d;

    move-result-object v0

    iget-object p1, p1, Lcom/crashlytics/android/c/n;->b:Lcom/crashlytics/android/c/ae;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/c/p;->a(La/a/a/a/a/e/d;Lcom/crashlytics/android/c/ae;)La/a/a/a/a/e/d;

    move-result-object p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending report to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/a/a/e/d;->b()I

    move-result v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create report request ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {p1, v4}, La/a/a/a/a/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object p1

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, La/a/a/a/a/b/s;->a(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
