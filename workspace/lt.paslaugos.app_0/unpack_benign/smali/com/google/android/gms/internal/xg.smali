.class final Lcom/google/android/gms/internal/xg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/sw;

.field private synthetic b:Lcom/google/android/gms/internal/wz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/sw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xg;->b:Lcom/google/android/gms/internal/wz;

    iput-object p2, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->b:Lcom/google/android/gms/internal/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/wz;->d(Lcom/google/android/gms/internal/wz;)Lcom/google/android/gms/internal/tt;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->b:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v0

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/tt;->b(Lcom/google/android/gms/internal/sw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xg;->b:Lcom/google/android/gms/internal/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/wz;->e(Lcom/google/android/gms/internal/wz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xg;->b:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->t()Lcom/google/android/gms/internal/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ub;->y()Lcom/google/android/gms/internal/ud;

    move-result-object v1

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ud;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
