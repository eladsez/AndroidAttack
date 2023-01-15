.class Landroid/support/design/widget/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/j$b;,
        Landroid/support/design/widget/j$a;
    }
.end annotation


# static fields
.field private static a:Landroid/support/design/widget/j;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/support/design/widget/j$b;

.field private e:Landroid/support/design/widget/j$b;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/j$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/j$1;-><init>(Landroid/support/design/widget/j;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/os/Handler;

    return-void
.end method

.method static a()Landroid/support/design/widget/j;
    .locals 1

    sget-object v0, Landroid/support/design/widget/j;->a:Landroid/support/design/widget/j;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/j;

    invoke-direct {v0}, Landroid/support/design/widget/j;-><init>()V

    sput-object v0, Landroid/support/design/widget/j;->a:Landroid/support/design/widget/j;

    :cond_0
    sget-object v0, Landroid/support/design/widget/j;->a:Landroid/support/design/widget/j;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/j$b;I)Z
    .locals 2

    iget-object v0, p1, Landroid/support/design/widget/j$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/j$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/j;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Landroid/support/design/widget/j$a;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    iput-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    iget-object v1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    iget-object v1, v1, Landroid/support/design/widget/j$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/j$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/support/design/widget/j$a;->a()V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/support/design/widget/j$b;)V
    .locals 4

    iget v0, p1, Landroid/support/design/widget/j$b;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    iget v1, p1, Landroid/support/design/widget/j$b;->b:I

    if-lez v1, :cond_1

    iget v0, p1, Landroid/support/design/widget/j$b;->b:I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/support/design/widget/j$b;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/j;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/design/widget/j;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/j;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private f(Landroid/support/design/widget/j$a;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/j$b;->a(Landroid/support/design/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g(Landroid/support/design/widget/j$a;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/j$b;->a(Landroid/support/design/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(ILandroid/support/design/widget/j$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Landroid/support/design/widget/j;->f(Landroid/support/design/widget/j$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    iput p1, p2, Landroid/support/design/widget/j$b;->b:I

    iget-object p1, p0, Landroid/support/design/widget/j;->c:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->b(Landroid/support/design/widget/j$b;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Landroid/support/design/widget/j;->g(Landroid/support/design/widget/j$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    iput p1, p2, Landroid/support/design/widget/j$b;->b:I

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/design/widget/j$b;

    invoke-direct {v1, p1, p2}, Landroid/support/design/widget/j$b;-><init>(ILandroid/support/design/widget/j$a;)V

    iput-object v1, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    :goto_0
    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;I)Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-direct {p0}, Landroid/support/design/widget/j;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/support/design/widget/j$a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->f(Landroid/support/design/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    iget-object p1, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/j;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/support/design/widget/j$a;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->f(Landroid/support/design/widget/j$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;I)Z

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->g(Landroid/support/design/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Landroid/support/design/widget/j$b;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j$b;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;I)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Landroid/support/design/widget/j$a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->f(Landroid/support/design/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->b(Landroid/support/design/widget/j$b;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Landroid/support/design/widget/j$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->f(Landroid/support/design/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    iget-boolean p1, p1, Landroid/support/design/widget/j$b;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/design/widget/j$b;->c:Z

    iget-object p1, p0, Landroid/support/design/widget/j;->c:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Landroid/support/design/widget/j$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->f(Landroid/support/design/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    iget-boolean p1, p1, Landroid/support/design/widget/j$b;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/design/widget/j$b;->c:Z

    iget-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->b(Landroid/support/design/widget/j$b;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Landroid/support/design/widget/j$a;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->f(Landroid/support/design/widget/j$a;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/design/widget/j;->g(Landroid/support/design/widget/j$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
