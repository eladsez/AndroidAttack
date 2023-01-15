.class Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapterImpl;
.super Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;
.source "GooglePlayId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/common/GooglePlayId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GooglePlayIdAdapterImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;-><init>(Lcom/ad_stir/common/GooglePlayId$1;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 117
    :try_start_0
    const-string v3, "AdvertisingIdClient.getAdvertisingIdInfo"

    invoke-static {v3}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 119
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :goto_0
    return-object v2

    .line 120
    .restart local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 121
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
