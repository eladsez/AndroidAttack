.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$3;
.super Ljava/lang/Object;
.source "AdstirInterstitialActivity.java"

# interfaces
.implements Lcom/ad_stir/ad/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;

.field final synthetic val$kurukuru:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$3;->this$5:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;

    iput-object p2, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$3;->val$kurukuru:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ad_stir/ad/BaseAdView;Lcom/ad_stir/ad/AdErrorCode;)V
    .locals 1
    .param p1, "ad"    # Lcom/ad_stir/ad/BaseAdView;
    .param p2, "code"    # Lcom/ad_stir/ad/AdErrorCode;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$3;->val$kurukuru:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->stop()V

    .line 353
    return-void
.end method

.method public onFailed(Lcom/ad_stir/ad/BaseAdView;)V
    .locals 1
    .param p1, "ad"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$3;->val$kurukuru:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->stop()V

    .line 348
    return-void
.end method

.method public onReceived(Lcom/ad_stir/ad/BaseAdView;)V
    .locals 1
    .param p1, "ad"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$3;->val$kurukuru:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->stop()V

    .line 343
    return-void
.end method
