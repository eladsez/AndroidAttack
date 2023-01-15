.class Lcom/ad_stir/ad/BaseAdView$7$1;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/ad/BaseAdView$7;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/ad/BaseAdView$7;

.field final synthetic val$iframeView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/ad_stir/ad/BaseAdView$7;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$7$1;->this$1:Lcom/ad_stir/ad/BaseAdView$7;

    iput-object p2, p0, Lcom/ad_stir/ad/BaseAdView$7$1;->val$iframeView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$7$1;->this$1:Lcom/ad_stir/ad/BaseAdView$7;

    iget-object v1, v1, Lcom/ad_stir/ad/BaseAdView$7;->this$0:Lcom/ad_stir/ad/BaseAdView;

    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$7$1;->val$iframeView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/ad_stir/ad/BaseAdView;->removeView(Landroid/view/View;)V

    .line 341
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$7$1;->val$iframeView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 342
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$7$1;->val$iframeView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 343
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$7$1;->val$iframeView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 344
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$7$1;->val$iframeView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
