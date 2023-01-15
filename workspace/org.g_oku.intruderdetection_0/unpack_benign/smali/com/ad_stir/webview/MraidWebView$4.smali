.class Lcom/ad_stir/webview/MraidWebView$4;
.super Ljava/lang/Object;
.source "MraidWebView.java"

# interfaces
.implements Lcom/ad_stir/webview/MraidWebView$Listener;


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
    .line 597
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$4;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mraidInit()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public openModal()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$4;->this$0:Lcom/ad_stir/webview/MraidWebView;

    iget-object v0, v0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$4;->this$0:Lcom/ad_stir/webview/MraidWebView;

    iget-object v0, v0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v0}, Lcom/ad_stir/webview/MraidWebView$Listener;->openModal()V

    .line 608
    :cond_0
    return-void
.end method

.method public openOther()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$4;->this$0:Lcom/ad_stir/webview/MraidWebView;

    iget-object v0, v0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$4;->this$0:Lcom/ad_stir/webview/MraidWebView;

    iget-object v0, v0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v0}, Lcom/ad_stir/webview/MraidWebView$Listener;->openOther()V

    .line 602
    :cond_0
    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 0
    .param p1, "reloadparam"    # Ljava/lang/String;

    .prologue
    .line 624
    return-void
.end method

.method public returnApp()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$4;->this$0:Lcom/ad_stir/webview/MraidWebView;

    const-string v1, "returnInline1WV()"

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    .line 614
    return-void
.end method
