.class public final Lcom/google/android/gms/internal/bgv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/c;
.implements Lcom/google/android/gms/ads/mediation/d;
.implements Lcom/google/android/gms/ads/mediation/e;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/bgc;

.field private b:Lcom/google/android/gms/ads/mediation/f;

.field private c:Lcom/google/android/gms/ads/mediation/l;

.field private d:Lcom/google/android/gms/ads/b/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    return-void
.end method

.method private static a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/l;Lcom/google/android/gms/ads/mediation/f;)V
    .locals 0

    instance-of p0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/ads/i;

    invoke-direct {p0}, Lcom/google/android/gms/ads/i;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/bgs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/bgs;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/internal/awd;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/f;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p0}, Lcom/google/android/gms/ads/mediation/f;->a(Lcom/google/android/gms/ads/i;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/mediation/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bgv;->b:Lcom/google/android/gms/ads/mediation/f;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdLoaded must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLoaded."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
    .locals 1

    const-string p1, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/bgc;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdFailedToLoad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "onAppEvent must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAppEvent."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/bgc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAppEvent."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdLoaded must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLoaded."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .locals 1

    const-string p1, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/bgc;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdFailedToLoad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "onAdOpened must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdOpened."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .locals 1

    const-string p1, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/bgc;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdFailedToLoad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/b/i;)V
    .locals 2

    const-string p1, "onAdLoaded must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded with template id "

    invoke-interface {p2}, Lcom/google/android/gms/ads/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bgv;->d:Lcom/google/android/gms/ads/b/i;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdLoaded."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/b/i;Ljava/lang/String;)V
    .locals 0

    instance-of p1, p2, Lcom/google/android/gms/internal/bbf;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    check-cast p2, Lcom/google/android/gms/internal/bbf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/bbf;->b()Lcom/google/android/gms/internal/bbc;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/bgc;->a(Lcom/google/android/gms/internal/bbc;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onCustomClick."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Unexpected native custom template ad type."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/f;)V
    .locals 1

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bgv;->b:Lcom/google/android/gms/ads/mediation/f;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/bgv;->c:Lcom/google/android/gms/ads/mediation/l;

    iget-object p2, p0, Lcom/google/android/gms/internal/bgv;->c:Lcom/google/android/gms/ads/mediation/l;

    iget-object v0, p0, Lcom/google/android/gms/internal/bgv;->b:Lcom/google/android/gms/ads/mediation/f;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/bgv;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/l;Lcom/google/android/gms/ads/mediation/f;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdLoaded."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/l;)V
    .locals 1

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bgv;->c:Lcom/google/android/gms/ads/mediation/l;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/bgv;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object p2, p0, Lcom/google/android/gms/internal/bgv;->c:Lcom/google/android/gms/ads/mediation/l;

    iget-object v0, p0, Lcom/google/android/gms/internal/bgv;->b:Lcom/google/android/gms/ads/mediation/f;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/bgv;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/l;Lcom/google/android/gms/ads/mediation/f;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdLoaded."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/ads/mediation/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bgv;->c:Lcom/google/android/gms/ads/mediation/l;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdOpened must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdOpened."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdOpened must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdOpened."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "onAdClosed must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClosed."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()Lcom/google/android/gms/ads/b/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bgv;->d:Lcom/google/android/gms/ads/b/i;

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdClosed must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClosed."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdClosed must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClosed."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLeftApplication."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLeftApplication."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLeftApplication."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 2

    const-string p1, "onAdClicked must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/bgv;->c:Lcom/google/android/gms/ads/mediation/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/bgv;->d:Lcom/google/android/gms/ads/b/i;

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const-string p1, "Could not call onAdClicked since mapper is null."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/f;->b()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClicked."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdClicked must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClicked."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdClicked must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClicked."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 2

    const-string p1, "onAdImpression must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/bgv;->c:Lcom/google/android/gms/ads/mediation/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/bgv;->d:Lcom/google/android/gms/ads/b/i;

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const-string p1, "Could not call onAdImpression since AdMapper is null. "

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/l;->m()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/f;->a()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Adapter called onAdImpression."

    invoke-static {p1}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/bgv;->a:Lcom/google/android/gms/internal/bgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bgc;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdImpression."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
