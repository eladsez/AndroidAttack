.class Lcom/ad_stir/webview/AdstirMraidView$3$1;
.super Ljava/lang/Object;
.source "AdstirMraidView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/AdstirMraidView$3;->returnGooglePlayId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/webview/AdstirMraidView$3;

.field final synthetic val$gid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ad_stir/webview/AdstirMraidView$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView$3$1;->this$1:Lcom/ad_stir/webview/AdstirMraidView$3;

    iput-object p2, p0, Lcom/ad_stir/webview/AdstirMraidView$3$1;->val$gid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView$3$1;->this$1:Lcom/ad_stir/webview/AdstirMraidView$3;

    iget-object v1, v1, Lcom/ad_stir/webview/AdstirMraidView$3;->this$0:Lcom/ad_stir/webview/AdstirMraidView;

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView$3$1;->val$gid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ad_stir/webview/AdstirMraidView;->access$200(Lcom/ad_stir/webview/AdstirMraidView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
