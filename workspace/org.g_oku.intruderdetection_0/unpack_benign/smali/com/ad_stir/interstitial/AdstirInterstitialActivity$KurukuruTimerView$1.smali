.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$1;
.super Ljava/lang/Object;
.source "AdstirInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private remove:Z

.field final synthetic this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;)V
    .locals 1

    .prologue
    .line 445
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$1;->remove:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 451
    :try_start_0
    iget-boolean v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$1;->remove:Z

    if-eqz v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$1;->remove:Z

    .line 454
    iget-object v0, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;

    invoke-virtual {v0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$KurukuruTimerView;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    goto :goto_0
.end method
