.class final Lcom/google/android/gms/internal/ads/amm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/f$b;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ami;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ami;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amm;->a:Lcom/google/android/gms/internal/ads/ami;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/amm;->a:Lcom/google/android/gms/internal/ads/ami;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ami;->c(Lcom/google/android/gms/internal/ads/ami;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amm;->a:Lcom/google/android/gms/internal/ads/ami;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ami;->a(Lcom/google/android/gms/internal/ads/ami;Lcom/google/android/gms/internal/ads/amt;)Lcom/google/android/gms/internal/ads/amt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amm;->a:Lcom/google/android/gms/internal/ads/ami;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ami;->d(Lcom/google/android/gms/internal/ads/ami;)Lcom/google/android/gms/internal/ads/amp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amm;->a:Lcom/google/android/gms/internal/ads/ami;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ami;->a(Lcom/google/android/gms/internal/ads/ami;Lcom/google/android/gms/internal/ads/amp;)Lcom/google/android/gms/internal/ads/amp;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amm;->a:Lcom/google/android/gms/internal/ads/ami;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ami;->c(Lcom/google/android/gms/internal/ads/ami;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
