.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$3;
.super Ljava/lang/Object;
.source "AdstirInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$3;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$3;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->finish()V

    .line 207
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$3;->this$2:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$100(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Lcom/ad_stir/interstitial/AdstirInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial;->getDialoglistener()Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;->onCancel()V

    .line 208
    return-void
.end method
