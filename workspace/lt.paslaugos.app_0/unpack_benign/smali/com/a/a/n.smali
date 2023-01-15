.class public Lcom/a/a/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/n$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/a/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/a/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/a/a/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/b;

.field private final f:Lcom/a/a/h;

.field private final g:Lcom/a/a/p;

.field private final h:[Lcom/a/a/i;

.field private i:Lcom/a/a/c;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/a/a/n$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/b;Lcom/a/a/h;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/n;-><init>(Lcom/a/a/b;Lcom/a/a/h;I)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/b;Lcom/a/a/h;I)V
    .locals 3

    new-instance v0, Lcom/a/a/f;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/a/a/f;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/n;-><init>(Lcom/a/a/b;Lcom/a/a/h;ILcom/a/a/p;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/b;Lcom/a/a/h;ILcom/a/a/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/a/a/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/n;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/a/a/n;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/a/a/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/n;->j:Ljava/util/List;

    iput-object p1, p0, Lcom/a/a/n;->e:Lcom/a/a/b;

    iput-object p2, p0, Lcom/a/a/n;->f:Lcom/a/a/h;

    new-array p1, p3, [Lcom/a/a/i;

    iput-object p1, p0, Lcom/a/a/n;->h:[Lcom/a/a/i;

    iput-object p4, p0, Lcom/a/a/n;->g:Lcom/a/a/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/m;)Lcom/a/a/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/m<",
            "TT;>;)",
            "Lcom/a/a/m<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/a/a/m;->a(Lcom/a/a/n;)Lcom/a/a/m;

    iget-object v0, p0, Lcom/a/a/n;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/a/a/n;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/a/a/n;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/a/a/m;->a(I)Lcom/a/a/m;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/a/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/a/a/n;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 6

    invoke-virtual {p0}, Lcom/a/a/n;->b()V

    new-instance v0, Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/n;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/a/a/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/a/a/n;->e:Lcom/a/a/b;

    iget-object v4, p0, Lcom/a/a/n;->g:Lcom/a/a/p;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/a/a/b;Lcom/a/a/p;)V

    iput-object v0, p0, Lcom/a/a/n;->i:Lcom/a/a/c;

    iget-object v0, p0, Lcom/a/a/n;->i:Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->start()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/a/a/n;->h:[Lcom/a/a/i;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/a/a/i;

    iget-object v2, p0, Lcom/a/a/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/a/a/n;->f:Lcom/a/a/h;

    iget-object v4, p0, Lcom/a/a/n;->e:Lcom/a/a/b;

    iget-object v5, p0, Lcom/a/a/n;->g:Lcom/a/a/p;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/a/a/i;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/a/a/h;Lcom/a/a/b;Lcom/a/a/p;)V

    iget-object v2, p0, Lcom/a/a/n;->h:[Lcom/a/a/i;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/a/a/i;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/a/a/n;->i:Lcom/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/n;->i:Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/n;->h:[Lcom/a/a/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/a/a/i;->a()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method b(Lcom/a/a/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/m<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/n;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/a/a/n;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/a/a/n;->j:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/a/a/n;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/n$a;

    invoke-interface {v2, p1}, Lcom/a/a/n$a;->a(Lcom/a/a/m;)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
