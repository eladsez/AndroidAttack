.class final Lcom/google/android/gms/internal/aja;
.super Ljava/lang/Object;


# static fields
.field private static final a:J


# instance fields
.field private b:J

.field private c:J

.field private d:Lcom/google/android/gms/internal/aje;

.field private e:J

.field private final f:Lcom/google/android/gms/internal/ajb;

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/aja;->a:J

    return-void
.end method

.method constructor <init>(JJLcom/google/android/gms/internal/ajb;Ljava/util/Map;Lcom/google/android/gms/internal/aiz;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/google/android/gms/internal/ajb;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/aiz;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/google/android/gms/internal/aja;->f:Lcom/google/android/gms/internal/ajb;

    iput-wide v1, v0, Lcom/google/android/gms/internal/aja;->b:J

    move-wide/from16 v4, p1

    iput-wide v4, v0, Lcom/google/android/gms/internal/aja;->c:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/aja;->e:J

    new-instance v1, Lcom/google/android/gms/internal/aje;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aje;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/aja;->d:Lcom/google/android/gms/internal/aje;

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->b()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->c()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->d()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->e()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_0

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v10, v1, v11

    if-nez v10, :cond_0

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->a()I

    move-result v1

    int-to-long v1, v1

    :cond_0
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->f()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_1
    div-long v1, v4, v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/aja;->g:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/aja;->h:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/aja;->h:J

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->b()I

    move-result v4

    int-to-long v4, v4

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x3

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/google/android/gms/internal/aja;->g:J

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->b()I

    move-result v4

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->a()I

    move-result v5

    div-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "FirebasePerformance"

    const-string v2, "Foreground %s logging rate:%d, burst capacity:%d"

    new-array v4, v15, [Ljava/lang/Object;

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    iget-wide v14, v0, Lcom/google/android/gms/internal/aja;->g:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v13

    iget-wide v14, v0, Lcom/google/android/gms/internal/aja;->h:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v11

    if-nez v1, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->c()I

    move-result v1

    int-to-long v6, v1

    :cond_4
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_5
    div-long v1, v8, v6

    iput-wide v1, v0, Lcom/google/android/gms/internal/aja;->i:J

    iput-wide v8, v0, Lcom/google/android/gms/internal/aja;->j:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/aja;->j:J

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->d()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    iget-wide v1, v0, Lcom/google/android/gms/internal/aja;->i:J

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->d()I

    move-result v3

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->c()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    move/from16 v1, p8

    goto :goto_2

    :cond_7
    :goto_1
    const-string v1, "FirebasePerformance"

    const-string v2, "Background %s logging rate:%d, capacity:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/aiz;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/aja;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v13

    iget-wide v4, v0, Lcom/google/android/gms/internal/aja;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    iput-boolean v1, v0, Lcom/google/android/gms/internal/aja;->k:Z

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/aja;->g:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/aja;->i:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/aja;->c:J

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/aja;->h:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/aja;->j:J

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/aja;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/google/android/gms/internal/ajp;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance p1, Lcom/google/android/gms/internal/aje;

    invoke-direct {p1}, Lcom/google/android/gms/internal/aje;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aja;->d:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/aja;->c:J

    mul-long v0, v0, v2

    sget-wide v2, Lcom/google/android/gms/internal/aja;->a:J

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/aja;->e:J

    const/4 v6, 0x0

    add-long/2addr v4, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/aja;->b:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/aja;->e:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/aja;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/aja;->e:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/aja;->e:J

    iput-object p1, p0, Lcom/google/android/gms/internal/aja;->d:Lcom/google/android/gms/internal/aje;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/aja;->k:Z

    if-eqz p1, :cond_1

    const-string p1, "FirebasePerformance"

    const-string v0, "Exceeded log rate limit, dropping the log."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
