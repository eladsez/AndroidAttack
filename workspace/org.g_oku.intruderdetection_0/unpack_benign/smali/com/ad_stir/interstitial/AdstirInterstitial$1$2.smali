.class Lcom/ad_stir/interstitial/AdstirInterstitial$1$2;
.super Ljava/lang/Object;
.source "AdstirInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/interstitial/AdstirInterstitial$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/interstitial/AdstirInterstitial$1;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitial$1;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitial$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial;->getListener()Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitial$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitial$1;

    iget-object v0, v0, Lcom/ad_stir/interstitial/AdstirInterstitial$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitial;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial;->getListener()Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ad_stir/interstitial/AdstirInterstitial$AdstirInterstitialListener;->onFailedToReceiveSetting()V

    .line 107
    :cond_0
    return-void
.end method
