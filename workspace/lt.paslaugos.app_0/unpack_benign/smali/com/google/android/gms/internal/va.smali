.class final Lcom/google/android/gms/internal/va;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/va;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Z

.field private final b:J

.field private final c:Ljava/lang/String;

.field private synthetic d:Lcom/google/android/gms/internal/ux;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ux;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/va;->d:Lcom/google/android/gms/internal/ux;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ux;->B()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/gms/internal/va;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/va;->c:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/va;->a:Z

    iget-wide p2, p0, Lcom/google/android/gms/internal/va;->b:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ux;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/va;->d:Lcom/google/android/gms/internal/ux;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ux;->B()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/va;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/va;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/va;->a:Z

    iget-wide p2, p0, Lcom/google/android/gms/internal/va;->b:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/va;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/va;->a:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/va;->a:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/va;->a:Z

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/va;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/va;->b:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    return v3

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/va;->b:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/va;->b:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/va;->d:Lcom/google/android/gms/internal/ux;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ub;->z()Lcom/google/android/gms/internal/ud;

    move-result-object p1

    const-string v0, "Two tasks share the same index. index"

    iget-wide v1, p0, Lcom/google/android/gms/internal/va;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/va;->d:Lcom/google/android/gms/internal/ux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/va;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/uy;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
