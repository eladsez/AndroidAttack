.class Lcom/ad_stir/webview/AdstirMraidView$4;
.super Ljava/lang/Object;
.source "AdstirMraidView.java"

# interfaces
.implements Lcom/ad_stir/webview/MraidWebView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/AdstirMraidView;->load(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/webview/AdstirMraidView;

.field final synthetic val$gid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ad_stir/webview/AdstirMraidView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    iput-object p2, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->val$gid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mraidInit()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/AdstirMraidView$Listener;->init(Lcom/ad_stir/webview/AdstirMraidView;)V

    .line 351
    :cond_0
    return-void
.end method

.method public openModal()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/AdstirMraidView$Listener;->onPresentAdScreen(Lcom/ad_stir/webview/AdstirMraidView;)V

    .line 346
    :cond_0
    return-void
.end method

.method public openOther()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/AdstirMraidView$Listener;->onLeaveApplication(Lcom/ad_stir/webview/AdstirMraidView;)V

    .line 341
    :cond_0
    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->val$gid:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/ad_stir/webview/AdstirMraidView;->access$200(Lcom/ad_stir/webview/AdstirMraidView;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public returnApp()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$4;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/AdstirMraidView$Listener;->onDismissAdScreen(Lcom/ad_stir/webview/AdstirMraidView;)V

    .line 336
    :cond_0
    return-void
.end method
