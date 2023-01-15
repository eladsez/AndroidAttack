.class Lcom/ad_stir/webview/MraidWebView$2$2;
.super Landroid/webkit/WebViewClient;
.source "MraidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/MraidWebView$2;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/webview/MraidWebView$2;

.field final synthetic val$iframeView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/ad_stir/webview/MraidWebView$2;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iput-object p2, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->val$iframeView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 317
    :try_start_0
    const-string v1, "onCreateWindow->shouldOverrideUrlLoading"

    invoke-static {v1}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->val$iframeView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 319
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->val$iframeView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 320
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->val$iframeView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 321
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v1, v1, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->val$iframeView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/ad_stir/webview/MraidWebView;->removeView(Landroid/view/View;)V

    .line 322
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->val$iframeView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 323
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$2$2;->this$1:Lcom/ad_stir/webview/MraidWebView$2;

    iget-object v1, v1, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v1, p2}, Lcom/ad_stir/webview/MraidWebView;->access$500(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    const/4 v1, 0x1

    .line 327
    :goto_0
    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method
