.class public Lcom/ad_stir/webview/AdstirWebViewMediationAdapter;
.super Ljava/lang/Object;
.source "AdstirWebViewMediationAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventBanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 10
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "serverParameter"    # Ljava/lang/String;
    .param p5, "adSize"    # Lcom/google/ads/AdSize;
    .param p6, "request"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p7, "customEventExtra"    # Ljava/lang/Object;

    .prologue
    .line 20
    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 21
    .local v8, "params":[Ljava/lang/String;
    array-length v1, v8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 22
    const-string v1, "invalid AdMob Mediation Parameter."

    invoke-static {v1}, Lcom/ad_stir/common/Log;->e(Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 41
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v1, 0x0

    aget-object v2, v8, v1

    .line 28
    .local v2, "media":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v9, v8, v1

    .line 31
    .local v9, "spotString":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 38
    .local v3, "spot":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " start."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/ad_stir/webview/AdstirMraidView;

    new-instance v4, Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    invoke-virtual {p5}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {p5}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v5

    invoke-direct {v4, v1, v5}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;-><init>(II)V

    const-wide/16 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/ad_stir/webview/AdstirMraidView;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/ad_stir/webview/AdstirMraidView$AdSize;J)V

    .line 40
    .local v0, "ad":Lcom/ad_stir/webview/AdstirMraidView;
    invoke-interface {p1, v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    goto :goto_0

    .line 32
    .end local v0    # "ad":Lcom/ad_stir/webview/AdstirMraidView;
    .end local v3    # "spot":I
    :catch_0
    move-exception v7

    .line 33
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "invalid AdMob Mediation Parameter."

    invoke-static {v1}, Lcom/ad_stir/common/Log;->e(Ljava/lang/String;)V

    .line 34
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
