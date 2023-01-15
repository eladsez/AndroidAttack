.class public Lcom/a/a/i;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/a/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/h;

.field private final c:Lcom/a/a/b;

.field private final d:Lcom/a/a/p;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/a/a/h;Lcom/a/a/b;Lcom/a/a/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/a/a/m<",
            "*>;>;",
            "Lcom/a/a/h;",
            "Lcom/a/a/b;",
            "Lcom/a/a/p;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/i;->e:Z

    iput-object p1, p0, Lcom/a/a/i;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/a/a/i;->b:Lcom/a/a/h;

    iput-object p3, p0, Lcom/a/a/i;->c:Lcom/a/a/b;

    iput-object p4, p0, Lcom/a/a/i;->d:Lcom/a/a/p;

    return-void
.end method

.method private a(Lcom/a/a/m;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/m<",
            "*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/m;->b()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/a/a/m;Lcom/a/a/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/m<",
            "*>;",
            "Lcom/a/a/t;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/a/a/m;->a(Lcom/a/a/t;)Lcom/a/a/t;

    move-result-object p2

    iget-object v0, p0, Lcom/a/a/i;->d:Lcom/a/a/p;

    invoke-interface {v0, p1, p2}, Lcom/a/a/p;->a(Lcom/a/a/m;Lcom/a/a/t;)V

    return-void
.end method

.method private b()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/i;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/m;

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/a/m;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    invoke-virtual {v2, v3}, Lcom/a/a/m;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/a/m;->w()V

    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/a/a/i;->a(Lcom/a/a/m;)V

    iget-object v3, p0, Lcom/a/a/i;->b:Lcom/a/a/h;

    invoke-interface {v3, v2}, Lcom/a/a/h;->a(Lcom/a/a/m;)Lcom/a/a/k;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/a/a/k;->e:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/a/a/m;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "not-modified"

    invoke-virtual {v2, v3}, Lcom/a/a/m;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/a/m;->w()V

    return-void

    :cond_1
    invoke-virtual {v2, v3}, Lcom/a/a/m;->a(Lcom/a/a/k;)Lcom/a/a/o;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/a/m;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/a/a/o;->b:Lcom/a/a/b$a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/a/a/i;->c:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/m;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/a/a/o;->b:Lcom/a/a/b$a;

    invoke-interface {v4, v5, v6}, Lcom/a/a/b;->a(Ljava/lang/String;Lcom/a/a/b$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/a/a/m;->u()V

    iget-object v4, p0, Lcom/a/a/i;->d:Lcom/a/a/p;

    invoke-interface {v4, v2, v3}, Lcom/a/a/p;->a(Lcom/a/a/m;Lcom/a/a/o;)V

    invoke-virtual {v2, v3}, Lcom/a/a/m;->a(Lcom/a/a/o;)V
    :try_end_0
    .catch Lcom/a/a/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/a/a/u;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/a/a/t;

    invoke-direct {v4, v3}, Lcom/a/a/t;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/a/a/t;->a(J)V

    iget-object v0, p0, Lcom/a/a/i;->d:Lcom/a/a/p;

    invoke-interface {v0, v2, v4}, Lcom/a/a/p;->a(Lcom/a/a/m;Lcom/a/a/t;)V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/a/a/t;->a(J)V

    invoke-direct {p0, v2, v3}, Lcom/a/a/i;->a(Lcom/a/a/m;Lcom/a/a/t;)V

    :goto_0
    invoke-virtual {v2}, Lcom/a/a/m;->w()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/i;->e:Z

    invoke-virtual {p0}, Lcom/a/a/i;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/i;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/a/a/i;->e:Z

    if-eqz v0, :cond_0

    return-void
.end method
