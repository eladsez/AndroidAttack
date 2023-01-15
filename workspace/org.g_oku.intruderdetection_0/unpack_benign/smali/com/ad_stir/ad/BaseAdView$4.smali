.class Lcom/ad_stir/ad/BaseAdView$4;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/ad/BaseAdView;->setAdStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/ad/BaseAdView;


# direct methods
.method constructor <init>(Lcom/ad_stir/ad/BaseAdView;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$4;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$4;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$800(Lcom/ad_stir/ad/BaseAdView;)Lcom/ad_stir/ad/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$4;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$800(Lcom/ad_stir/ad/BaseAdView;)Lcom/ad_stir/ad/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$4;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-interface {v0, v1}, Lcom/ad_stir/ad/AdListener;->onReceived(Lcom/ad_stir/ad/BaseAdView;)V

    .line 225
    :cond_0
    return-void
.end method
