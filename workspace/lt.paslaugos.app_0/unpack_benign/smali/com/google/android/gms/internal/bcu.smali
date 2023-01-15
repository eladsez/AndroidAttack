.class final Lcom/google/android/gms/internal/bcu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/an;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bcs;

.field private synthetic b:Lcom/google/android/gms/internal/lq;

.field private synthetic c:Lcom/google/android/gms/internal/bcl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bcs;Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/bcl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bcu;->a:Lcom/google/android/gms/internal/bcs;

    iput-object p2, p0, Lcom/google/android/gms/internal/bcu;->b:Lcom/google/android/gms/internal/lq;

    iput-object p3, p0, Lcom/google/android/gms/internal/bcu;->c:Lcom/google/android/gms/internal/bcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/bcu;->a:Lcom/google/android/gms/internal/bcs;

    invoke-static {p1}, Lcom/google/android/gms/internal/bcs;->b(Lcom/google/android/gms/internal/bcs;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bcu;->a:Lcom/google/android/gms/internal/bcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcs;->c(Lcom/google/android/gms/internal/bcs;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bcu;->a:Lcom/google/android/gms/internal/bcs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bcs;->a(Lcom/google/android/gms/internal/bcs;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bcu;->a:Lcom/google/android/gms/internal/bcs;

    invoke-static {v0}, Lcom/google/android/gms/internal/bcs;->d(Lcom/google/android/gms/internal/bcs;)Lcom/google/android/gms/internal/bck;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/bcv;

    iget-object v2, p0, Lcom/google/android/gms/internal/bcu;->b:Lcom/google/android/gms/internal/lq;

    iget-object v3, p0, Lcom/google/android/gms/internal/bcu;->c:Lcom/google/android/gms/internal/bcl;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/bcv;-><init>(Lcom/google/android/gms/internal/bcu;Lcom/google/android/gms/internal/bck;Lcom/google/android/gms/internal/lq;Lcom/google/android/gms/internal/bcl;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/hm;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bcu;->b:Lcom/google/android/gms/internal/lq;

    new-instance v2, Lcom/google/android/gms/internal/bcw;

    iget-object v3, p0, Lcom/google/android/gms/internal/bcu;->b:Lcom/google/android/gms/internal/lq;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/bcw;-><init>(Lcom/google/android/gms/internal/lq;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/lk;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
