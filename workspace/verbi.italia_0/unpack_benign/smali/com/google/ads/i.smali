.class Lcom/google/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/h;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/ads/AdRequest;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/h;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/h;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/google/ads/AdRequest;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/ads/i;->a:Lcom/google/ads/h;

    .line 97
    iput-object p3, p0, Lcom/google/ads/i;->b:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/i;->f:Ljava/lang/ref/WeakReference;

    .line 99
    iput-object p4, p0, Lcom/google/ads/i;->c:Lcom/google/ads/AdRequest;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/ads/i;->d:Ljava/util/HashMap;

    .line 103
    iget-object v0, p0, Lcom/google/ads/i;->d:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/ads/i;->a(Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/i;->e:Z

    .line 104
    return-void
.end method

.method private a(Lcom/google/ads/mediation/MediationAdapter;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/ads/mediation/NetworkExtras;",
            "U:",
            "Lcom/google/ads/mediation/MediationServerParameters;",
            ">(",
            "Lcom/google/ads/mediation/MediationAdapter",
            "<TT;TU;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/mediation/MediationServerParameters$MappingException;,
            Lcom/google/ads/i$a;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, "Adapter "

    .line 146
    iget-object v1, p0, Lcom/google/ads/i;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 147
    if-nez v3, :cond_0

    .line 148
    new-instance v1, Lcom/google/ads/i$a;

    const-string v2, "Activity became null while trying to instantiate adapter."

    invoke-direct {v1, v2}, Lcom/google/ads/i$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/google/ads/i;->a:Lcom/google/ads/h;

    invoke-virtual {v1, p1}, Lcom/google/ads/h;->a(Lcom/google/ads/mediation/MediationAdapter;)V

    .line 156
    invoke-interface {p1}, Lcom/google/ads/mediation/MediationAdapter;->getServerParametersType()Ljava/lang/Class;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/MediationServerParameters;

    .line 160
    iget-object v2, p0, Lcom/google/ads/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/google/ads/mediation/MediationServerParameters;->load(Ljava/util/Map;)V

    move-object v4, v1

    .line 166
    :goto_0
    invoke-interface {p1}, Lcom/google/ads/mediation/MediationAdapter;->getAdditionalParametersType()Ljava/lang/Class;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_4

    .line 169
    iget-object v2, p0, Lcom/google/ads/i;->c:Lcom/google/ads/AdRequest;

    invoke-virtual {v2, v1}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/NetworkExtras;

    move-object v6, v1

    .line 174
    :goto_1
    new-instance v5, Lcom/google/ads/mediation/MediationAdRequest;

    iget-object v1, p0, Lcom/google/ads/i;->c:Lcom/google/ads/AdRequest;

    iget-boolean v2, p0, Lcom/google/ads/i;->e:Z

    invoke-direct {v5, v1, v3, v2}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Lcom/google/ads/AdRequest;Landroid/content/Context;Z)V

    .line 178
    iget-object v1, p0, Lcom/google/ads/i;->a:Lcom/google/ads/h;

    iget-object v1, v1, Lcom/google/ads/h;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v1}, Lcom/google/ads/internal/h;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    instance-of v1, p1, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v1, :cond_1

    .line 180
    new-instance v1, Lcom/google/ads/i$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adapter "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t support the MediationInterstitialAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/i$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    move-object v1, v0

    .line 186
    new-instance v2, Lcom/google/ads/k;

    iget-object v7, p0, Lcom/google/ads/i;->a:Lcom/google/ads/h;

    invoke-direct {v2, v7}, Lcom/google/ads/k;-><init>(Lcom/google/ads/h;)V

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V

    .line 206
    :goto_2
    iget-object v1, p0, Lcom/google/ads/i;->a:Lcom/google/ads/h;

    invoke-virtual {v1}, Lcom/google/ads/h;->k()V

    .line 207
    return-void

    .line 193
    :cond_2
    instance-of v1, p1, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v1, :cond_3

    .line 194
    new-instance v1, Lcom/google/ads/i$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adapter "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t support the MediationBannerAdapter interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/i$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    move-object v7, v0

    .line 199
    new-instance v8, Lcom/google/ads/j;

    iget-object v1, p0, Lcom/google/ads/i;->a:Lcom/google/ads/h;

    invoke-direct {v8, v1}, Lcom/google/ads/j;-><init>(Lcom/google/ads/h;)V

    iget-object v1, p0, Lcom/google/ads/i;->a:Lcom/google/ads/h;

    iget-object v1, v1, Lcom/google/ads/h;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v1}, Lcom/google/ads/internal/h;->c()Lcom/google/ads/AdSize;

    move-result-object v11

    move-object v9, v3

    move-object v10, v4

    move-object v12, v5

    move-object v13, v6

    invoke-interface/range {v7 .. v13}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V

    goto :goto_2

    :cond_4
    move-object v6, v5

    goto/16 :goto_1

    :cond_5
    move-object v4, v5

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/g$a;)V
    .locals 2

    .prologue
    .line 136
    invoke-static {p1, p2}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    iget-object v0, p0, Lcom/google/ads/i;->a:Lcom/google/ads/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    .line 138
    return-void
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "gwhirl_share_location"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 68
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 73
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received an illegal value, \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', for the special share location parameter from mediation server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (expected \'0\' or \'1\'). Will not share the location."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to instantiate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/ads/i;->b:Ljava/lang/String;

    const-class v1, Lcom/google/ads/mediation/MediationAdapter;

    invoke-static {v0, v1}, Lcom/google/ads/g;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/MediationAdapter;

    .line 119
    invoke-direct {p0, v0}, Lcom/google/ads/i;->a(Lcom/google/ads/mediation/MediationAdapter;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find adapter class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Did you link the ad network\'s mediation adapter? Skipping ad network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/ads/g$a;->e:Lcom/google/ads/g$a;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/ads/i;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/g$a;)V

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 127
    const-string v1, "Error while creating adapter and loading ad from ad network. Skipping ad network."

    sget-object v2, Lcom/google/ads/g$a;->f:Lcom/google/ads/g$a;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/ads/i;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/g$a;)V

    goto :goto_0
.end method
