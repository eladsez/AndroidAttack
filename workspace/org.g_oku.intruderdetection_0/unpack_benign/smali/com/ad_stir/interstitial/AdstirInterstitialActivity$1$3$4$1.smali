.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$1;
.super Landroid/widget/LinearLayout$LayoutParams;
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
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;II)V
    .locals 1
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 274
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$1;->this$3:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4;

    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 276
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$3$4$1;->weight:F

    .line 277
    return-void
.end method
