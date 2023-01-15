.class final Lcom/google/android/gms/internal/e/et;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/ar;

.field private final synthetic b:Lcom/google/android/gms/internal/e/es;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/es;Lcom/google/android/gms/internal/e/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/et;->b:Lcom/google/android/gms/internal/e/es;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/et;->a:Lcom/google/android/gms/internal/e/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/et;->b:Lcom/google/android/gms/internal/e/es;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/e/et;->b:Lcom/google/android/gms/internal/e/es;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/e/es;->a(Lcom/google/android/gms/internal/e/es;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/e/et;->b:Lcom/google/android/gms/internal/e/es;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/es;->a:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/ee;->y()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/et;->b:Lcom/google/android/gms/internal/e/es;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/es;->a:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->E()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/et;->b:Lcom/google/android/gms/internal/e/es;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/es;->a:Lcom/google/android/gms/internal/e/ee;

    iget-object v2, p0, Lcom/google/android/gms/internal/e/et;->a:Lcom/google/android/gms/internal/e/ar;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/e/ee;->a(Lcom/google/android/gms/internal/e/ar;)V

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
