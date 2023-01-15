.class public final Lcom/google/android/gms/internal/ads/asg;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/arh;

.field private final c:Lcom/google/android/gms/internal/ads/zz;

.field private final d:Lcom/google/android/gms/internal/ads/b;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/arh;Lcom/google/android/gms/internal/ads/zz;Lcom/google/android/gms/internal/ads/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/arh;",
            "Lcom/google/android/gms/internal/ads/zz;",
            "Lcom/google/android/gms/internal/ads/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/asg;->e:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/asg;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/asg;->b:Lcom/google/android/gms/internal/ads/arh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/asg;->c:Lcom/google/android/gms/internal/ads/zz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/asg;->d:Lcom/google/android/gms/internal/ads/b;

    return-void
.end method

.method private final b()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/asg;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/awk;

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/awk;->g()Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/awk;->d()I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/asg;->b:Lcom/google/android/gms/internal/ads/arh;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/arh;->a(Lcom/google/android/gms/internal/ads/awk;)Lcom/google/android/gms/internal/ads/aui;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/aui;->e:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/awk;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "not-modified"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/awk;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/awk;->m()V

    return-void

    :cond_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/awk;->a(Lcom/google/android/gms/internal/ads/aui;)Lcom/google/android/gms/internal/ads/bcm;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/awk;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/bcm;->b:Lcom/google/android/gms/internal/ads/agz;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/asg;->c:Lcom/google/android/gms/internal/ads/zz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/awk;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/bcm;->b:Lcom/google/android/gms/internal/ads/agz;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/agz;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/awk;->k()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/asg;->d:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v4, v2, v3}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/bcm;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/awk;->a(Lcom/google/android/gms/internal/ads/bcm;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/df; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/eg;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/df;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/df;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v7, v5, v0

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/df;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asg;->d:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v0, v2, v4}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/df;)V

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/awk;->m()V

    return-void

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/df;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asg;->d:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/df;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/asg;->e:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/asg;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/asg;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/asg;->e:Z

    if-eqz v0, :cond_0

    return-void
.end method
