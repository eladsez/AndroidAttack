.class Lcom/ad_stir/ad/BaseAdView$2$1$1;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/ad/BaseAdView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ad_stir/ad/BaseAdView$2$1;


# direct methods
.method constructor <init>(Lcom/ad_stir/ad/BaseAdView$2$1;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$2$1$1;->this$2:Lcom/ad_stir/ad/BaseAdView$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    const-string v1, "BaseAdView TIMEOUT CHECK"

    invoke-static {v1}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$2$1$1;->this$2:Lcom/ad_stir/ad/BaseAdView$2$1;

    iget-object v1, v1, Lcom/ad_stir/ad/BaseAdView$2$1;->this$1:Lcom/ad_stir/ad/BaseAdView$2;

    iget-object v1, v1, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v1}, Lcom/ad_stir/ad/BaseAdView;->access$000(Lcom/ad_stir/ad/BaseAdView;)I

    move-result v1

    invoke-static {}, Lcom/ad_stir/ad/BaseAdView;->access$100()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 167
    const-string v1, "BaseAdView TIMEOUT"

    invoke-static {v1}, Lcom/ad_stir/common/Log;->w(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$2$1$1;->this$2:Lcom/ad_stir/ad/BaseAdView$2$1;

    iget-object v1, v1, Lcom/ad_stir/ad/BaseAdView$2$1;->this$1:Lcom/ad_stir/ad/BaseAdView$2;

    iget-object v1, v1, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {}, Lcom/ad_stir/ad/BaseAdView;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ad_stir/ad/BaseAdView;->setAdStatus(I)V

    .line 170
    :cond_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
