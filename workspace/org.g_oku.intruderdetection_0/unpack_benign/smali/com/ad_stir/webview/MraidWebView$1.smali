.class Lcom/ad_stir/webview/MraidWebView$1;
.super Ljava/lang/Object;
.source "MraidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/MraidWebView;->injectJS()V
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
    .line 154
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$1;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$1;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v1}, Lcom/ad_stir/webview/MraidWebView;->access$000(Lcom/ad_stir/webview/MraidWebView;)Ljava/util/Queue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$1;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v1}, Lcom/ad_stir/webview/MraidWebView;->access$100(Lcom/ad_stir/webview/MraidWebView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$1;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v1}, Lcom/ad_stir/webview/MraidWebView;->access$200(Lcom/ad_stir/webview/MraidWebView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$1;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v1}, Lcom/ad_stir/webview/MraidWebView;->access$000(Lcom/ad_stir/webview/MraidWebView;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, "js":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 165
    .end local v0    # "js":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v0    # "js":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$1;->this$0:Lcom/ad_stir/webview/MraidWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.adstir_mraid_connector."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ad_stir/webview/MraidWebView;->loadJS(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$1;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v1}, Lcom/ad_stir/webview/MraidWebView;->injectJS()V

    goto :goto_0
.end method
