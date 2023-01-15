.class public final Lcom/google/android/gms/internal/bei;
.super Lcom/google/android/gms/internal/avk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Lcom/google/android/gms/internal/bcy;

.field private d:Lcom/google/android/gms/ads/internal/l;

.field private final e:Lcom/google/android/gms/internal/bea;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bcy;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/bcy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bfw;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/ads/internal/br;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/bei;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/bcy;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/bcy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/avk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bei;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/bei;->c:Lcom/google/android/gms/internal/bcy;

    new-instance p1, Lcom/google/android/gms/internal/bea;

    invoke-direct {p1}, Lcom/google/android/gms/internal/bea;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->r()Lcom/google/android/gms/internal/bed;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/bed;->a(Lcom/google/android/gms/internal/bcy;)V

    return-void
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->c:Lcom/google/android/gms/internal/bcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/bei;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bcy;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iget-object v1, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bea;->a(Lcom/google/android/gms/ads/internal/l;)V

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAdUnitId not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final D()Lcom/google/android/gms/internal/avo;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAppEventListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final E()Lcom/google/android/gms/internal/auy;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAdListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bei;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->c(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->F()V

    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/auh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/auh;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/auv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iput-object p1, v0, Lcom/google/android/gms/internal/bea;->d:Lcom/google/android/gms/internal/auv;

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bea;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/auy;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iput-object p1, v0, Lcom/google/android/gms/internal/bea;->a:Lcom/google/android/gms/internal/auy;

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bea;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/avo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iput-object p1, v0, Lcom/google/android/gms/internal/bea;->b:Lcom/google/android/gms/internal/avo;

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bea;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/avv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bei;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/avv;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/awj;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/axc;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getVideoController not implemented for interstitials"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ayn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iput-object p1, v0, Lcom/google/android/gms/internal/bea;->c:Lcom/google/android/gms/internal/ayn;

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bea;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/big;)V
    .locals 0

    const-string p1, "setInAppPurchaseListener is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bin;Ljava/lang/String;)V
    .locals 0

    const-string p1, "setPlayStorePurchaseParams is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ej;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iput-object p1, v0, Lcom/google/android/gms/internal/bea;->e:Lcom/google/android/gms/internal/ej;

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bea;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bei;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/aud;)Z
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/bed;->a(Lcom/google/android/gms/internal/aud;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "gw"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bei;->c()V

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/bed;->a(Lcom/google/android/gms/internal/aud;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "_skipMediation"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bei;->c()V

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/aud;->j:Lcom/google/android/gms/internal/awy;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/bei;->c()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/aud;)Z

    move-result p1

    return p1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->r()Lcom/google/android/gms/internal/bed;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/bed;->a(Lcom/google/android/gms/internal/aud;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "_ad"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/bei;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/bed;->b(Lcom/google/android/gms/internal/aud;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/bei;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/bed;->a(Lcom/google/android/gms/internal/aud;Ljava/lang/String;)Lcom/google/android/gms/internal/beg;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean p1, v0, Lcom/google/android/gms/internal/beg;->e:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/beg;->a()Z

    invoke-static {}, Lcom/google/android/gms/internal/beh;->a()Lcom/google/android/gms/internal/beh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/beh;->e()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/beh;->a()Lcom/google/android/gms/internal/beh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/beh;->d()V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/beg;->a:Lcom/google/android/gms/ads/internal/l;

    iput-object p1, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    iget-object p1, v0, Lcom/google/android/gms/internal/beg;->c:Lcom/google/android/gms/internal/bcz;

    iget-object v1, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/bcz;->a(Lcom/google/android/gms/internal/bea;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/bei;->e:Lcom/google/android/gms/internal/bea;

    iget-object v1, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/bea;->a(Lcom/google/android/gms/ads/internal/l;)V

    iget-boolean p1, v0, Lcom/google/android/gms/internal/beg;->f:Z

    return p1

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/bei;->c()V

    invoke-static {}, Lcom/google/android/gms/internal/beh;->a()Lcom/google/android/gms/internal/beh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/beh;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/aud;)Z

    move-result p1

    return p1
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bei;->b:Z

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->j()V

    :cond_0
    return-void
.end method

.method public final k()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->k()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/auh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->l()Lcom/google/android/gms/internal/auh;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->n()V

    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->o()V

    :cond_0
    return-void
.end method

.method public final o_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/az;->o_()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->p()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->q()V

    :cond_0
    return-void
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bei;->d:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Lcom/google/android/gms/internal/awd;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
