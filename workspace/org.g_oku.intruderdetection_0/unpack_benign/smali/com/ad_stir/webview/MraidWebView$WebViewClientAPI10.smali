.class Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;
.super Landroid/webkit/WebViewClient;
.source "MraidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/webview/MraidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewClientAPI10"
.end annotation


# instance fields
.field protected final wv:Lcom/ad_stir/webview/MraidWebView;


# direct methods
.method public constructor <init>(Lcom/ad_stir/webview/MraidWebView;)V
    .locals 0
    .param p1, "wv"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->wv:Lcom/ad_stir/webview/MraidWebView;

    .line 174
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->wv:Lcom/ad_stir/webview/MraidWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ad_stir/webview/MraidWebView;->access$202(Lcom/ad_stir/webview/MraidWebView;Z)Z

    .line 184
    const-string v0, "onPageFinished"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v0}, Lcom/ad_stir/webview/MraidWebView;->injectJS()V

    .line 186
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->wv:Lcom/ad_stir/webview/MraidWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ad_stir/webview/MraidWebView;->access$202(Lcom/ad_stir/webview/MraidWebView;Z)Z

    .line 179
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 190
    if-nez p2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    :try_start_0
    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->wv:Lcom/ad_stir/webview/MraidWebView;

    const-string v4, "android.intent.action.DIAL"

    const/4 v5, 0x0

    invoke-static {v3, v4, p2, v5}, Lcom/ad_stir/webview/MraidWebView;->access$300(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 195
    goto :goto_0

    .line 196
    :cond_2
    const-string v3, "mailto:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "sms:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 197
    :cond_3
    iget-object v3, p0, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->wv:Lcom/ad_stir/webview/MraidWebView;

    const-string v4, "android.intent.action.SENDTO"

    const/4 v5, 0x0

    invoke-static {v3, v4, p2, v5}, Lcom/ad_stir/webview/MraidWebView;->access$300(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 198
    goto :goto_0

    .line 199
    :cond_4
    iget-object v3, p0, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v3}, Lcom/ad_stir/webview/MraidWebView;->access$400(Lcom/ad_stir/webview/MraidWebView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v3, p2}, Lcom/ad_stir/webview/MraidWebView;->access$500(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 201
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
