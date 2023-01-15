.class Lcom/ad_stir/webview/AdstirMraidView$5;
.super Ljava/lang/Object;
.source "AdstirMraidView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 367
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView$5;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    iput-object p2, p0, Lcom/ad_stir/webview/AdstirMraidView$5;->val$gid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$5;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v0}, Lcom/ad_stir/webview/AdstirMraidView;->access$300(Lcom/ad_stir/webview/AdstirMraidView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ad_stir/webview/AdstirMraidView$5$1;

    invoke-direct {v1, p0}, Lcom/ad_stir/webview/AdstirMraidView$5$1;-><init>(Lcom/ad_stir/webview/AdstirMraidView$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method
