.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1$1;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;II)V
    .locals 3
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    const/4 v2, 0x0

    .line 291
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1$1;->this$5:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;

    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    const/16 v0, 0x11

    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1$1;->gravity:I

    .line 294
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1$1;->this$5:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;I)I

    move-result v0

    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1$1;->setMargins(IIII)V

    .line 295
    return-void
.end method
