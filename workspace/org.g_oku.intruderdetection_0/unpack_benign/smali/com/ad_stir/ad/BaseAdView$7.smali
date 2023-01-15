.class Lcom/ad_stir/ad/BaseAdView$7;
.super Landroid/webkit/WebChromeClient;
.source "BaseAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/ad/BaseAdView;
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
    .line 323
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$7;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 326
    const-string v4, "BaseAdView IFRAME Click"

    invoke-static {v4}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 328
    :try_start_0
    iget-object v4, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/webkit/WebView$WebViewTransport;

    if-eqz v4, :cond_0

    .line 329
    new-instance v1, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/ad_stir/ad/BaseAdView$7;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v4}, Lcom/ad_stir/ad/BaseAdView;->access$1000(Lcom/ad_stir/ad/BaseAdView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 330
    .local v1, "iframeView":Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/ad_stir/ad/BaseAdView$7;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v4}, Lcom/ad_stir/ad/BaseAdView;->access$1100(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebViewClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 331
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v4, p0, Lcom/ad_stir/ad/BaseAdView$7;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-virtual {v4, v1}, Lcom/ad_stir/ad/BaseAdView;->addView(Landroid/view/View;)V

    .line 333
    iget-object v2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView$WebViewTransport;

    .line 334
    .local v2, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 335
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 336
    iget-object v4, p0, Lcom/ad_stir/ad/BaseAdView$7;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v4}, Lcom/ad_stir/ad/BaseAdView;->access$700(Lcom/ad_stir/ad/BaseAdView;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/ad_stir/ad/BaseAdView$7$1;

    invoke-direct {v5, p0, v1}, Lcom/ad_stir/ad/BaseAdView$7$1;-><init>(Lcom/ad_stir/ad/BaseAdView$7;Landroid/webkit/WebView;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const/4 v3, 0x1

    .line 355
    .end local v1    # "iframeView":Landroid/webkit/WebView;
    .end local v2    # "transport":Landroid/webkit/WebView$WebViewTransport;
    :cond_0
    :goto_0
    return v3

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
