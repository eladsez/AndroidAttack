.class Lcom/ad_stir/webview/AdstirMraidView$2;
.super Landroid/content/BroadcastReceiver;
.source "AdstirMraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/AdstirMraidView;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/webview/AdstirMraidView;


# direct methods
.method constructor <init>(Lcom/ad_stir/webview/AdstirMraidView;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView$2;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$2;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v1}, Lcom/ad_stir/webview/AdstirMraidView;->access$000(Lcom/ad_stir/webview/AdstirMraidView;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 252
    .local v0, "keyguardmanager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$2;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v1}, Lcom/ad_stir/webview/AdstirMraidView;->access$100(Lcom/ad_stir/webview/AdstirMraidView;)V

    goto :goto_0

    .line 254
    .end local v0    # "keyguardmanager":Landroid/app/KeyguardManager;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$2;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v1}, Lcom/ad_stir/webview/AdstirMraidView;->access$100(Lcom/ad_stir/webview/AdstirMraidView;)V

    goto :goto_0
.end method
