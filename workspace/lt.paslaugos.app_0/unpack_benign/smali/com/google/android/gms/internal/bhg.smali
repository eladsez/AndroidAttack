.class final Lcom/google/android/gms/internal/bhg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/n;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzxx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bhg;->a:Lcom/google/android/gms/internal/zzxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bhg;->a:Lcom/google/android/gms/internal/zzxx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxx;->a(Lcom/google/android/gms/internal/zzxx;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bhg;->a:Lcom/google/android/gms/internal/zzxx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/d;->b(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final n_()V
    .locals 2

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/kj;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bhg;->a:Lcom/google/android/gms/internal/zzxx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxx;->a(Lcom/google/android/gms/internal/zzxx;)Lcom/google/android/gms/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bhg;->a:Lcom/google/android/gms/internal/zzxx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/d;->c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method