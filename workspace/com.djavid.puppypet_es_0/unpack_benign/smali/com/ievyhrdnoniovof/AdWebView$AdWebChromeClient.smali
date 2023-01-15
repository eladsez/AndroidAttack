.class Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;
.super Landroid/webkit/WebChromeClient;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebChromeClient"
.end annotation


# instance fields
.field private synthetic E:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private synthetic H:Landroid/widget/RelativeLayout;

.field private synthetic M:Landroid/widget/FrameLayout;

.field private synthetic k:Landroid/content/Context;

.field private synthetic l:Landroid/widget/VideoView;

.field final synthetic m:Lcom/ievyhrdnoniovof/AdWebView;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdWebView;Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;
    .param p2, "arg1"    # Landroid/content/Context;
    .param p3, "arg2"    # Landroid/widget/RelativeLayout;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->m:Lcom/ievyhrdnoniovof/AdWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->k:Landroid/content/Context;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->H:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->M:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/ConsoleMessage;

    .prologue
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0007|\nqa#H<\u0007=N?Bq"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "F\u0005\u0000J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->l:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->M:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->l:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->l:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->E:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Landroid/webkit/JsResult;

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0010K4U%"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$1;

    invoke-direct {v2, p0, p4}, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$1;-><init>(Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Landroid/webkit/JsResult;

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ")\t\u0004\u0000\u0003\u0014\u0007"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$3;

    invoke-direct {v2, p0, p4}, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$3;-><init>(Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$2;

    invoke-direct {v2, p0, p4}, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient$2;-><init>(Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->E:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->E:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-super {p0, p1, v0}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "arg0":Landroid/view/View;
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->M:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->l:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->l:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method
