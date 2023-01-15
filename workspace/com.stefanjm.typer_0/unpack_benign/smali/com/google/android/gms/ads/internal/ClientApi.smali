.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/aql;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aql;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdLoaderBuilder(Lcom/google/android/gms/b/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;I)Lcom/google/android/gms/internal/ads/apt;
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/ads/mv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jw;->k(Landroid/content/Context;)Z

    move-result p1

    const v0, 0xbdfcb8

    const/4 v2, 0x1

    invoke-direct {v4, v0, p4, v2, p1}, Lcom/google/android/gms/internal/ads/mv;-><init>(IIZZ)V

    new-instance p1, Lcom/google/android/gms/ads/internal/l;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bu;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/bu;

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    return-object p1
.end method

.method public createAdOverlay(Lcom/google/android/gms/b/a;)Lcom/google/android/gms/internal/ads/r;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;)V

    return-object v0

    :pswitch_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/s;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/y;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/y;-><init>(Landroid/app/Activity;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/x;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/x;-><init>(Landroid/app/Activity;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>(Landroid/app/Activity;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createBannerAdManager(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;I)Lcom/google/android/gms/internal/ads/apy;
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ads/mv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jw;->k(Landroid/content/Context;)Z

    move-result p1

    const v0, 0xbdfcb8

    const/4 v2, 0x1

    invoke-direct {v5, v0, p5, v2, p1}, Lcom/google/android/gms/internal/ads/mv;-><init>(IIZZ)V

    new-instance p1, Lcom/google/android/gms/ads/internal/bw;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bu;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/bu;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/bw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    return-object p1
.end method

.method public createInAppPurchaseManager(Lcom/google/android/gms/b/a;)Lcom/google/android/gms/internal/ads/ab;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createInterstitialAdManager(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;I)Lcom/google/android/gms/internal/ads/apy;
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/asr;->a(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/mv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jw;->k(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    const v2, 0xbdfcb8

    invoke-direct {v5, v2, p5, v0, p1}, Lcom/google/android/gms/internal/ads/mv;-><init>(IIZZ)V

    const-string p1, "reward_mb"

    iget-object p5, p2, Lcom/google/android/gms/internal/ads/aou;->a:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p5, Lcom/google/android/gms/internal/ads/asr;->aT:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/asr;->aU:Lcom/google/android/gms/internal/ads/ash;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->f()Lcom/google/android/gms/internal/ads/asp;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/asp;->a(Lcom/google/android/gms/internal/ads/ash;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/azl;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bu;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/bu;

    move-result-object p2

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, v5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/azl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/ads/internal/m;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/bu;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/bu;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;Lcom/google/android/gms/ads/internal/bu;)V

    return-object p1
.end method

.method public createNativeAdViewDelegate(Lcom/google/android/gms/b/a;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/internal/ads/avk;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/android/gms/internal/ads/auw;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/auw;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public createNativeAdViewHolderDelegate(Lcom/google/android/gms/b/a;Lcom/google/android/gms/b/a;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/internal/ads/avp;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/auy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/auy;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public createRewardedVideoAd(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/bda;I)Lcom/google/android/gms/internal/ads/gh;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/ads/mv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jw;->k(Landroid/content/Context;)Z

    move-result v1

    const v2, 0xbdfcb8

    const/4 v3, 0x1

    invoke-direct {v0, v2, p3, v3, v1}, Lcom/google/android/gms/internal/ads/mv;-><init>(IIZZ)V

    new-instance p3, Lcom/google/android/gms/internal/ads/fy;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/bu;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/bu;

    move-result-object v1

    invoke-direct {p3, p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/fy;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/bu;Lcom/google/android/gms/internal/ads/bda;Lcom/google/android/gms/internal/ads/mv;)V

    return-object p3
.end method

.method public createSearchAdManager(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/apy;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/ads/mv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jw;->k(Landroid/content/Context;)Z

    move-result v1

    const v2, 0xbdfcb8

    const/4 v3, 0x1

    invoke-direct {v0, v2, p4, v3, v1}, Lcom/google/android/gms/internal/ads/mv;-><init>(IIZZ)V

    new-instance p4, Lcom/google/android/gms/ads/internal/ar;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/ar;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mv;)V

    return-object p4
.end method

.method public getMobileAdsSettingsManager(Lcom/google/android/gms/b/a;)Lcom/google/android/gms/internal/ads/aqq;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/b/a;I)Lcom/google/android/gms/internal/ads/aqq;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/ads/mv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->e()Lcom/google/android/gms/internal/ads/jw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jw;->k(Landroid/content/Context;)Z

    move-result v1

    const v2, 0xbdfcb8

    const/4 v3, 0x1

    invoke-direct {v0, v2, p2, v3, v1}, Lcom/google/android/gms/internal/ads/mv;-><init>(IIZZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/z;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mv;)Lcom/google/android/gms/ads/internal/z;

    move-result-object p1

    return-object p1
.end method
