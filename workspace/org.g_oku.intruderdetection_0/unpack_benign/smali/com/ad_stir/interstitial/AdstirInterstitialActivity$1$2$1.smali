.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$1;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;II)V
    .locals 1
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 186
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$1;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;

    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    const/16 v0, 0x11

    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$1;->gravity:I

    .line 189
    return-void
.end method
