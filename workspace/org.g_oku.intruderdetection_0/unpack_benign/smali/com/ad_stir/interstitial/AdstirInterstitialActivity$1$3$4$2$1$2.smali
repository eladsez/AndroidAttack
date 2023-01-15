.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1$2;
.super Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;
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
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;Landroid/content/Context;I)V
    .locals 3
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    const/4 v2, -0x2

    .line 298
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1$2;->this$5:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1;

    invoke-direct {p0, p2, p3}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;-><init>(Landroid/content/Context;I)V

    .line 300
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$2$1$2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    return-void
.end method
