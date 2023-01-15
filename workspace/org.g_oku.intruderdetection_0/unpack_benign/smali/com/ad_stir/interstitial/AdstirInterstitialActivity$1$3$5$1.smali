.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;
.super Landroid/widget/FrameLayout;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;Landroid/content/Context;)V
    .locals 4
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 374
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;->addView(Landroid/view/View;)V

    .line 396
    :cond_0
    return-void
.end method
