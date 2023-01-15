.class Lcom/crashlytics/android/a/y;
.super La/a/a/a/a/b/a;

# interfaces
.implements La/a/a/a/a/d/f;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;Ljava/lang/String;)V
    .locals 6

    sget-object v5, La/a/a/a/a/e/c;->b:La/a/a/a/a/e/c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, La/a/a/a/a/b/a;-><init>(La/a/a/a/i;Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/e/e;La/a/a/a/a/e/c;)V

    iput-object p5, p0, Lcom/crashlytics/android/a/y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/crashlytics/android/a/y;->b()La/a/a/a/a/e/d;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lcom/crashlytics/android/a/y;->a:La/a/a/a/i;

    invoke-virtual {v2}, La/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p0, Lcom/crashlytics/android/a/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/e/d;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session_analytics_file_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/vnd.crashlytics.android.events"

    invoke-virtual {v0, v6, v7, v8, v4}, La/a/a/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)La/a/a/a/a/e/d;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v3, "Answers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " analytics files to "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/crashlytics/android/a/y;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/a/a/e/d;->b()I

    move-result p1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response code for analytics file send is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, La/a/a/a/a/b/s;->a(I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
