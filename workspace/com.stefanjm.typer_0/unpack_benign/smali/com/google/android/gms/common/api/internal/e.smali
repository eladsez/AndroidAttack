.class public Lcom/google/android/gms/common/api/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/e$b;,
        Lcom/google/android/gms/common/api/internal/e$c;,
        Lcom/google/android/gms/common/api/internal/e$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field private static final b:Lcom/google/android/gms/common/api/Status;

.field private static final f:Ljava/lang/Object;

.field private static g:Lcom/google/android/gms/common/api/internal/e;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private c:J

.field private d:J

.field private e:J

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/common/g;

.field private final j:Lcom/google/android/gms/common/internal/t;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private n:Lcom/google/android/gms/common/api/internal/u;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/e;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/e;->b:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/e;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/g;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/e;->c:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/e;->d:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/e;->e:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Lcom/google/android/gms/common/api/internal/u;

    new-instance v0, Landroid/support/v4/g/b;

    invoke-direct {v0}, Landroid/support/v4/g/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->o:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/g/b;

    invoke-direct {v0}, Landroid/support/v4/g/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->p:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->h:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/e;->i:Lcom/google/android/gms/common/g;

    new-instance p1, Lcom/google/android/gms/common/internal/t;

    invoke-direct {p1, p3}, Lcom/google/android/gms/common/internal/t;-><init>(Lcom/google/android/gms/common/h;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->j:Lcom/google/android/gms/common/internal/t;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/google/android/gms/common/api/internal/e;
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/api/internal/e;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/api/internal/e;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/e;
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/api/internal/e;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/g;->a()Lcom/google/android/gms/common/g;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/g;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/api/internal/e;

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/api/internal/e;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/api/internal/e;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/api/internal/e;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final b(Lcom/google/android/gms/common/api/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/e;->b()Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/e$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/e$a;-><init>(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/e;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/e$a;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->p:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/e$a;->i()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/e;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/internal/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/e;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/internal/e;)Lcom/google/android/gms/common/internal/t;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Lcom/google/android/gms/common/internal/t;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/internal/e;)Lcom/google/android/gms/common/api/internal/u;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Lcom/google/android/gms/common/api/internal/u;

    return-object p0
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/internal/e;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->o:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/internal/e;)Lcom/google/android/gms/common/g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->i:Lcom/google/android/gms/common/g;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/internal/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/e;->e:J

    return-wide v0
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/internal/e;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/common/api/internal/cg;I)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/e$a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->m()Lcom/google/android/gms/c/b;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->h:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/c/b;->d()Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x8000000

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/gms/d/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/common/api/e<",
            "*>;>;)",
            "Lcom/google/android/gms/d/f<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/cg<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/ci;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/ci;-><init>(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ci;->b()Lcom/google/android/gms/d/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/e;ILcom/google/android/gms/common/api/internal/c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d;",
            ">(",
            "Lcom/google/android/gms/common/api/e<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "+",
            "Lcom/google/android/gms/common/api/k;",
            "Lcom/google/android/gms/common/api/a$b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/cd;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/common/api/internal/cd;-><init>(ILcom/google/android/gms/common/api/internal/c$a;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/bl;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/common/api/internal/bl;-><init>(Lcom/google/android/gms/common/api/internal/ar;ILcom/google/android/gms/common/api/e;)V

    const/4 p1, 0x4

    invoke-virtual {p3, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/u;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->n:Lcom/google/android/gms/common/api/internal/u;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->n:Lcom/google/android/gms/common/api/internal/u;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->o:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->g()Landroid/support/v4/g/b;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Lcom/google/android/gms/common/b;I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->i:Lcom/google/android/gms/common/g;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;Lcom/google/android/gms/common/b;I)Z

    move-result p1

    return p1
.end method

