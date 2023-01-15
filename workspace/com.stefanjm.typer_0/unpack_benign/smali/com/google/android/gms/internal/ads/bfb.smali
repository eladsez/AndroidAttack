.class final Lcom/google/android/gms/internal/ads/bfb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/n;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfb;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfb;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzv;->a(Lcom/google/android/gms/internal/ads/zzzv;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfb;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/d;->b(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final t_()V
    .locals 2

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfb;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzv;->a(Lcom/google/android/gms/internal/ads/zzzv;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfb;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/d;->c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
