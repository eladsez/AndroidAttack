.class Lcom/ievyhrdnoniovof/AdView$AdChromeClient;
.super Landroid/webkit/WebChromeClient;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdChromeClient"
.end annotation


# instance fields
.field private synthetic E:Landroid/widget/VideoView;

.field private synthetic H:Landroid/widget/RelativeLayout;

.field private synthetic M:Landroid/widget/FrameLayout;

.field private synthetic d:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private synthetic k:Landroid/content/Context;

.field final synthetic l:Lcom/ievyhrdnoniovof/AdView;

.field m:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/ievyhrdnoniovof/AdView;Landroid/content/Context;)V
    .locals 3
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->l:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->m:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->k:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->M:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->onHideCustomView()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/ConsoleMessage;

    .prologue
    const-string v0, "LBAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "[\u007fvcw|}0Uukcyw}050"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "JJ*\u0003\u0008\u000fF$\u0013\u0007\u0004\u000f\u0014J[J"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<8Cwejs}0%0"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->E:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->E:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->M:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->E:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->E:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->d:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->H:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Landroid/webkit/JsResult;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Landroid/webkit/JsResult;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const-string v0, "LBAdView"

    const-string v1, "\u0005\u00089\u000e\u0005\u0011)\u0013\u0019\u0012\u0005\u000b<\u000f\u000f\u0011J\u0005\u000b\n\u0006\u0003\u000e"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const-string v0, "LBAdView"

    const-string v1, "ny}g8yk0^by}}\\yiwel0q~kdy~{u"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdJSInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "arg0":Landroid/view/View;
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->M:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->d:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->l:Lcom/ievyhrdnoniovof/AdView;

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdView;->R:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->H:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const-string v0, "LBAdView"

    const-string v1, "0\u0003\u0002\u000f\t<\u000f\u000f\u0011J\u000f\u0004\u0015\u001e\u0007\u0004\u0005\u000f"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->E:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->H:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->M:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->E:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->E:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$AdChromeClient;->E:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method
