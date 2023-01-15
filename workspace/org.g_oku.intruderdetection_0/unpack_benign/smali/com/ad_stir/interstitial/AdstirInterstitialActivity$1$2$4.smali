.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$4;
.super Lcom/ad_stir/webview/AdstirMraidView$Listener;
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

.field final synthetic val$close:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;

    iput-object p2, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$4;->val$close:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/ad_stir/webview/AdstirMraidView;)V
    .locals 2
    .param p1, "view"    # Lcom/ad_stir/webview/AdstirMraidView;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$4;->val$close:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public onDismissAdScreen(Lcom/ad_stir/webview/AdstirMraidView;)V
    .locals 1
    .param p1, "view"    # Lcom/ad_stir/webview/AdstirMraidView;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->finish()V

    .line 229
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$4;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$100(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Lcom/ad_stir/interstitial/AdstirInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial;->getDialoglistener()Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;->onCancel()V

    .line 230
    return-void
.end method

.method public onLeaveApplication(Lcom/ad_stir/webview/AdstirMraidView;)V
    .locals 0
    .param p1, "view"    # Lcom/ad_stir/webview/AdstirMraidView;

    .prologue
    .line 224
    return-void
.end method

.method public onPresentAdScreen(Lcom/ad_stir/webview/AdstirMraidView;)V
    .locals 0
    .param p1, "view"    # Lcom/ad_stir/webview/AdstirMraidView;

    .prologue
    .line 220
    return-void
.end method
