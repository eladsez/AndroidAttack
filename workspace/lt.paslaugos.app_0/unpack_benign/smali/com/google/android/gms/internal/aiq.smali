.class public Lcom/google/android/gms/internal/aiq;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/aiq;


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Lcom/google/firebase/a;

.field private d:Lcom/google/firebase/perf/a;

.field private e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/a/a;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/internal/ajk;

.field private i:Lcom/google/android/gms/internal/aiy;

.field private j:Lcom/google/android/gms/internal/ain;

.field private k:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aiq;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p1, p0, Lcom/google/android/gms/internal/aiq;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/google/android/gms/internal/air;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/air;-><init>(Lcom/google/android/gms/internal/aiq;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/aiq;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/aiq;->a:Lcom/google/android/gms/internal/aiq;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/aiq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/aiq;->a:Lcom/google/android/gms/internal/aiq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/firebase/a;->d()Lcom/google/firebase/a;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v2, Lcom/google/android/gms/internal/aiq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/aiq;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sput-object v2, Lcom/google/android/gms/internal/aiq;->a:Lcom/google/android/gms/internal/aiq;

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/aiq;->a:Lcom/google/android/gms/internal/aiq;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aiq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aiq;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajn;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/aiq;->b(Lcom/google/android/gms/internal/ajn;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajq;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/aiq;->b(Lcom/google/android/gms/internal/ajq;I)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ajp;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->f:Lcom/google/android/gms/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string p1, "FirebasePerformance"

    const-string v0, "App Instance ID is null, dropping the log."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->d:Lcom/google/firebase/perf/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    if-eqz v3, :cond_4

    new-instance v3, Lcom/google/android/gms/internal/aiw;

    iget-object v4, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/aiw;-><init>(Lcom/google/android/gms/internal/ajq;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    if-eqz v3, :cond_5

    new-instance v3, Lcom/google/android/gms/internal/aiv;

    iget-object v4, p1, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/aiv;-><init>(Lcom/google/android/gms/internal/ajn;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    if-eqz v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/aip;

    iget-object v4, p1, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/aip;-><init>(Lcom/google/android/gms/internal/ajk;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "FirebasePerformance"

    const-string v1, "No validators found for PerfMetric."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_8
    if-ge v4, v3, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/android/gms/internal/aix;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/aix;->a()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_9
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_a

    const-string p1, "FirebasePerformance"

    const-string v0, "Unable to process an HTTP request/response due to missing or invalid values. See earlier log statements for additional information on the specific invalid/missing values."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->i:Lcom/google/android/gms/internal/aiy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aiy;->a(Lcom/google/android/gms/internal/ajp;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/aiq;->j:Lcom/google/android/gms/internal/ain;

    sget-object v0, Lcom/google/android/gms/internal/ajc;->b:Lcom/google/android/gms/internal/ajc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ajc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ain;->a(Ljava/lang/String;J)V

    return-void

    :cond_b
    iget-object p1, p1, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/aiq;->j:Lcom/google/android/gms/internal/ain;

    sget-object v0, Lcom/google/android/gms/internal/ajc;->a:Lcom/google/android/gms/internal/ajc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ajc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ain;->a(Ljava/lang/String;J)V

    :cond_c
    return-void

    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/aob;)[B

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->f:Lcom/google/android/gms/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/a/a;->a([B)Lcom/google/android/gms/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/a/a$a;->a()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    return-void
.end method

.method private final b()V
    .locals 8

    invoke-static {}, Lcom/google/firebase/a;->d()Lcom/google/firebase/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->c:Lcom/google/firebase/a;

    invoke-static {}, Lcom/google/firebase/perf/a;->a()Lcom/google/firebase/perf/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->d:Lcom/google/firebase/perf/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->c:Lcom/google/firebase/a;

    invoke-virtual {v0}, Lcom/google/firebase/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->c:Lcom/google/firebase/a;

    invoke-virtual {v0}, Lcom/google/firebase/a;->c()Lcom/google/firebase/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->g:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ajk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iget-object v1, p0, Lcom/google/android/gms/internal/aiq;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajk;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ajk;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    new-instance v1, Lcom/google/android/gms/internal/ajj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ajj;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    iget-object v1, p0, Lcom/google/android/gms/internal/aiq;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ajj;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    const-string v1, "1.0.0.184862077"

    iput-object v1, v0, Lcom/google/android/gms/internal/ajj;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ajk;->c:Lcom/google/android/gms/internal/ajj;

    iget-object v1, p0, Lcom/google/android/gms/internal/aiq;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/aiq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ajj;->c:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->e:Landroid/content/Context;

    const-string v1, "FIREPERF"

    invoke-static {v0, v1}, Lcom/google/android/gms/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->f:Lcom/google/android/gms/a/a;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FirebasePerformance"

    const-string v1, "Caught SecurityException while init ClearcutLogger."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->f:Lcom/google/android/gms/a/a;

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/aiy;

    iget-object v2, p0, Lcom/google/android/gms/internal/aiq;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/aiq;->g:Ljava/lang/String;

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x1f4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/aiy;-><init>(Landroid/content/Context;Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->i:Lcom/google/android/gms/internal/aiy;

    invoke-static {}, Lcom/google/android/gms/internal/ain;->a()Lcom/google/android/gms/internal/ain;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aiq;->j:Lcom/google/android/gms/internal/ain;

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/aji;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aiq;->k:Z

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ajn;I)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->d:Lcom/google/firebase/perf/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aiq;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ajn;->k:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ajn;->k:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ajn;->d:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ajn;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    const-string v0, "FirebasePerformance"

    const-string v5, "Logging NetworkRequestMetric - %s %db %dms,"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/android/gms/internal/ajn;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ajp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajp;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v1, v0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v1, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    iput-object p1, v0, Lcom/google/android/gms/internal/ajp;->c:Lcom/google/android/gms/internal/ajn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aiq;->a(Lcom/google/android/gms/internal/ajp;)V

    :cond_3
    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ajq;I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->d:Lcom/google/firebase/perf/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aiq;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    const-string v0, "FirebasePerformance"

    const-string v4, "Logging TraceMetric - %s %dms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    aput-object v6, v5, v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ajp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajp;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/aiq;->h:Lcom/google/android/gms/internal/ajk;

    iput-object v2, v0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v2, Lcom/google/android/gms/internal/ajk;->d:Ljava/lang/Integer;

    iput-object p1, v0, Lcom/google/android/gms/internal/ajp;->b:Lcom/google/android/gms/internal/ajq;

    invoke-static {}, Lcom/google/firebase/perf/a;->a()Lcom/google/firebase/perf/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/a;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, v0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ajl;

    iput-object v2, p2, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ajl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ajl;-><init>()V

    iput-object v2, v4, Lcom/google/android/gms/internal/ajl;->a:Ljava/lang/String;

    iput-object v3, v4, Lcom/google/android/gms/internal/ajl;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/ajp;->a:Lcom/google/android/gms/internal/ajk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ajk;->e:[Lcom/google/android/gms/internal/ajl;

    add-int/lit8 v3, v1, 0x1

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aiq;->a(Lcom/google/android/gms/internal/ajp;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ajn;I)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/aob;)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ajn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajn;-><init>()V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/aob;[B)Lcom/google/android/gms/internal/aob;

    iget-object p1, p0, Lcom/google/android/gms/internal/aiq;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/internal/ait;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ait;-><init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajn;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/aoa; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "FirebasePerformance"

    const-string v0, "Clone NetworkRequestMetric throws exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ajq;I)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/aob;)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajq;-><init>()V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aob;->a(Lcom/google/android/gms/internal/aob;[B)Lcom/google/android/gms/internal/aob;

    iget-object p1, p0, Lcom/google/android/gms/internal/aiq;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/internal/ais;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ais;-><init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajq;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/aoa; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "FirebasePerformance"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Clone TraceMetric throws exception "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/internal/aiu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/aiu;-><init>(Lcom/google/android/gms/internal/aiq;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aiq;->i:Lcom/google/android/gms/internal/aiy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aiy;->a(Z)V

    return-void
.end method
