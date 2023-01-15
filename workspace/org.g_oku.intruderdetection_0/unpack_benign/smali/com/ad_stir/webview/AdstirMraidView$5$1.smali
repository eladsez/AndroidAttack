.class Lcom/ad_stir/webview/AdstirMraidView$5$1;
.super Ljava/lang/Object;
.source "AdstirMraidView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/AdstirMraidView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/webview/AdstirMraidView$5;


# direct methods
.method constructor <init>(Lcom/ad_stir/webview/AdstirMraidView$5;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView$5$1;->this$1:Lcom/ad_stir/webview/AdstirMraidView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView$5$1;->this$1:Lcom/ad_stir/webview/AdstirMraidView$5;

    iget-object v0, v0, Lcom/ad_stir/webview/AdstirMraidView$5;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$5$1;->this$1:Lcom/ad_stir/webview/AdstirMraidView$5;

    iget-object v1, v1, Lcom/ad_stir/webview/AdstirMraidView$5;->val$gid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ad_stir/webview/AdstirMraidView;->access$200(Lcom/ad_stir/webview/AdstirMraidView;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method
