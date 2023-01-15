.class Lcom/waps/ae;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method private constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/OffersWebView;Lcom/waps/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/ae;-><init>(Lcom/waps/OffersWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->access$600(Lcom/waps/OffersWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->access$600(Lcom/waps/OffersWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string v1, ""

    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const-string v0, ""

    const-string v2, "<html><body bgcolor=\"000000\" align=\"center\"><br/><font color=\"ffffff\">\u7f51\u7edc\u94fe\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002</font><br/></body></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v0, ""

    move-object v0, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-static {v0, v6}, Lcom/waps/OffersWebView;->access$502(Lcom/waps/OffersWebView;Z)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const-string v6, ";"

    const-string v5, "load://"

    const-string v4, ""

    iget-object v0, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-static {v0, p2}, Lcom/waps/OffersWebView;->access$202(Lcom/waps/OffersWebView;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "+++++"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-static {v2}, Lcom/waps/OffersWebView;->access$200(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waps/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "load://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    const-string v0, ";http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "load://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ";"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    const-string v2, ";"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waps/OffersWebView;->a:Ljava/lang/String;

    :goto_0
    const-string v1, ""

    const-string v1, ""

    if-eq v0, v4, :cond_2

    iget-object v1, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v1}, Lcom/waps/OffersWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v2, v1}, Lcom/waps/OffersWebView;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    invoke-static {v1}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/waps/AppConnect;->package_receiver(Ljava/lang/String;I)V

    move v0, v3

    :goto_2
    return v0

    :cond_0
    const-string v0, "load://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/waps/ae;->a:Lcom/waps/OffersWebView;

    iget-object v0, v0, Lcom/waps/OffersWebView;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v3

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
