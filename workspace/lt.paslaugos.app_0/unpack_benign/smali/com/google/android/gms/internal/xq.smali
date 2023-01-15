.class final Lcom/google/android/gms/internal/xq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/tt;

.field private synthetic b:Lcom/google/android/gms/internal/xn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xn;Lcom/google/android/gms/internal/tt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xq;->b:Lcom/google/android/gms/internal/xn;

    iput-object p2, p0, Lcom/google/android/gms/internal/xq;->a:Lcom/google/android/gms/internal/tt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/xq;->b:Lcom/google/android/gms/internal/xn;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/xq;->b:Lcom/google/android/gms/internal/xn;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xn;->a(Lcom/google/android/gms/internal/xn;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/xq;->b:Lcom/google/android/gms/internal/xn;

    iget-object v1, v1, Lcom/google/android/gms/internal/xn;->a:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wz;->y()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/xq;->b:Lcom/google/android/gms/internal/xn;

    iget-object v1, v1, Lcom/google/android/gms/internal/xn;->a:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->D()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/xq;->b:Lcom/google/android/gms/internal/xn;

    iget-object v1, v1, Lcom/google/android/gms/internal/xn;->a:Lcom/google/android/gms/internal/wz;

    iget-object v2, p0, Lcom/google/android/gms/internal/xq;->a:Lcom/google/android/gms/internal/tt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wz;->a(Lcom/google/android/gms/internal/tt;)V

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
