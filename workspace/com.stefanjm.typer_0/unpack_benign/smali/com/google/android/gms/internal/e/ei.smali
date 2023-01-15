.class final Lcom/google/android/gms/internal/e/ei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/v;

.field private final synthetic b:Lcom/google/android/gms/internal/e/ee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ee;Lcom/google/android/gms/internal/e/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ei;->b:Lcom/google/android/gms/internal/e/ee;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/ei;->a:Lcom/google/android/gms/internal/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ei;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->d(Lcom/google/android/gms/internal/e/ee;)Lcom/google/android/gms/internal/e/ar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ei;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send app launch"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/e/ei;->a:Lcom/google/android/gms/internal/e/v;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/e/ar;->a(Lcom/google/android/gms/internal/e/v;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ei;->b:Lcom/google/android/gms/internal/e/ee;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/e/ei;->a:Lcom/google/android/gms/internal/e/v;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/e/ee;->a(Lcom/google/android/gms/internal/e/ar;Lcom/google/android/gms/common/internal/a/a;Lcom/google/android/gms/internal/e/v;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ei;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->e(Lcom/google/android/gms/internal/e/ee;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ei;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
