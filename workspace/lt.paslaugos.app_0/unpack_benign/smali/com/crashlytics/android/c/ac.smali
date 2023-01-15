.class Lcom/crashlytics/android/c/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/s;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private c:La/a/a/a/a/b/r;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/c/ac;->a:Ljava/io/File;

    iput p2, p0, Lcom/crashlytics/android/c/ac;->b:I

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->c:La/a/a/a/a/b/r;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, La/a/a/a/a/b/r;

    iget-object v1, p0, Lcom/crashlytics/android/c/ac;->a:Ljava/io/File;

    invoke-direct {v0, v1}, La/a/a/a/a/b/r;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/crashlytics/android/c/ac;->c:La/a/a/a/a/b/r;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open log file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/crashlytics/android/c/ac;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/c/b;
    .locals 7

    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/crashlytics/android/c/ac;->d()V

    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->c:La/a/a/a/a/b/r;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Lcom/crashlytics/android/c/ac;->c:La/a/a/a/a/b/r;

    invoke-virtual {v2}, La/a/a/a/a/b/r;->a()I

    move-result v2

    new-array v2, v2, [B

    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/c/ac;->c:La/a/a/a/a/b/r;

    new-instance v4, Lcom/crashlytics/android/c/ac$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/crashlytics/android/c/ac$1;-><init>(Lcom/crashlytics/android/c/ac;[B[I)V

    invoke-virtual {v3, v4}, La/a/a/a/a/b/r;->a(La/a/a/a/a/b/r$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v4, v5, v6, v3}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    aget v0, v0, v1

    invoke-static {v2, v1, v0}, Lcom/crashlytics/android/c/b;->a([BII)Lcom/crashlytics/android/c/b;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->c:La/a/a/a/a/b/r;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/c/ac;->c:La/a/a/a/a/b/r;

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/ac;->b()V

    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
