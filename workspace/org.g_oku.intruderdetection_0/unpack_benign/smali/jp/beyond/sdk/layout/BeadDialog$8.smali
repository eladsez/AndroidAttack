.class Ljp/beyond/sdk/layout/BeadDialog$8;
.super Landroid/webkit/WebViewClient;
.source "BeadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/beyond/sdk/layout/BeadDialog;->setLoadWebListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/layout/BeadDialog;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Ljp/beyond/sdk/layout/BeadDialog;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/beyond/sdk/layout/BeadDialog$8;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    iput-object p2, p0, Ljp/beyond/sdk/layout/BeadDialog$8;->val$webView:Landroid/webkit/WebView;

    .line 518
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadDialog$8;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-virtual {v2}, Ljp/beyond/sdk/layout/BeadDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/layout/BeadDialog$8;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljp/beyond/sdk/utilities/MathUtil;->convertPixelToDp(Landroid/content/Context;I)I

    move-result v1

    .line 528
    .local v1, "width":I
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadDialog$8;->this$0:Ljp/beyond/sdk/layout/BeadDialog;

    invoke-virtual {v2}, Ljp/beyond/sdk/layout/BeadDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/beyond/sdk/layout/BeadDialog$8;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljp/beyond/sdk/utilities/MathUtil;->convertPixelToDp(Landroid/content/Context;I)I

    move-result v0

    .line 529
    .local v0, "height":I
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadDialog$8;->val$webView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:document.getElementsByTagName(\'img\')[0].width="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Ljp/beyond/sdk/layout/BeadDialog$8;->val$webView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:document.getElementsByTagName(\'img\')[0].height="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 539
    return-void
.end method
