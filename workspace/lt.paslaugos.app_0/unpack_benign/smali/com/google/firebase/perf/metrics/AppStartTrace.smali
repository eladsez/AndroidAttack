.class public Lcom/google/firebase/perf/metrics/AppStartTrace;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/metrics/AppStartTrace$a;
    }
.end annotation


# static fields
.field private static final a:J

.field private static volatile b:Lcom/google/firebase/perf/metrics/AppStartTrace;


# instance fields
.field private c:Z

.field private d:Lcom/google/android/gms/internal/aiq;

.field private final e:Lcom/google/android/gms/internal/ajb;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/google/android/gms/internal/aje;

.field private k:Lcom/google/android/gms/internal/aje;

.field private l:Lcom/google/android/gms/internal/aje;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Z

    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/android/gms/internal/aje;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/android/gms/internal/aje;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/android/gms/internal/aje;

    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Z

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/android/gms/internal/aiq;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/android/gms/internal/ajb;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/perf/metrics/AppStartTrace;)Lcom/google/android/gms/internal/aje;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/android/gms/internal/aje;

    return-object p0
.end method

.method public static a()Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ajb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ajb;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->a(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajb;)Lcom/google/firebase/perf/metrics/AppStartTrace;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajb;)Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez p0, :cond_1

    const-class p0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;-><init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajb;)V

    sput-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lcom/google/firebase/perf/metrics/AppStartTrace;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-object p0
.end method

.method static synthetic a(Lcom/google/firebase/perf/metrics/AppStartTrace;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Z

    return p1
.end method

.method private final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setLauncherActivityOnCreateTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnResumeTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Z

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/android/gms/internal/aje;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ljava/lang/ref/WeakReference;

    new-instance p1, Lcom/google/android/gms/internal/aje;

    invoke-direct {p1}, Lcom/google/android/gms/internal/aje;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/android/gms/internal/aje;

    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->zzcnb()Lcom/google/android/gms/internal/aje;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/android/gms/internal/aje;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide p1

    sget-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/android/gms/internal/aje;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/android/gms/internal/aje;

    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->zzcnb()Lcom/google/android/gms/internal/aje;

    move-result-object v0

    const-string v1, "FirebasePerformance"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onResume "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/internal/ajq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ajq;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ajd;->a:Lcom/google/android/gms/internal/ajd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/google/android/gms/internal/ajq;

    new-instance v3, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ajq;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/ajd;->b:Lcom/google/android/gms/internal/ajd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    const/4 v0, 0x0

    aput-object v3, v2, v0

    new-instance v0, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajq;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/ajd;->c:Lcom/google/android/gms/internal/ajd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/android/gms/internal/aje;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    new-instance v0, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajq;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/ajd;->d:Lcom/google/android/gms/internal/ajd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/android/gms/internal/aje;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iput-object v2, p1, Lcom/google/android/gms/internal/ajq;->e:[Lcom/google/android/gms/internal/ajq;

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/android/gms/internal/aiq;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/android/gms/internal/aiq;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/android/gms/internal/aiq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/android/gms/internal/aiq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/aiq;->a(Lcom/google/android/gms/internal/ajq;I)V

    :cond_2
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/android/gms/internal/aje;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/aje;

    invoke-direct {p1}, Lcom/google/android/gms/internal/aje;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/android/gms/internal/aje;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
