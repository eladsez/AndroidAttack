.class final Lcom/google/android/gms/internal/e/ej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/dz;

.field private final synthetic b:Lcom/google/android/gms/internal/e/ee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/ee;Lcom/google/android/gms/internal/e/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/ej;->b:Lcom/google/android/gms/internal/e/ee;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/ej;->a:Lcom/google/android/gms/internal/e/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->d(Lcom/google/android/gms/internal/e/ee;)Lcom/google/android/gms/internal/e/ar;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->a:Lcom/google/android/gms/internal/e/dz;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/e/ar;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->a:Lcom/google/android/gms/internal/e/dz;

    iget-wide v2, v0, Lcom/google/android/gms/internal/e/dz;->c:J

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->a:Lcom/google/android/gms/internal/e/dz;

    iget-object v4, v0, Lcom/google/android/gms/internal/e/dz;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->a:Lcom/google/android/gms/internal/e/dz;

    iget-object v5, v0, Lcom/google/android/gms/internal/e/dz;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/e/ej;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-static {v0}, Lcom/google/android/gms/internal/e/ee;->e(Lcom/google/android/gms/internal/e/ee;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/ej;->b:Lcom/google/android/gms/internal/e/ee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->t()Lcom/google/android/gms/internal/e/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/az;->y()Lcom/google/android/gms/internal/e/bb;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/e/bb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
