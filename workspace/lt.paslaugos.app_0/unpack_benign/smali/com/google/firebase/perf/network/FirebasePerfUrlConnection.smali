.class public Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ajh;Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/aje;)Ljava/io/InputStream;
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ajh;->a()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/firebase/perf/network/d;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-virtual {v3}, Lcom/google/firebase/perf/network/d;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/firebase/perf/network/c;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-virtual {v3}, Lcom/google/firebase/perf/network/c;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ajh;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw v2
.end method

.method private static a(Lcom/google/android/gms/internal/ajh;[Ljava/lang/Class;Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/aje;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ajh;->a()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/firebase/perf/network/d;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p3, p2}, Lcom/google/firebase/perf/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-virtual {v3, p1}, Lcom/google/firebase/perf/network/d;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/firebase/perf/network/c;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p3, p2}, Lcom/google/firebase/perf/network/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-virtual {v3, p1}, Lcom/google/firebase/perf/network/c;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ajh;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p1
.end method

.method private static b(Lcom/google/android/gms/internal/ajh;Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/aje;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ajh;->a()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/firebase/perf/network/d;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-virtual {v3}, Lcom/google/firebase/perf/network/d;->getContent()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/firebase/perf/network/c;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-virtual {v3}, Lcom/google/firebase/perf/network/c;->getContent()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ajh;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw v2
.end method

.method public static getContent(Ljava/net/URL;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ajh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ajh;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/aje;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->b(Lcom/google/android/gms/internal/ajh;Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/aje;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getContent(Ljava/net/URL;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ajh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ajh;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/aje;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {v0, p1, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->a(Lcom/google/android/gms/internal/ajh;[Ljava/lang/Class;Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/aje;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static instrument(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/perf/network/d;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lcom/google/android/gms/internal/aje;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/perf/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/firebase/perf/network/c;

    check-cast p0, Ljava/net/HttpURLConnection;

    new-instance v1, Lcom/google/android/gms/internal/aje;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/perf/network/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ajh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ajh;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/aje;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->a(Lcom/google/android/gms/internal/ajh;Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/aje;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
