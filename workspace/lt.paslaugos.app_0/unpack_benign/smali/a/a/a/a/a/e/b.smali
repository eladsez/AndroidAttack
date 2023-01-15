.class public La/a/a/a/a/e/b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/e/e;


# instance fields
.field private final a:La/a/a/a/l;

.field private b:La/a/a/a/a/e/g;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, La/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/b;-><init>()V

    invoke-direct {p0, v0}, La/a/a/a/a/e/b;-><init>(La/a/a/a/l;)V

    return-void
.end method

.method public constructor <init>(La/a/a/a/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/e/b;->a:La/a/a/a/l;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, La/a/a/a/a/e/b;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/e/b;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/e/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, La/a/a/a/a/e/b;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, La/a/a/a/a/e/b;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/e/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    :cond_0
    iget-object v0, p0, La/a/a/a/a/e/b;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, La/a/a/a/a/e/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/e/b;->b:La/a/a/a/a/e/g;

    invoke-static {v0}, La/a/a/a/a/e/f;->a(La/a/a/a/a/e/g;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/e/b;->a:La/a/a/a/l;

    const-string v2, "Fabric"

    const-string v3, "Custom SSL pinning enabled"

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, La/a/a/a/a/e/b;->a:La/a/a/a/l;

    const-string v2, "Fabric"

    const-string v3, "Exception while validating pinned certs"

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(La/a/a/a/a/e/c;Ljava/lang/String;Ljava/util/Map;)La/a/a/a/a/e/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/a/e/c;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "La/a/a/a/a/e/d;"
        }
    .end annotation

    sget-object v0, La/a/a/a/a/e/b$1;->a:[I

    invoke-virtual {p1}, La/a/a/a/a/e/c;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported HTTP method!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p2}, La/a/a/a/a/e/d;->e(Ljava/lang/CharSequence;)La/a/a/a/a/e/d;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, La/a/a/a/a/e/d;->d(Ljava/lang/CharSequence;)La/a/a/a/a/e/d;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-static {p2, p3, v0}, La/a/a/a/a/e/d;->b(Ljava/lang/CharSequence;Ljava/util/Map;Z)La/a/a/a/a/e/d;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-static {p2, p3, v0}, La/a/a/a/a/e/d;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)La/a/a/a/a/e/d;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p2}, La/a/a/a/a/e/b;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, La/a/a/a/a/e/b;->b:La/a/a/a/a/e/g;

    if-eqz p2, :cond_0

    invoke-direct {p0}, La/a/a/a/a/e/b;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, La/a/a/a/a/e/d;->a()Ljava/net/HttpURLConnection;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p3, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(La/a/a/a/a/e/g;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/e/b;->b:La/a/a/a/a/e/g;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, La/a/a/a/a/e/b;->b:La/a/a/a/a/e/g;

    invoke-direct {p0}, La/a/a/a/a/e/b;->a()V

    :cond_0
    return-void
.end method
