.class final Lcom/google/android/gms/ads/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bbc;

.field private synthetic b:Lcom/google/android/gms/ads/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ad;Lcom/google/android/gms/internal/bbc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ak;->b:Lcom/google/android/gms/ads/internal/ad;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ak;->a:Lcom/google/android/gms/internal/bbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ak;->a:Lcom/google/android/gms/internal/bbc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bbc;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ak;->b:Lcom/google/android/gms/ads/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ad;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/aw;->u:Landroid/support/v4/g/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bbq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ak;->a:Lcom/google/android/gms/internal/bbc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bbq;->a(Lcom/google/android/gms/internal/bbc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
