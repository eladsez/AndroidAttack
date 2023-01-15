.class public final Lcom/google/android/gms/internal/er;
.super Lcom/google/android/gms/internal/ha;

# interfaces
.implements Lcom/google/android/gms/internal/ex;
.implements Lcom/google/android/gms/internal/fa;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/gm;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/fe;

.field private final e:Lcom/google/android/gms/internal/fa;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/bff;

.field private final i:J

.field private j:I

.field private k:I

.field private l:Lcom/google/android/gms/internal/eu;

.field private m:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bff;Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fa;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ha;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/er;->j:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/er;->k:I

    iput-object p1, p0, Lcom/google/android/gms/internal/er;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/er;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/er;->h:Lcom/google/android/gms/internal/bff;

    iput-object p5, p0, Lcom/google/android/gms/internal/er;->b:Lcom/google/android/gms/internal/gm;

    iput-object p6, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/fe;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/er;->f:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/er;->e:Lcom/google/android/gms/internal/fa;

    iput-wide p8, p0, Lcom/google/android/gms/internal/er;->i:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/er;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/er;->c:Landroid/content/Context;

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/bfz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->b()Lcom/google/android/gms/internal/ez;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/fa;)V

    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/er;->h:Lcom/google/android/gms/internal/bff;

    iget-object v1, v1, Lcom/google/android/gms/internal/bff;->a:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/bfz;->a(Lcom/google/android/gms/internal/aud;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/er;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/bfz;->a(Lcom/google/android/gms/internal/aud;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/er;Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/bfz;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/bfz;)V

    return-void
.end method

.method private final a(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/er;->i:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    const/4 p2, 0x4

    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/er;->k:I

    return p1

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/er;->f:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    const/4 p2, 0x5

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/er;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/er;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/fe;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->b()Lcom/google/android/gms/internal/ez;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->a()Lcom/google/android/gms/internal/bfz;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->b()Lcom/google/android/gms/internal/ez;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/fa;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ex;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/er;->b:Lcom/google/android/gms/internal/gm;

    iget-object v2, v2, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v2, v2, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v3, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fe;->a()Lcom/google/android/gms/internal/bfz;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/bfz;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/jz;->a:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/es;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/gms/internal/es;-><init>(Lcom/google/android/gms/internal/er;Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/bfz;)V

    :goto_0
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/jz;->a:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/et;

    invoke-direct {v5, p0, v3, v2, v0}, Lcom/google/android/gms/internal/et;-><init>(Lcom/google/android/gms/internal/er;Lcom/google/android/gms/internal/bfz;Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/ez;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Fail to check if adapter is initialized."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/er;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v5, p0, Lcom/google/android/gms/internal/er;->j:I

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/ew;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ew;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ew;->a(J)Lcom/google/android/gms/internal/ew;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/er;->j:I

    if-ne v6, v3, :cond_2

    const/4 v3, 0x6

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/google/android/gms/internal/er;->k:I

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ew;->a(I)Lcom/google/android/gms/internal/ew;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ew;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ew;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/er;->h:Lcom/google/android/gms/internal/bff;

    iget-object v3, v3, Lcom/google/android/gms/internal/bff;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ew;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ew;->a()Lcom/google/android/gms/internal/eu;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/er;->l:Lcom/google/android/gms/internal/eu;

    :goto_4
    monitor-exit v4

    goto :goto_5

    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/er;->a(J)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/android/gms/internal/ew;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ew;-><init>()V

    iget v7, p0, Lcom/google/android/gms/internal/er;->k:I

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ew;->a(I)Lcom/google/android/gms/internal/ew;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ew;->a(J)Lcom/google/android/gms/internal/ew;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ew;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ew;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/er;->h:Lcom/google/android/gms/internal/bff;

    iget-object v3, v3, Lcom/google/android/gms/internal/bff;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ew;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ew;->a()Lcom/google/android/gms/internal/eu;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/er;->l:Lcom/google/android/gms/internal/eu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/fa;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ex;)V

    iget v0, p0, Lcom/google/android/gms/internal/er;->j:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->e:Lcom/google/android/gms/internal/fa;

    iget-object v1, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fa;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/er;->e:Lcom/google/android/gms/internal/fa;

    iget-object v1, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/er;->k:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/fa;->a(Ljava/lang/String;I)V

    return-void

    :cond_5
    :try_start_2
    monitor-exit v4

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :goto_6
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/er;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/er;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/er;->j:I

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/er;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/er;->j:I

    iput p2, p0, Lcom/google/android/gms/internal/er;->k:I

    iget-object p2, p0, Lcom/google/android/gms/internal/er;->f:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final e()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->m:Ljava/util/concurrent/Future;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ha;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lf;

    iput-object v0, p0, Lcom/google/android/gms/internal/er;->m:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/eu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/er;->l:Lcom/google/android/gms/internal/eu;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Lcom/google/android/gms/internal/bff;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->h:Lcom/google/android/gms/internal/bff;

    return-object v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->b:Lcom/google/android/gms/internal/gm;

    iget-object v0, v0, Lcom/google/android/gms/internal/gm;->a:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->c:Lcom/google/android/gms/internal/aud;

    iget-object v1, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fe;->a()Lcom/google/android/gms/internal/bfz;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/aud;Lcom/google/android/gms/internal/bfz;)V

    return-void
.end method
