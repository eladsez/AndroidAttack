.class public final Lcom/google/android/gms/internal/aal;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ban<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ban<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/qj;

.field private final e:Lcom/google/android/gms/internal/b;

.field private volatile f:Z

.field private final g:Lcom/google/android/gms/internal/ajg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/eg;->a:Z

    sput-boolean v0, Lcom/google/android/gms/internal/aal;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/qj;Lcom/google/android/gms/internal/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ban<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ban<",
            "*>;>;",
            "Lcom/google/android/gms/internal/qj;",
            "Lcom/google/android/gms/internal/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aal;->f:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aal;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/aal;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/aal;->d:Lcom/google/android/gms/internal/qj;

    iput-object p4, p0, Lcom/google/android/gms/internal/aal;->e:Lcom/google/android/gms/internal/b;

    new-instance p1, Lcom/google/android/gms/internal/ajg;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ajg;-><init>(Lcom/google/android/gms/internal/aal;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/aal;->g:Lcom/google/android/gms/internal/ajg;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aal;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/aal;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/aal;)Lcom/google/android/gms/internal/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/aal;->e:Lcom/google/android/gms/internal/b;

    return-object p0
.end method

.method private final b()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/aal;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ban;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ban;->g()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/aal;->d:Lcom/google/android/gms/internal/qj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ban;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/qj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ru;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aal;->g:Lcom/google/android/gms/internal/ajg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ajg;->a(Lcom/google/android/gms/internal/ajg;Lcom/google/android/gms/internal/ban;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aal;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ru;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ban;->a(Lcom/google/android/gms/internal/ru;)Lcom/google/android/gms/internal/ban;

    iget-object v1, p0, Lcom/google/android/gms/internal/aal;->g:Lcom/google/android/gms/internal/ajg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ajg;->a(Lcom/google/android/gms/internal/ajg;Lcom/google/android/gms/internal/ban;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/aal;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ayl;

    iget-object v3, v1, Lcom/google/android/gms/internal/ru;->a:[B

    iget-object v4, v1, Lcom/google/android/gms/internal/ru;->g:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ayl;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ban;->a(Lcom/google/android/gms/internal/ayl;)Lcom/google/android/gms/internal/bgr;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/google/android/gms/internal/ru;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ban;->a(Lcom/google/android/gms/internal/ru;)Lcom/google/android/gms/internal/ban;

    iput-boolean v7, v2, Lcom/google/android/gms/internal/bgr;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/aal;->g:Lcom/google/android/gms/internal/ajg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ajg;->a(Lcom/google/android/gms/internal/ajg;Lcom/google/android/gms/internal/ban;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/aal;->e:Lcom/google/android/gms/internal/b;

    new-instance v3, Lcom/google/android/gms/internal/ahn;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ahn;-><init>(Lcom/google/android/gms/internal/aal;Lcom/google/android/gms/internal/ban;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/b;->a(Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/bgr;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/aal;->e:Lcom/google/android/gms/internal/b;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/b;->a(Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/bgr;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aal;->f:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aal;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 2

    sget-boolean v0, Lcom/google/android/gms/internal/aal;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aal;->d:Lcom/google/android/gms/internal/qj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qj;->a()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/aal;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aal;->f:Z

    if-eqz v0, :cond_1

    return-void
.end method
