.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;
.super Landroid/widget/LinearLayout;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;Landroid/content/Context;)V
    .locals 3
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 368
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->setOrientation(I)V

    .line 372
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->addView(Landroid/view/View;)V

    .line 400
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$2;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$2;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->addView(Landroid/view/View;)V

    .line 426
    return-void
.end method
