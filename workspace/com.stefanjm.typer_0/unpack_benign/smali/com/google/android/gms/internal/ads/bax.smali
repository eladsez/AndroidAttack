.class final Lcom/google/android/gms/internal/ads/bax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bbh;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bae;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/baq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/baq;Lcom/google/android/gms/internal/ads/bbh;Lcom/google/android/gms/internal/ads/bae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bax;->c:Lcom/google/android/gms/internal/ads/baq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bax;->a:Lcom/google/android/gms/internal/ads/bbh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bax;->b:Lcom/google/android/gms/internal/ads/bae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bax;->c:Lcom/google/android/gms/internal/ads/baq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/baq;->a(Lcom/google/android/gms/internal/ads/baq;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bax;->a:Lcom/google/android/gms/internal/ads/bbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/of;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bax;->a:Lcom/google/android/gms/internal/ads/bbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/of;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bax;->a:Lcom/google/android/gms/internal/ads/bbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/of;->a()V

    sget-object v1, Lcom/google/android/gms/internal/ads/nu;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bax;->b:Lcom/google/android/gms/internal/ads/bae;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bay;->a(Lcom/google/android/gms/internal/ads/bae;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

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
