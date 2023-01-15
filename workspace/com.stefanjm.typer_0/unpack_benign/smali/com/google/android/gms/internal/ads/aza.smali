.class final Lcom/google/android/gms/internal/ads/aza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/azb;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/azc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ayb;Lcom/google/android/gms/internal/ads/azb;Lcom/google/android/gms/internal/ads/azc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aza;->a:Lcom/google/android/gms/internal/ads/azb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aza;->b:Lcom/google/android/gms/internal/ads/azc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aza;->a:Lcom/google/android/gms/internal/ads/azb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->b:Lcom/google/android/gms/internal/ads/azc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/azb;->a(Lcom/google/android/gms/internal/ads/azc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
