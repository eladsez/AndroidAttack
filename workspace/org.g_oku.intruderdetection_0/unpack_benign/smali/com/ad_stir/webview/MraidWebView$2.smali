.class Lcom/ad_stir/webview/MraidWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "MraidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/webview/MraidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/webview/MraidWebView;


# direct methods
.method constructor <init>(Lcom/ad_stir/webview/MraidWebView;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- From line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 309
    const-string v4, "onCreateWindow"

    invoke-static {v4}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 311
    :try_start_0
    iget-object v4, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/webkit/WebView$WebViewTransport;

    if-eqz v4, :cond_0

    .line 312
    new-instance v1, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v4}, Lcom/ad_stir/webview/MraidWebView;->access$1200(Lcom/ad_stir/webview/MraidWebView;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 313
    .local v1, "iframeView":Landroid/webkit/WebView;
    new-instance v4, Lcom/ad_stir/webview/MraidWebView$2$2;

    invoke-direct {v4, p0, v1}, Lcom/ad_stir/webview/MraidWebView$2$2;-><init>(Lcom/ad_stir/webview/MraidWebView$2;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 331
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebView$WebViewTransport;

    .line 334
    .local v2, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 335
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/4 v3, 0x1

    .line 341
    .end local v1    # "iframeView":Landroid/webkit/WebView;
    .end local v2    # "transport":Landroid/webkit/WebView$WebViewTransport;
    :cond_0
    :goto_0
    return v3

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 248
    invoke-static {p3}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 249
    move-object v0, p3

    .line 250
    .local v0, "mraidurl":Ljava/lang/String;
    const-string v1, "adstir://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$2;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v1}, Lcom/ad_stir/webview/MraidWebView;->access$1200(Lcom/ad_stir/webview/MraidWebView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/ad_stir/webview/MraidWebView$2$1;

    invoke-direct {v2, p0, v0}, Lcom/ad_stir/webview/MraidWebView$2$1;-><init>(Lcom/ad_stir/webview/MraidWebView$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 303
    const/4 v1, 0x1

    return v1
.end method