.method final b(Lcom/google/android/gms/common/api/internal/u;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->n:Lcom/google/android/gms/common/api/internal/u;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->n:Lcom/google/android/gms/common/api/internal/u;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->o:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

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

.method public final b(Lcom/google/android/gms/common/b;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/e;->a(Lcom/google/android/gms/common/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "GoogleApiManager"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/e$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e$b;->a(Lcom/google/android/gms/common/api/internal/e$b;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e$b;->a(Lcom/google/android/gms/common/api/internal/e$b;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/e$a;->b(Lcom/google/android/gms/common/api/internal/e$a;Lcom/google/android/gms/common/api/internal/e$b;)V

    return v3

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/e$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e$b;->a(Lcom/google/android/gms/common/api/internal/e$b;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e$b;->a(Lcom/google/android/gms/common/api/internal/e$b;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/e$a;->a(Lcom/google/android/gms/common/api/internal/e$a;Lcom/google/android/gms/common/api/internal/e$b;)V

    return v3

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/v;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/v;->a()Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/v;->b()Lcom/google/android/gms/d/g;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/g;->a(Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/api/internal/e$a;->a(Lcom/google/android/gms/common/api/internal/e$a;Z)Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/v;->b()Lcom/google/android/gms/d/g;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->h()Z

    return v3

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->g()V

    return v3

    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->p:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cg;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/e$a;->a()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->p:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return v3

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/e$a;->f()V

    return v3

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/e;->b(Lcom/google/android/gms/common/api/e;)V

    return v3

    :pswitch_8
    invoke-static {}, Lcom/google/android/gms/common/util/o;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/b;->a()Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/az;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/az;-><init>(Lcom/google/android/gms/common/api/internal/e;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/internal/b$a;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/b;->a()Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/api/internal/b;->a(Z)Z

    move-result p1

    if-nez p1, :cond_b

    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/e;->e:J

    return v3

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/e$a;->l()I

    move-result v5

    if-ne v5, v0, :cond_2

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/e;->i:Lcom/google/android/gms/common/g;

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/h;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->e()Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/e$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return v3

    :cond_4
    const-string p1, "GoogleApiManager"

    const/16 v1, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/bl;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/bl;->c:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/e;->b()Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/bl;->c:Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/e;->b(Lcom/google/android/gms/common/api/e;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/bl;->c:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/e;->b()Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/e$a;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/common/api/internal/bl;->b:I

    if-eq v1, v2, :cond_6

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/bl;->a:Lcom/google/android/gms/common/api/internal/ar;

    sget-object v1, Lcom/google/android/gms/common/api/internal/e;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/ar;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/e$a;->a()V

    return v3

    :cond_6
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/bl;->a:Lcom/google/android/gms/common/api/internal/ar;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/e$a;->a(Lcom/google/android/gms/common/api/internal/ar;)V

    return v3

    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/e$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/e$a;->d()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/e$a;->i()V

    goto :goto_3

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/ci;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ci;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/cg;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/e$a;

    if-nez v2, :cond_7

    new-instance v0, Lcom/google/android/gms/common/b;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/b;-><init>(I)V

    invoke-virtual {p1, v1, v0, v4}, Lcom/google/android/gms/common/api/internal/ci;->a(Lcom/google/android/gms/common/api/internal/cg;Lcom/google/android/gms/common/b;Ljava/lang/String;)V

    return v3

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/e$a;->j()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/google/android/gms/common/b;->a:Lcom/google/android/gms/common/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/e$a;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/google/android/gms/common/api/internal/ci;->a(Lcom/google/android/gms/common/api/internal/cg;Lcom/google/android/gms/common/b;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/e$a;->e()Lcom/google/android/gms/common/b;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/e$a;->e()Lcom/google/android/gms/common/b;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Lcom/google/android/gms/common/api/internal/ci;->a(Lcom/google/android/gms/common/api/internal/cg;Lcom/google/android/gms/common/b;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/e$a;->a(Lcom/google/android/gms/common/api/internal/ci;)V

    goto :goto_4

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    const-wide/16 v1, 0x2710

    :cond_a
    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/e;->e:J

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/cg;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/e;->q:Landroid/os/Handler;

    invoke-virtual {v4, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/e;->e:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_b
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
