.class Lcom/ad_stir/webview/AdstirMraidView$3;
.super Ljava/lang/Object;
.source "AdstirMraidView.java"

# interfaces
.implements Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/AdstirMraidView;->start()V
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
    .line 305
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView$3;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnGooglePlayId(Ljava/lang/String;)V
    .locals 3
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$3;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-static {v1}, Lcom/ad_stir/webview/AdstirMraidView;->access$300(Lcom/ad_stir/webview/AdstirMraidView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/ad_stir/webview/AdstirMraidView$3$1;

    invoke-direct {v2, p0, p1}, Lcom/ad_stir/webview/AdstirMraidView$3$1;-><init>(Lcom/ad_stir/webview/AdstirMraidView$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
