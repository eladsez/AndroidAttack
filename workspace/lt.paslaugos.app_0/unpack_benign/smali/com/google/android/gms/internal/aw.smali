.class final Lcom/google/android/gms/internal/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ls;

.field private synthetic b:Lcom/google/android/gms/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/ls;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/internal/an;

    iput-object p2, p0, Lcom/google/android/gms/internal/aw;->a:Lcom/google/android/gms/internal/ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/internal/an;

    invoke-static {v0}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/an;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/internal/an;

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/internal/an;

    iget-object v3, p0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/internal/an;

    invoke-static {v3}, Lcom/google/android/gms/internal/an;->b(Lcom/google/android/gms/internal/an;)Lcom/google/android/gms/internal/bk;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/bk;->j:Lcom/google/android/gms/internal/km;

    iget-object v4, p0, Lcom/google/android/gms/internal/aw;->a:Lcom/google/android/gms/internal/ls;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/il;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/an;->a:Lcom/google/android/gms/internal/il;

    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/internal/an;

    iget-object v1, v1, Lcom/google/android/gms/internal/an;->a:Lcom/google/android/gms/internal/il;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/internal/an;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/an;ILjava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/internal/an;

    invoke-static {v2}, Lcom/google/android/gms/internal/an;->c(Lcom/google/android/gms/internal/an;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method