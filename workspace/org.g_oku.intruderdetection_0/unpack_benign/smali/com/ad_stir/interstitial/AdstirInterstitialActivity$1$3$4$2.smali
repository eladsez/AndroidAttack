.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;
.super Landroid/widget/LinearLayout;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;Landroid/content/Context;)V
    .locals 3
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 282
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->setOrientation(I)V

    .line 287
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1000(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1100(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->addView(Landroid/view/View;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1300(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1400(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->addView(Landroid/view/View;)V

    .line 359
    :cond_1
    return-void
.end method
