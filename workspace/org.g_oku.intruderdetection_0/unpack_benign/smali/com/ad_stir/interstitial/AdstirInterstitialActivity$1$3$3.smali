.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;
.super Landroid/widget/TextView;
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
    .line 256
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 258
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3$1;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;II)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$800(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v0, 0x1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->setTextSize(IF)V

    .line 266
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$900(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->setTextColor(I)V

    .line 267
    return-void
.end method
