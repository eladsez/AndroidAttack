.class Lcom/ad_stir/webview/MraidWebView$5;
.super Ljava/lang/Object;
.source "MraidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 626
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView$5;->this$0:Lcom/ad_stir/webview/MraidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView$5;->this$0:Lcom/ad_stir/webview/MraidWebView;

    const-string v1, "returnInline1WV()"

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    .line 631
    return-void
.end method
