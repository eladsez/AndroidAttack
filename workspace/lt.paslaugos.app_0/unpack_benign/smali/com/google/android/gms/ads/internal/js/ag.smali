.class final Lcom/google/android/gms/ads/internal/js/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/js/f;

.field private synthetic b:Lcom/google/android/gms/ads/internal/js/o;

.field private synthetic c:Lcom/google/android/gms/ads/internal/js/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/z;Lcom/google/android/gms/ads/internal/js/f;Lcom/google/android/gms/ads/internal/js/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/ag;->c:Lcom/google/android/gms/ads/internal/js/z;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/ag;->a:Lcom/google/android/gms/ads/internal/js/f;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/ag;->b:Lcom/google/android/gms/ads/internal/js/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/ag;->c:Lcom/google/android/gms/ads/internal/js/z;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/z;->a(Lcom/google/android/gms/ads/internal/js/z;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/ag;->a:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lw;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/ag;->a:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lw;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/ag;->a:Lcom/google/android/gms/ads/internal/js/f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lw;->d()V

    sget-object v1, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/ag;->b:Lcom/google/android/gms/ads/internal/js/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/js/ah;->a(Lcom/google/android/gms/ads/internal/js/o;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
