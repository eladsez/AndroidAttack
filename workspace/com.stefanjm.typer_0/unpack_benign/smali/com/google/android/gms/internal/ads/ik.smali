.class public Lcom/google/android/gms/internal/ads/ik;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/arh;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/qs;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/hj;

.field private final d:Lcom/google/android/gms/internal/ads/jl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/eg;->a:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/ik;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/hj;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/jl;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jl;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ik;-><init>(Lcom/google/android/gms/internal/ads/hj;Lcom/google/android/gms/internal/ads/jl;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/hj;Lcom/google/android/gms/internal/ads/jl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik;->c:Lcom/google/android/gms/internal/ads/hj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik;->b:Lcom/google/android/gms/internal/ads/qs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ik;->d:Lcom/google/android/gms/internal/ads/jl;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/qs;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/jl;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jl;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ik;-><init>(Lcom/google/android/gms/internal/ads/qs;Lcom/google/android/gms/internal/ads/jl;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/qs;Lcom/google/android/gms/internal/ads/jl;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik;->b:Lcom/google/android/gms/internal/ads/qs;

    new-instance v0, Lcom/google/android/gms/internal/ads/gi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/gi;-><init>(Lcom/google/android/gms/internal/ads/qs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ik;->c:Lcom/google/android/gms/internal/ads/hj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ik;->d:Lcom/google/android/gms/internal/ads/jl;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/df;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/df;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/awk;->j()Lcom/google/android/gms/internal/ads/ac;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/awk;->i()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/ac;->a(Lcom/google/android/gms/internal/ads/df;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/df; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "%s-retry [timeout=%s]"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    const-string v0, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    throw p2
.end method

.method private final a(Ljava/io/InputStream;I)[B
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/tt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ik;->d:Lcom/google/android/gms/internal/ads/jl;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/tt;-><init>(Lcom/google/android/gms/internal/ads/jl;I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/bd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/bd;-><init>()V

    throw v2

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ik;->d:Lcom/google/android/gms/internal/ads/jl;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jl;->a(I)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v2, p2, v1}, Lcom/google/android/gms/internal/ads/tt;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tt;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error occurred when closing InputStream"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/eg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik;->d:Lcom/google/android/gms/internal/ads/jl;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/jl;->a([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tt;->close()V

    return-object v1

    :catchall_1
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_2
    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const-string p1, "Error occurred when closing InputStream"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/eg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik;->d:Lcom/google/android/gms/internal/ads/jl;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/jl;->a([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tt;->close()V

    throw v2
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ads/awk;)Lcom/google/android/gms/internal/ads/aui;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/aui;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/awk;->f()Lcom/google/android/gms/internal/ads/agz;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    goto :goto_1

    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v12, v10, Lcom/google/android/gms/internal/ads/agz;->b:Ljava/lang/String;

    if-eqz v12, :cond_1

    const-string v12, "If-None-Match"

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/agz;->b:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v12, v10, Lcom/google/android/gms/internal/ads/agz;->d:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_2

    const-string v12, "If-Modified-Since"

    iget-wide v13, v10, Lcom/google/android/gms/internal/ads/agz;->d:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/oq;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v10, v11

    :goto_1
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/ik;->c:Lcom/google/android/gms/internal/ads/hj;

    invoke-virtual {v11, v2, v10}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/awk;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/pr;

    move-result-object v10
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/pr;->a()I

    move-result v12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/pr;->b()Ljava/util/List;

    move-result-object v11
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const/16 v5, 0x130

    if-ne v12, v5, :cond_9

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/awk;->f()Lcom/google/android/gms/internal/ads/agz;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/ads/aui;

    const/16 v14, 0x130

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v17, v12, v3

    move-object v13, v5

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/aui;-><init>(I[BZJLjava/util/List;)V

    return-object v5

    :cond_3
    new-instance v12, Ljava/util/TreeSet;

    sget-object v13, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/aqg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/aqg;->a()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/agz;->h:Ljava/util/List;

    if-eqz v14, :cond_6

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/agz;->h:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/agz;->h:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/aqg;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/aqg;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/agz;->g:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/agz;->g:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    new-instance v15, Lcom/google/android/gms/internal/ads/aqg;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v6, v14}, Lcom/google/android/gms/internal/ads/aqg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v6, Lcom/google/android/gms/internal/ads/aui;

    const/16 v16, 0x130

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/agz;->a:[B

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v19, v14, v3

    move-object v15, v6

    move-object/from16 v17, v5

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/aui;-><init>(I[BZJLjava/util/List;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object/from16 v17, v11

    :goto_5
    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_9
    :try_start_3
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/pr;->d()Ljava/io/InputStream;

    move-result-object v5
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v5, :cond_a

    :try_start_4
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/pr;->c()I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/internal/ads/ik;->a(Ljava/io/InputStream;I)[B

    move-result-object v5
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :cond_a
    :try_start_5
    new-array v5, v9, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v7, v13, v3

    sget-boolean v6, Lcom/google/android/gms/internal/ads/ik;->a:Z

    if-nez v6, :cond_b

    const-wide/16 v13, 0xbb8

    cmp-long v6, v7, v13

    if-lez v6, :cond_d

    :cond_b
    const-string v6, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v2, v13, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v13, v8
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v5, :cond_c

    :try_start_7
    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v13, v5

    move-object/from16 v17, v11

    goto :goto_b

    :cond_c
    :try_start_8
    const-string v7, "null"

    :goto_7
    const/4 v8, 0x2

    aput-object v7, v13, v8

    const/4 v7, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v13, v7

    const/4 v7, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/awk;->j()Lcom/google/android/gms/internal/ads/ac;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/ac;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v13, v7

    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/eg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    const/16 v6, 0xc8

    if-lt v12, v6, :cond_f

    const/16 v6, 0x12b

    if-le v12, v6, :cond_e

    goto :goto_8

    :cond_e
    new-instance v6, Lcom/google/android/gms/internal/ads/aui;

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    sub-long v15, v7, v3

    move-object v7, v11

    move-object v11, v6

    move-object v13, v5

    move-object/from16 v17, v7

    :try_start_9
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/aui;-><init>(I[BZJLjava/util/List;)V

    return-object v6

    :cond_f
    :goto_8
    move-object v7, v11

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v7, v11

    :goto_9
    move-object v13, v5

    move-object/from16 v17, v7

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v7, v11

    move-object v5, v0

    move-object/from16 v17, v7

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    :goto_a
    const/4 v13, 0x0

    :goto_b
    move-object v5, v0

    :goto_c
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/pr;->a()I

    move-result v5

    const-string v6, "Unexpected response code %d for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/awk;->e()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/eg;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_14

    new-instance v6, Lcom/google/android/gms/internal/ads/aui;

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v15, v7, v3

    move-object v11, v6

    move v12, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/aui;-><init>(I[BZJLjava/util/List;)V

    const/16 v7, 0x191

    if-eq v5, v7, :cond_13

    const/16 v7, 0x193

    if-ne v5, v7, :cond_10

    goto :goto_d

    :cond_10
    const/16 v2, 0x190

    if-lt v5, v2, :cond_11

    const/16 v2, 0x1f3

    if-gt v5, v2, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/ads/ald;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/ads/ald;-><init>(Lcom/google/android/gms/internal/ads/aui;)V

    throw v2

    :cond_11
    const/16 v2, 0x1f4

    if-lt v5, v2, :cond_12

    const/16 v2, 0x257

    if-gt v5, v2, :cond_12

    new-instance v2, Lcom/google/android/gms/internal/ads/bd;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/ads/bd;-><init>(Lcom/google/android/gms/internal/ads/aui;)V

    throw v2

    :cond_12
    new-instance v2, Lcom/google/android/gms/internal/ads/bd;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/ads/bd;-><init>(Lcom/google/android/gms/internal/ads/aui;)V

    throw v2

    :cond_13
    :goto_d
    const-string v5, "auth"

    new-instance v7, Lcom/google/android/gms/internal/ads/a;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/a;-><init>(Lcom/google/android/gms/internal/ads/aui;)V

    invoke-static {v5, v2, v7}, Lcom/google/android/gms/internal/ads/ik;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/df;)V

    goto/16 :goto_0

    :cond_14
    const-string v5, "network"

    new-instance v6, Lcom/google/android/gms/internal/ads/ath;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/ath;-><init>()V

    goto :goto_f

    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/avj;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/avj;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception v0

    move-object v3, v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Bad URL "

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/awk;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_16
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_8
    const-string v5, "socket"

    new-instance v6, Lcom/google/android/gms/internal/ads/ce;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/ce;-><init>()V

    :goto_f
    invoke-static {v5, v2, v6}, Lcom/google/android/gms/internal/ads/ik;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/df;)V

    goto/16 :goto_0
.end method
