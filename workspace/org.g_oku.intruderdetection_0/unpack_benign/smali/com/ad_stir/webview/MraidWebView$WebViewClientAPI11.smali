.class Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI11;
.super Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;
.source "MraidWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/webview/MraidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewClientAPI11"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ad_stir/webview/MraidWebView;)V
    .locals 0
    .param p1, "wv"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    .line 215
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldInterceptRequest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 219
    if-eqz p2, :cond_0

    const-string v4, "/mraid.js"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "res":Landroid/webkit/WebResourceResponse;
    const/4 v0, 0x0

    .local v0, "count":I
    move-object v3, v2

    .line 222
    .end local v2    # "res":Landroid/webkit/WebResourceResponse;
    .local v3, "res":Landroid/webkit/WebResourceResponse;
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    if-nez v3, :cond_1

    .line 225
    :try_start_0
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v4, "text/javasctipt"

    const-string v5, "utf-8"

    new-instance v6, Ljava/net/URL;

    invoke-static {}, Lcom/ad_stir/webview/MraidWebView;->gerMraidJS()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "res":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "res":Landroid/webkit/WebResourceResponse;
    move-object v3, v2

    .line 230
    .end local v2    # "res":Landroid/webkit/WebResourceResponse;
    .restart local v3    # "res":Landroid/webkit/WebResourceResponse;
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-static {v1}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 234
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "res":Landroid/webkit/WebResourceResponse;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    :cond_1
    return-object v3
.end method
