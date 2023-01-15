.class final Lcom/google/android/gms/internal/ads/axw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/f$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/axu;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/nz;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/axo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/axu;Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/axo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/axu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/nz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lcom/google/android/gms/internal/ads/axo;

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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/axu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/axu;->b(Lcom/google/android/gms/internal/ads/axu;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/axu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/axu;->c(Lcom/google/android/gms/internal/ads/axu;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/axu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/axu;->a(Lcom/google/android/gms/internal/ads/axu;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/axu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/axu;->d(Lcom/google/android/gms/internal/ads/axu;)Lcom/google/android/gms/internal/ads/axn;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/axx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/nz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lcom/google/android/gms/internal/ads/axo;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/axx;-><init>(Lcom/google/android/gms/internal/ads/axw;Lcom/google/android/gms/internal/ads/axn;Lcom/google/android/gms/internal/ads/nz;Lcom/google/android/gms/internal/ads/axo;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/no;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/nz;

    new-instance v2, Lcom/google/android/gms/internal/ads/axy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/nz;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/axy;-><init>(Lcom/google/android/gms/internal/ads/nz;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/nu;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/nz;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
