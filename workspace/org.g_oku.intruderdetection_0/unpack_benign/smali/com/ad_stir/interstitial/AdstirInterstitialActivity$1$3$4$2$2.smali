.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;
.super Landroid/widget/FrameLayout;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;Landroid/content/Context;)V
    .locals 7
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 317
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 319
    new-instance v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$1;

    iget-object v3, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    const/16 v4, 0x140

    invoke-static {v3, v4}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;I)I

    move-result v3

    iget-object v4, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;

    iget-object v4, v4, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v4, v4, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v4, v4, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v4, v4, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    const/16 v5, 0x4e

    invoke-static {v4, v5}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;I)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;II)V

    invoke-virtual {p0, v2}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    new-instance v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$2;

    iget-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    const/16 v3, 0x2710

    invoke-direct {v1, p0, v2, v3}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$2;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;Landroid/content/Context;I)V

    .line 332
    .local v1, "kurukuru":Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;
    invoke-virtual {p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->addView(Landroid/view/View;)V

    .line 334
    new-instance v0, Lcom/ad_stir/icon/IconView;

    iget-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    iget-object v3, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v3}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1300(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->this$4:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;

    iget-object v4, v4, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    iget-object v4, v4, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;

    iget-object v4, v4, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v4, v4, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v4}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$1400(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/ad_stir/icon/IconView;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 335
    .local v0, "icon":Lcom/ad_stir/icon/IconView;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ad_stir/icon/IconView;->setInterval(J)V

    .line 336
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ad_stir/icon/IconView;->setCenter(Z)V

    .line 337
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/ad_stir/icon/IconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$3;

    invoke-direct {v2, p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2$3;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;)V

    invoke-virtual {v0, v2}, Lcom/ad_stir/icon/IconView;->setListener(Lcom/ad_stir/ad/AdListener;)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$2;->addView(Landroid/view/View;)V

    .line 356
    return-void
.end method
