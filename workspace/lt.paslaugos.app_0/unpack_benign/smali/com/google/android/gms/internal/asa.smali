.class final Lcom/google/android/gms/internal/asa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/ao;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/arw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/arw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/asa;->a:Lcom/google/android/gms/internal/arw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/asa;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {p1}, Lcom/google/android/gms/internal/arw;->c(Lcom/google/android/gms/internal/arw;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/asa;->a:Lcom/google/android/gms/internal/arw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/arw;->a(Lcom/google/android/gms/internal/arw;Lcom/google/android/gms/internal/ash;)Lcom/google/android/gms/internal/ash;

    iget-object v0, p0, Lcom/google/android/gms/internal/asa;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {v0}, Lcom/google/android/gms/internal/arw;->d(Lcom/google/android/gms/internal/arw;)Lcom/google/android/gms/internal/asd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/asa;->a:Lcom/google/android/gms/internal/arw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/arw;->a(Lcom/google/android/gms/internal/arw;Lcom/google/android/gms/internal/asd;)Lcom/google/android/gms/internal/asd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/asa;->a:Lcom/google/android/gms/internal/arw;

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
