.class final Lcom/google/android/gms/internal/ads/apd;
.super Lcom/google/android/gms/internal/ads/aoy$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/aoy$a<",
        "Lcom/google/android/gms/internal/ads/aqq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aoy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apd;->b:Lcom/google/android/gms/internal/ads/aoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/apd;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aoy$a;-><init>(Lcom/google/android/gms/internal/ads/aoy;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apd;->b:Lcom/google/android/gms/internal/ads/aoy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoy;->d(Lcom/google/android/gms/internal/ads/aoy;)Lcom/google/android/gms/internal/ads/arm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apd;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/arm;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/aqq;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apd;->b:Lcom/google/android/gms/internal/ads/aoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apd;->a:Landroid/content/Context;

    const-string v2, "mobile_ads_settings"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aoy;->a(Lcom/google/android/gms/internal/ads/aoy;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/art;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/art;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqk;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aqk;->getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/b/a;I)Lcom/google/android/gms/internal/ads/aqq;

    move-result-object p1

    return-object p1
.end method
