.class public Lcom/a/a/c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/a/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/a/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/b;

.field private final e:Lcom/a/a/p;

.field private volatile f:Z

.field private final g:Lcom/a/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/a/a/u;->b:Z

    sput-boolean v0, Lcom/a/a/c;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/a/a/b;Lcom/a/a/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/a/a/m<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/a/a/m<",
            "*>;>;",
            "Lcom/a/a/b;",
            "Lcom/a/a/p;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/c;->f:Z

    iput-object p1, p0, Lcom/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/a/a/c;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/a/a/c;->d:Lcom/a/a/b;

    iput-object p4, p0, Lcom/a/a/c;->e:Lcom/a/a/p;

    new-instance p1, Lcom/a/a/c$a;

    invoke-direct {p1, p0}, Lcom/a/a/c$a;-><init>(Lcom/a/a/c;)V

    iput-object p1, p0, Lcom/a/a/c;->g:Lcom/a/a/c$a;

    return-void
.end method

.method static synthetic a(Lcom/a/a/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/a/a/c;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/a/a/c;)Lcom/a/a/p;
    .locals 0

    iget-object p0, p0, Lcom/a/a/c;->e:Lcom/a/a/p;

    return-object p0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/m;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/a/m;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/a/a/m;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/a/c;->d:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b$a;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/c;->g:Lcom/a/a/c$a;

    invoke-static {v1, v0}, Lcom/a/a/c$a;->a(Lcom/a/a/c$a;Lcom/a/a/m;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/a/a/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/a/a/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/m;->a(Lcom/a/a/b$a;)Lcom/a/a/m;

    iget-object v1, p0, Lcom/a/a/c;->g:Lcom/a/a/c$a;

    invoke-static {v1, v0}, Lcom/a/a/c$a;->a(Lcom/a/a/c$a;Lcom/a/a/m;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/a/a/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/a/a/k;

    iget-object v3, v1, Lcom/a/a/b$a;->a:[B

    iget-object v4, v1, Lcom/a/a/b$a;->g:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/a/a/k;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/a/a/m;->a(Lcom/a/a/k;)Lcom/a/a/o;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/a/a/b$a;->b()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/a/a/c;->e:Lcom/a/a/p;

    invoke-interface {v1, v0, v2}, Lcom/a/a/p;->a(Lcom/a/a/m;Lcom/a/a/o;)V

    goto :goto_0

    :cond_6
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/m;->a(Lcom/a/a/b$a;)Lcom/a/a/m;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/a/a/o;->d:Z

    iget-object v1, p0, Lcom/a/a/c;->g:Lcom/a/a/c$a;

    invoke-static {v1, v0}, Lcom/a/a/c$a;->a(Lcom/a/a/c$a;Lcom/a/a/m;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/a/a/c;->e:Lcom/a/a/p;

    new-instance v3, Lcom/a/a/c$1;

    invoke-direct {v3, p0, v0}, Lcom/a/a/c$1;-><init>(Lcom/a/a/c;Lcom/a/a/m;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/a/a/p;->a(Lcom/a/a/m;Lcom/a/a/o;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/c;->f:Z

    invoke-virtual {p0}, Lcom/a/a/c;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    sget-boolean v0, Lcom/a/a/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/a/a/c;->d:Lcom/a/a/b;

    invoke-interface {v0}, Lcom/a/a/b;->a()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/c;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/a/a/c;->f:Z

    if-eqz v0, :cond_1

    return-void
.end method
