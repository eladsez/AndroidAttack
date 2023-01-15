.class Lcom/ievyhrdnoniovof/AdBrowser$5;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdBrowser;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdBrowser;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdBrowser;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdBrowser$5;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdBrowser$5;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdBrowser$5;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    const-string v2, "\u0004\u0003\u0012\u0007\u0007\u001a\u0015E\u0014\u0003\u0001\u0002\u0012\u000b\u0014\u0018\t\u001dH\u001a\u0008\r"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdBrowser$5;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    const-string v2, "\u000b;\u001d?\u0008\"\u001a}\u001c<\u001b;\u000e:\u001d3\u001b \u0006%G\"\u00075"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdBrowser$5;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdBrowser$5;->k:Lcom/ievyhrdnoniovof/AdBrowser;

    const-string v2, "\u0004\u0003\u0012\u0007\u0007\u001a\u0015E\u0013\u0004\u0014\u0003\u0001\u0002\u0012\u000b\u0014\u0018\t\u001dH\u001a\u0008\r"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(6& \u0004?\u0008r, \u001b=\u001bh"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0
.end method
