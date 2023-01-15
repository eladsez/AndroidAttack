.class Lcom/ad_stir/webview/MraidWebView$3;
.super Landroid/content/BroadcastReceiver;
.source "MraidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/MraidWebView;->registerReceiver()V
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
    .line 533
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$3;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$3;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-static {v1}, Lcom/ad_stir/webview/MraidWebView;->access$1200(Lcom/ad_stir/webview/MraidWebView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 538
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$3;->this$0:Lcom/ad_stir/webview/MraidWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceWidth("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ad_stir/webview/MraidWebView$3;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/ad_stir/webview/MraidWebView;->access$1300(Lcom/ad_stir/webview/MraidWebView;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView$3;->this$0:Lcom/ad_stir/webview/MraidWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceHeight("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ad_stir/webview/MraidWebView$3;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/ad_stir/webview/MraidWebView;->access$1300(Lcom/ad_stir/webview/MraidWebView;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    .line 541
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    return-void
.end method
