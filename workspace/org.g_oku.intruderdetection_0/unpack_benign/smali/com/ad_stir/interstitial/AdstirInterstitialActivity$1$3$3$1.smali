.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3$1;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;II)V
    .locals 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    const/4 v3, 0x0

    .line 259
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;

    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;I)I

    move-result v0

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;I)I

    move-result v1

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3$1;->setMargins(IIII)V

    .line 262
    return-void
.end method
