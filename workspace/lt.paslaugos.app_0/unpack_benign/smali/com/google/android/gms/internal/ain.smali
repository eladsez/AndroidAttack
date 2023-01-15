.class public Lcom/google/android/gms/internal/ain;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ain$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/ain;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/gms/internal/aiq;

.field private final d:Lcom/google/android/gms/internal/ajb;

.field private e:Z

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/aje;

.field private h:Lcom/google/android/gms/internal/aje;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:I

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ain$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ain;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ain;->e:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ain;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ain;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ain;->k:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ain;->l:Ljava/util/Set;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ain;->d:Lcom/google/android/gms/internal/ajb;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ain;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ain;->a:Lcom/google/android/gms/internal/ain;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ain;->a:Lcom/google/android/gms/internal/ain;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ajb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ajb;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ain;->a(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajb;)Lcom/google/android/gms/internal/ain;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajb;)Lcom/google/android/gms/internal/ain;
    .locals 2

    sget-object p0, Lcom/google/android/gms/internal/ain;->a:Lcom/google/android/gms/internal/ain;

    if-nez p0, :cond_1

    const-class p0, Lcom/google/android/gms/internal/ain;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ain;->a:Lcom/google/android/gms/internal/ain;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ain;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ain;-><init>(Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/ajb;)V

    sput-object v0, Lcom/google/android/gms/internal/ain;->a:Lcom/google/android/gms/internal/ain;

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
    sget-object p0, Lcom/google/android/gms/internal/ain;->a:Lcom/google/android/gms/internal/ain;

    return-object p0
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aje;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ajq;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/ajq;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aje;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ajq;->b:Ljava/lang/Long;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ajq;->c:Ljava/lang/Long;

    iget-object p1, p0, Lcom/google/android/gms/internal/ain;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    monitor-enter p3

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :goto_0
    new-array v1, v1, [Lcom/google/android/gms/internal/ajr;

    iput-object v1, v0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v5, Lcom/google/android/gms/internal/ajr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ajr;-><init>()V

    iput-object v2, v5, Lcom/google/android/gms/internal/ajr;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/ajr;->b:Ljava/lang/Long;

    iget-object v2, v0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    add-int/lit8 v3, p2, 0x1

    aput-object v5, v2, p2

    move p2, v3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/ajr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ajr;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ajc;->c:Lcom/google/android/gms/internal/ajc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ajc;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ajr;->a:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/internal/ajr;->b:Ljava/lang/Long;

    iget-object p1, v0, Lcom/google/android/gms/internal/ajq;->d:[Lcom/google/android/gms/internal/ajr;

    aput-object v1, p1, p2

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    const/4 p2, 0x3

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/aiq;->a(Lcom/google/android/gms/internal/ajq;I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/aiq;->a()Lcom/google/android/gms/internal/aiq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->c:Lcom/google/android/gms/internal/aiq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aiq;->a(Z)V

    :cond_1
    return-void
.end method

.method private final b(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/gms/internal/ain;->k:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ain;->l:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ain$a;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ain;->k:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ain$a;->b(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ain;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ain;->b:Z
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

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ain;->b:Z
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

.method public final a(Ljava/lang/String;J)V
    .locals 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    const-wide/16 v0, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ain;->i:Ljava/util/Map;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 p3, 0x0

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ain$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->l:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->l:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ain;->k:I

    return v0
.end method

.method public final b(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ain$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->l:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->l:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ain;->h:Lcom/google/android/gms/internal/aje;

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ain;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ain;->e:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ain;->b(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ain;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/aji;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FirebasePerformance"

    sget-object v0, Lcom/google/android/gms/internal/ajd;->f:Lcom/google/android/gms/internal/ajd;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ain;->g:Lcom/google/android/gms/internal/aje;

    iget-object v3, p0, Lcom/google/android/gms/internal/ain;->h:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onActivityResumed "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ain;->b(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ain;->a(Z)V

    sget-object p1, Lcom/google/android/gms/internal/ajd;->f:Lcom/google/android/gms/internal/ajd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->g:Lcom/google/android/gms/internal/aje;

    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->h:Lcom/google/android/gms/internal/aje;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ain;->a(Ljava/lang/String;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aje;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/aje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aje;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ain;->g:Lcom/google/android/gms/internal/aje;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/aji;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FirebasePerformance"

    sget-object v0, Lcom/google/android/gms/internal/ajd;->e:Lcom/google/android/gms/internal/ajd;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->h:Lcom/google/android/gms/internal/aje;

    iget-object v2, p0, Lcom/google/android/gms/internal/ain;->g:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/aje;->a(Lcom/google/android/gms/internal/aje;)J

    move-result-wide v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onActivityStopped "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ain;->b(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ain;->a(Z)V

    sget-object p1, Lcom/google/android/gms/internal/ajd;->e:Lcom/google/android/gms/internal/ajd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ajd;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ain;->h:Lcom/google/android/gms/internal/aje;

    iget-object v1, p0, Lcom/google/android/gms/internal/ain;->g:Lcom/google/android/gms/internal/aje;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ain;->a(Ljava/lang/String;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aje;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
