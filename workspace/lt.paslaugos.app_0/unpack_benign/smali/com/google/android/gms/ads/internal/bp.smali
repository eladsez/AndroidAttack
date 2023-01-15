.class final Lcom/google/android/gms/ads/internal/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ayy;

.field private synthetic b:Lcom/google/android/gms/ads/internal/bm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/bm;Lcom/google/android/gms/internal/ayy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bp;->b:Lcom/google/android/gms/ads/internal/bm;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bp;->a:Lcom/google/android/gms/internal/ayy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bp;->b:Lcom/google/android/gms/ads/internal/bm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/bp;->b:Lcom/google/android/gms/ads/internal/bm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/bm;->e:Lcom/google/android/gms/ads/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/aw;->r:Lcom/google/android/gms/internal/bbj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/bp;->a:Lcom/google/android/gms/internal/ayy;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bbj;->a(Lcom/google/android/gms/internal/bay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnContentAdLoadedListener.onContentAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
