.class final Lcom/google/android/gms/internal/ads/iz;
.super Lcom/google/android/gms/internal/ads/ji;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iz;->a:Lcom/google/android/gms/internal/ads/ix;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ji;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/ast;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz;->a:Lcom/google/android/gms/internal/ads/ix;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ix;->a(Lcom/google/android/gms/internal/ads/ix;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iz;->a:Lcom/google/android/gms/internal/ads/ix;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ix;->b(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/mv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mv;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz;->a:Lcom/google/android/gms/internal/ads/ix;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ix;->c(Lcom/google/android/gms/internal/ads/ix;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->n()Lcom/google/android/gms/internal/ads/asw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/iz;->a:Lcom/google/android/gms/internal/ads/ix;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ix;->d(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/asu;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/asw;->a(Lcom/google/android/gms/internal/ads/asu;Lcom/google/android/gms/internal/ads/ast;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b_()V
    .locals 0

    return-void
.end method
