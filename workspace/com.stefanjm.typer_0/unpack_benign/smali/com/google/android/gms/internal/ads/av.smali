.class final Lcom/google/android/gms/internal/ads/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/au;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/au;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/av;->b:Lcom/google/android/gms/internal/ads/au;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/av;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/av;->b:Lcom/google/android/gms/internal/ads/au;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/au;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/av;->b:Lcom/google/android/gms/internal/ads/au;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/av;->b:Lcom/google/android/gms/internal/ads/au;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/au;->a(Lcom/google/android/gms/internal/ads/au;)Lcom/google/android/gms/internal/ads/qo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/av;->b:Lcom/google/android/gms/internal/ads/au;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/au;->g:Lcom/google/android/gms/internal/ads/bcr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/av;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/internal/ads/qo;Lcom/google/android/gms/internal/ads/bcr;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/au;->a(Lcom/google/android/gms/internal/ads/au;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
