.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$1;
.super Ljava/lang/Object;
.source "AdstirInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$1;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$1;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->finish()V

    .line 176
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$1;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$100(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Lcom/ad_stir/interstitial/AdstirInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$1;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$100(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Lcom/ad_stir/interstitial/AdstirInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial;->getDialoglistener()Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$1;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$100(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Lcom/ad_stir/interstitial/AdstirInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial;->getDialoglistener()Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialDialogListener;->onCancel()V

    .line 178
    :cond_0
    return-void
.end method
