.class Lcom/ad_stir/ad/BaseAdView$2$1;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/ad/BaseAdView$2;->returnGooglePlayId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/ad/BaseAdView$2;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ad_stir/ad/BaseAdView$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$2$1;->this$1:Lcom/ad_stir/ad/BaseAdView$2;

    iput-object p2, p0, Lcom/ad_stir/ad/BaseAdView$2$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ad_stir/ad/BaseAdView$2$1$1;

    invoke-direct {v3, p0}, Lcom/ad_stir/ad/BaseAdView$2$1$1;-><init>(Lcom/ad_stir/ad/BaseAdView$2$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 173
    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$2$1;->this$1:Lcom/ad_stir/ad/BaseAdView$2;

    iget-object v2, v2, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    iget-object v3, p0, Lcom/ad_stir/ad/BaseAdView$2$1;->val$url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ad_stir/ad/BaseAdView;->access$300(Lcom/ad_stir/ad/BaseAdView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "res":Ljava/lang/String;
    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$2$1;->this$1:Lcom/ad_stir/ad/BaseAdView$2;

    iget-object v2, v2, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-virtual {v2, v1}, Lcom/ad_stir/ad/BaseAdView;->makeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "html":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$2$1;->this$1:Lcom/ad_stir/ad/BaseAdView$2;

    iget-object v2, v2, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {}, Lcom/ad_stir/ad/BaseAdView;->access$400()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ad_stir/ad/BaseAdView;->setAdStatus(I)V

    .line 179
    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$2$1;->this$1:Lcom/ad_stir/ad/BaseAdView$2;

    iget-object v2, v2, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v2, v0}, Lcom/ad_stir/ad/BaseAdView;->access$500(Lcom/ad_stir/ad/BaseAdView;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$2$1;->this$1:Lcom/ad_stir/ad/BaseAdView$2;

    iget-object v2, v2, Lcom/ad_stir/ad/BaseAdView$2;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {}, Lcom/ad_stir/ad/BaseAdView;->access$200()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ad_stir/ad/BaseAdView;->setAdStatus(I)V

    goto :goto_0
.end method
