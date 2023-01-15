.class public final Lcom/google/android/gms/internal/ads/gw;
.super Lcom/google/android/gms/internal/ads/ji;

# interfaces
.implements Lcom/google/android/gms/internal/ads/hc;
.implements Lcom/google/android/gms/internal/ads/hf;
.implements Lcom/google/android/gms/internal/ads/hk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/it;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/hl;

.field private final e:Lcom/google/android/gms/internal/ads/hf;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/ads/bcj;

.field private final i:J

.field private j:I

.field private k:I

.field private l:Lcom/google/android/gms/internal/ads/gz;

.field private m:Ljava/util/concurrent/Future;

.field private volatile n:Lcom/google/android/gms/ads/internal/gmsg/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bcj;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/hl;Lcom/google/android/gms/internal/ads/hf;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ji;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/gw;->j:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/gw;->k:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gw;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gw;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gw;->h:Lcom/google/android/gms/internal/ads/bcj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gw;->b:Lcom/google/android/gms/internal/ads/it;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/hl;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gw;->f:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/gw;->e:Lcom/google/android/gms/internal/ads/hf;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/gw;->i:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/gw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gw;->c:Landroid/content/Context;

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/bdd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hl;->b()Lcom/google/android/gms/internal/ads/he;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/he;->a(Lcom/google/android/gms/internal/ads/hf;)V

    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gw;->h:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcj;->a:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/bdd;->a(Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/bdd;->a(Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/gw;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/gw;Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/bdd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/gw;->a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/bdd;)V

    return-void
.end method

.method private final a(J)Z
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/gw;->i:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    sub-long v4, v2, p1

    sub-long p1, v0, v4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x0

    if-gtz v2, :cond_0

    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/gw;->k:I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gw;->f:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x5

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/gw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gw;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/hl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hl;->b()Lcom/google/android/gms/internal/ads/he;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hl;->b()Lcom/google/android/gms/internal/ads/he;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->a(Lcom/google/android/gms/internal/ads/hf;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/he;->a(Lcom/google/android/gms/internal/ads/hc;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/he;->a(Lcom/google/android/gms/internal/ads/hk;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gw;->b:Lcom/google/android/gms/internal/ads/it;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/bdd;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/ads/mi;->a:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/ads/gx;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/gms/internal/ads/gx;-><init>(Lcom/google/android/gms/internal/ads/gw;Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/bdd;)V

    :goto_0
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/ads/mi;->a:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/ads/gy;

    invoke-direct {v5, p0, v3, v2, v0}, Lcom/google/android/gms/internal/ads/gy;-><init>(Lcom/google/android/gms/internal/ads/gw;Lcom/google/android/gms/internal/ads/bdd;Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/he;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Fail to check if adapter is initialized."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/gw;->a(Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gw;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v5, p0, Lcom/google/android/gms/internal/ads/gw;->j:I

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/ads/hb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/hb;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v7

    sub-long v9, v7, v2

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/hb;->a(J)Lcom/google/android/gms/internal/ads/hb;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/gw;->j:I

    if-ne v6, v3, :cond_2

    const/4 v3, 0x6

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/google/android/gms/internal/ads/gw;->k:I

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/hb;->a(I)Lcom/google/android/gms/internal/ads/hb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/hb;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gw;->h:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bcj;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/hb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hb;->a()Lcom/google/android/gms/internal/ads/gz;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/gw;->l:Lcom/google/android/gms/internal/ads/gz;

    :goto_4
    monitor-exit v4

    goto :goto_5

    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/gw;->a(J)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/android/gms/internal/ads/hb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/hb;-><init>()V

    iget v7, p0, Lcom/google/android/gms/internal/ads/gw;->k:I

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/hb;->a(I)Lcom/google/android/gms/internal/ads/hb;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->l()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v7

    sub-long v9, v7, v2

    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/hb;->a(J)Lcom/google/android/gms/internal/ads/hb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/hb;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gw;->h:Lcom/google/android/gms/internal/ads/bcj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bcj;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/hb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hb;->a()Lcom/google/android/gms/internal/ads/gz;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/gw;->l:Lcom/google/android/gms/internal/ads/gz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->a(Lcom/google/android/gms/internal/ads/hf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->a(Lcom/google/android/gms/internal/ads/hc;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/gw;->j:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->e:Lcom/google/android/gms/internal/ads/hf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/hf;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->e:Lcom/google/android/gms/internal/ads/hf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/gw;->k:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hf;->a(Ljava/lang/String;I)V

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
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gw;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/gw;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->n:Lcom/google/android/gms/ads/internal/gmsg/k;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/internal/gmsg/k;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/gmsg/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gw;->n:Lcom/google/android/gms/ads/internal/gmsg/k;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gw;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/gw;->j:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->f:Ljava/lang/Object;

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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gw;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/gw;->j:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/gw;->k:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gw;->f:Ljava/lang/Object;

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

.method public final b_()V
    .locals 0

    return-void
.end method

.method public final d()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->m:Ljava/util/concurrent/Future;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ji;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/no;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->m:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/gz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gw;->l:Lcom/google/android/gms/internal/ads/gz;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Lcom/google/android/gms/internal/ads/bcj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->h:Lcom/google/android/gms/internal/ads/bcj;

    return-object v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->b:Lcom/google/android/gms/internal/ads/it;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/it;->a:Lcom/google/android/gms/internal/ads/dl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dl;->c:Lcom/google/android/gms/internal/ads/aoq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hl;->a()Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/gw;->a(Lcom/google/android/gms/internal/ads/aoq;Lcom/google/android/gms/internal/ads/bdd;)V

    return-void
.end method
