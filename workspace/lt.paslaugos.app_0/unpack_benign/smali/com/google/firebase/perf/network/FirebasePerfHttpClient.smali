.class public Lcom/google/firebase/perf/network/FirebasePerfHttpClient;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/google/android/gms/internal/aje;",
            "Lcom/google/android/gms/internal/aiq;",
            ")TT;"
        }
    .end annotation

    invoke-static {p5}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p5

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    new-instance v0, Lcom/google/firebase/perf/network/f;

    invoke-direct {v0, p3, p4, p5}, Lcom/google/firebase/perf/network/f;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-static {p5}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lcom/google/android/gms/internal/aje;",
            "Lcom/google/android/gms/internal/aiq;",
            ")TT;"
        }
    .end annotation

    invoke-static {p6}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p6

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_1
    invoke-virtual {p5}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p5}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    new-instance v0, Lcom/google/firebase/perf/network/f;

    invoke-direct {v0, p3, p5, p6}, Lcom/google/firebase/perf/network/f;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-interface {p0, p1, p2, v0, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p5}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p6, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-static {p6}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lcom/google/android/gms/internal/aje;",
            "Lcom/google/android/gms/internal/aiq;",
            ")TT;"
        }
    .end annotation

    invoke-static {p4}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p4

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    new-instance v0, Lcom/google/firebase/perf/network/f;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/perf/network/f;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-interface {p0, p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-static {p4}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lcom/google/android/gms/internal/aje;",
            "Lcom/google/android/gms/internal/aiq;",
            ")TT;"
        }
    .end annotation

    invoke-static {p5}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p5

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    new-instance v0, Lcom/google/firebase/perf/network/f;

    invoke-direct {v0, p2, p4, p5}, Lcom/google/firebase/perf/network/f;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V

    invoke-interface {p0, p1, v0, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-static {p5}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Lorg/apache/http/HttpResponse;
    .locals 3

    invoke-static {p4}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p4

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/aim;->a(I)Lcom/google/android/gms/internal/aim;

    invoke-static {p0}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;

    :cond_2
    invoke-static {p0}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/aim;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    :cond_3
    invoke-virtual {p4}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-static {p4}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Lorg/apache/http/HttpResponse;
    .locals 3

    invoke-static {p5}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p5

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/aim;->a(I)Lcom/google/android/gms/internal/aim;

    invoke-static {p0}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;

    :cond_2
    invoke-static {p0}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/aim;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    :cond_3
    invoke-virtual {p5}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-static {p5}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Lorg/apache/http/HttpResponse;
    .locals 2

    invoke-static {p3}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p3

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/aim;->a(I)Lcom/google/android/gms/internal/aim;

    invoke-static {p0}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;

    :cond_1
    invoke-static {p0}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/aim;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-static {p3}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Lorg/apache/http/HttpResponse;
    .locals 2

    invoke-static {p4}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p4

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/aim;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/aim;->a(J)Lcom/google/android/gms/internal/aim;

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->a()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/aim;->c(J)Lcom/google/android/gms/internal/aim;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/aim;->a(I)Lcom/google/android/gms/internal/aim;

    invoke-static {p0}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;

    :cond_1
    invoke-static {p0}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/aim;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    :cond_2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    invoke-static {p4}, Lcom/google/firebase/perf/network/h;->a(Lcom/google/android/gms/internal/aim;)V

    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/aje;

    invoke-direct {v4}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    new-instance v5, Lcom/google/android/gms/internal/aje;

    invoke-direct {v5}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/aje;

    invoke-direct {v4}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/aje;

    invoke-direct {v4}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aiq;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method
