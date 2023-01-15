.class final Lcom/google/android/gms/internal/arz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/an;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/arw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/arw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {p1}, Lcom/google/android/gms/internal/arw;->c(Lcom/google/android/gms/internal/arw;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/arw;->a(Lcom/google/android/gms/internal/arw;Lcom/google/android/gms/internal/ash;)Lcom/google/android/gms/internal/ash;

    iget-object v0, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {v0}, Lcom/google/android/gms/internal/arw;->c(Lcom/google/android/gms/internal/arw;)Ljava/lang/Object;

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

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {p1}, Lcom/google/android/gms/internal/arw;->c(Lcom/google/android/gms/internal/arw;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {v0}, Lcom/google/android/gms/internal/arw;->d(Lcom/google/android/gms/internal/arw;)Lcom/google/android/gms/internal/asd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    iget-object v1, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {v1}, Lcom/google/android/gms/internal/arw;->d(Lcom/google/android/gms/internal/arw;)Lcom/google/android/gms/internal/asd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/asd;->g()Lcom/google/android/gms/internal/ash;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/arw;->a(Lcom/google/android/gms/internal/arw;Lcom/google/android/gms/internal/ash;)Lcom/google/android/gms/internal/ash;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {v0}, Lcom/google/android/gms/internal/arw;->a(Lcom/google/android/gms/internal/arw;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/arz;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {v0}, Lcom/google/android/gms/internal/arw;->c(Lcom/google/android/gms/internal/arw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
