.class Lcom/ievyhrdnoniovof/AdView$5;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdView;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->D(Lcom/ievyhrdnoniovof/AdView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->D(Lcom/ievyhrdnoniovof/AdView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->D(Lcom/ievyhrdnoniovof/AdView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdView;->L(Lcom/ievyhrdnoniovof/AdView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->A(Lcom/ievyhrdnoniovof/AdView;I)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdView;->L(Lcom/ievyhrdnoniovof/AdView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;I)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->A(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdUtilityController;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdView;->L(Lcom/ievyhrdnoniovof/AdView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdUtilityController;->init(F)V

    const-string v0, "`\u00123\u0003\u001c\u0010/\u001c0\u0016"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->G(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->destroyAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    const-string v0, "LBAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u00161\u0001,\u0001yS"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "40^qq|q~\u007f0MBT0%0"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdView;->I(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v2, v1}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdView;->I(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/ievyhrdnoniovof/AdView$AdViewListener;->handleRequest(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "lut*"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "\"\u001d\'\u0001,\u001a\']*\u001d7\u0016-\u0007m\u0012 \u0007*\u001c-]\u0007:\u0002?"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "\"\u001d\'\u0001,\u001a\']*\u001d7\u0016-\u0007m\u0012 \u0007*\u001c-]\u0015:\u0006$"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v2, "}yytdw*"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "\"\u001d\'\u0001,\u001a\']*\u001d7\u0016-\u0007m\u0012 \u0007*\u001c-]\u0015:\u0006$"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "y~|bwy|>q~luvd6q{dq\u007fv>NY]G"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdView$5;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v3}, Lcom/ievyhrdnoniovof/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
