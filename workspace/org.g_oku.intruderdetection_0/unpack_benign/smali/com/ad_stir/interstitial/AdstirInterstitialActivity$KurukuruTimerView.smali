.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;
.super Landroid/widget/FrameLayout;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KurukuruTimerView"
.end annotation


# instance fields
.field private kurukuruDelete:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "stopTime"    # I

    .prologue
    .line 461
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 445
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$1;

    invoke-direct {v0, p0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;)V

    iput-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->kurukuruDelete:Ljava/lang/Runnable;

    .line 462
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$2;

    const/4 v1, 0x0

    const v2, 0x1010077

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$2;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->addView(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->kurukuruDelete:Ljava/lang/Runnable;

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->kurukuruDelete:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method
