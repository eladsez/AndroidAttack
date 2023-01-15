.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;
.super Landroid/widget/FrameLayout;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

.field final synthetic val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;Landroid/content/Context;Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)V
    .locals 2
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 168
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    iput-object p3, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-static {}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->setBackgroundColor(I)V

    .line 172
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$1;

    invoke-direct {v0, p0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$200(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$300(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->addView(Landroid/view/View;)V

    .line 432
    :goto_0
    return-void

    .line 237
    :cond_0
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
