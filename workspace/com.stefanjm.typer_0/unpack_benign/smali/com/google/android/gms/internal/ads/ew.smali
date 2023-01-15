.class final Lcom/google/android/gms/internal/ads/ew;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dl;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dw;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/eu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eu;Lcom/google/android/gms/internal/ads/dl;Lcom/google/android/gms/internal/ads/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ew;->c:Lcom/google/android/gms/internal/ads/eu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ew;->a:Lcom/google/android/gms/internal/ads/dl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ew;->b:Lcom/google/android/gms/internal/ads/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ew;->c:Lcom/google/android/gms/internal/ads/eu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ew;->a:Lcom/google/android/gms/internal/ads/dl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eu;->a(Lcom/google/android/gms/internal/ads/dl;)Lcom/google/android/gms/internal/ads/dp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v1

    const-string v2, "AdRequestServiceImpl.loadAdAsync"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not fetch ad response due to an Exception."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/dp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dp;-><init>(I)V

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ew;->b:Lcom/google/android/gms/internal/ads/dw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dw;->a(Lcom/google/android/gms/internal/ads/dp;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Fail to forward ad response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
