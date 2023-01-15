.class public final Lcom/google/android/gms/internal/ads/bed;
.super Lcom/google/android/gms/internal/ads/bde;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/f;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/e;",
        ">",
        "Lcom/google/android/gms/internal/ads/bde;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/mediation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/mediation/b<",
            "TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/mediation/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNETWORK_EXTRAS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/b;Lcom/google/ads/mediation/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/b<",
            "TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;TNETWORK_EXTRAS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bde;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bed;->b:Lcom/google/ads/mediation/f;

    return-void
.end method

.method private final a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TSERVER_PARAMETERS;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    invoke-interface {p2}, Lcom/google/ads/mediation/b;->getServerParametersType()Ljava/lang/Class;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/google/ads/mediation/e;

    invoke-virtual {p3, p1}, Lcom/google/ads/mediation/e;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p3

    :goto_1
    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method private static a(Lcom/google/android/gms/internal/ads/aoq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/aoq;->f:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->a()Lcom/google/android/gms/internal/ads/mi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/mi;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/b/a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_1

    const-string v0, "Not a MediationBannerAdapter: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/b/a;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bdg;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bed;->a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bdg;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hm;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bdg;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_1

    const-string p1, "Not a MediationInterstitialAdapter: "

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mt;->e(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_1
    const-string v0, "Requesting interstitial ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    move-object v1, v0

    check-cast v1, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    new-instance v2, Lcom/google/android/gms/internal/ads/bee;

    invoke-direct {v2, p5}, Lcom/google/android/gms/internal/ads/bee;-><init>(Lcom/google/android/gms/internal/ads/bdg;)V

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iget p1, p2, Lcom/google/android/gms/internal/ads/aoq;->g:I

    invoke-direct {p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/bed;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/e;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bed;->a(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/bei;->a(Lcom/google/android/gms/internal/ads/aoq;Z)Lcom/google/ads/mediation/a;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bed;->b:Lcom/google/ads/mediation/f;

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/e;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bdg;Lcom/google/android/gms/internal/ads/auu;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/a;",
            "Lcom/google/android/gms/internal/ads/aoq;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bdg;",
            "Lcom/google/android/gms/internal/ads/auu;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bdg;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bed;->a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bdg;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bdg;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_1

    const-string p1, "Not a MediationBannerAdapter: "

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mt;->e(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_1
    const-string v0, "Requesting banner ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    move-object v1, v0

    check-cast v1, Lcom/google/ads/mediation/MediationBannerAdapter;

    new-instance v2, Lcom/google/android/gms/internal/ads/bee;

    invoke-direct {v2, p6}, Lcom/google/android/gms/internal/ads/bee;-><init>(Lcom/google/android/gms/internal/ads/bdg;)V

    invoke-static {p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iget p1, p3, Lcom/google/android/gms/internal/ads/aoq;->g:I

    invoke-direct {p0, p4, p1, p5}, Lcom/google/android/gms/internal/ads/bed;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/e;

    move-result-object v4

    const/4 p1, 0x6

    new-array p4, p1, [Lcom/google/ads/b;

    sget-object p5, Lcom/google/ads/b;->a:Lcom/google/ads/b;

    const/4 p6, 0x0

    aput-object p5, p4, p6

    sget-object p5, Lcom/google/ads/b;->b:Lcom/google/ads/b;

    const/4 v0, 0x1

    aput-object p5, p4, v0

    const/4 p5, 0x2

    sget-object v0, Lcom/google/ads/b;->c:Lcom/google/ads/b;

    aput-object v0, p4, p5

    const/4 p5, 0x3

    sget-object v0, Lcom/google/ads/b;->d:Lcom/google/ads/b;

    aput-object v0, p4, p5

    const/4 p5, 0x4

    sget-object v0, Lcom/google/ads/b;->e:Lcom/google/ads/b;

    aput-object v0, p4, p5

    const/4 p5, 0x5

    sget-object v0, Lcom/google/ads/b;->f:Lcom/google/ads/b;

    aput-object v0, p4, p5

    :goto_1
    if-ge p6, p1, :cond_3

    aget-object p5, p4, p6

    invoke-virtual {p5}, Lcom/google/ads/b;->a()I

    move-result p5

    iget v0, p2, Lcom/google/android/gms/internal/ads/aou;->e:I

    if-ne p5, v0, :cond_2

    aget-object p5, p4, p6

    invoke-virtual {p5}, Lcom/google/ads/b;->b()I

    move-result p5

    iget v0, p2, Lcom/google/android/gms/internal/ads/aou;->b:I

    if-ne p5, v0, :cond_2

    aget-object p1, p4, p6

    goto :goto_2

    :cond_2
    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/ads/b;

    iget p4, p2, Lcom/google/android/gms/internal/ads/aou;->e:I

    iget p5, p2, Lcom/google/android/gms/internal/ads/aou;->b:I

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/aou;->a:Ljava/lang/String;

    invoke-static {p4, p5, p2}, Lcom/google/android/gms/ads/m;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/b;-><init>(Lcom/google/android/gms/ads/d;)V

    :goto_2
    move-object v5, p1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/bed;->a(Lcom/google/android/gms/internal/ads/aoq;)Z

    move-result p1

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/bei;->a(Lcom/google/android/gms/internal/ads/aoq;Z)Lcom/google/ads/mediation/a;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bed;->b:Lcom/google/ads/mediation/f;

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/e;Lcom/google/ads/b;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/b/a;Lcom/google/android/gms/internal/ads/hm;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/a;",
            "Lcom/google/android/gms/internal/ads/hm;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aoq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_1

    const-string v0, "Not a MediationInterstitialAdapter: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bed;->a:Lcom/google/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/ads/mediation/b;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mt;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final d()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final e()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/bdm;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/bdq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/awc;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/ads/aqv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/bdt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
