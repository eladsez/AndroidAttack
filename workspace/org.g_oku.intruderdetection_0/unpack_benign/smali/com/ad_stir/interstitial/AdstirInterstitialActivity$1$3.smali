.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;
.super Landroid/widget/LinearLayout;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;Landroid/content/Context;)V
    .locals 4
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x140

    .line 237
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$1;

    iget-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    iget-object v3, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v3}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$600(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v3

    if-le v0, v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;I)I

    move-result v0

    const/4 v2, -0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;II)V

    invoke-virtual {p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->setOrientation(I)V

    .line 246
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$700(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$2;

    invoke-direct {v0, p0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$2;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$800(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$3;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->addView(Landroid/view/View;)V

    .line 272
    :cond_0
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->addView(Landroid/view/View;)V

    .line 366
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v0, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$5;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->addView(Landroid/view/View;)V

    .line 428
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$600(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v0

    goto :goto_0
.end method
