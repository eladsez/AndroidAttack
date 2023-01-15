.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;
.super Landroid/widget/TextView;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;Landroid/content/Context;)V
    .locals 3
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x2

    .line 377
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1600(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->setTextColor(I)V

    .line 383
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v2, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->setTextSize(IF)V

    .line 384
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1700(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1$1;

    invoke-direct {v0, p0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5$1$1;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    return-void
.end method
