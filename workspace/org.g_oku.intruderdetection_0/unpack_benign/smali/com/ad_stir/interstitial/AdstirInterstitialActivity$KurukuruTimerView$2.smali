.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$2;
.super Landroid/widget/ProgressBar;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/util/AttributeSet;
    .param p4, "x2"    # I

    .prologue
    const/4 v2, -0x2

    .line 462
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$2;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 464
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    return-void
.end method
