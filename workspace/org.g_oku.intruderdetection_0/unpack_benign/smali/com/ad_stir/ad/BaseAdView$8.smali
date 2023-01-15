.class Lcom/ad_stir/ad/BaseAdView$8;
.super Landroid/webkit/WebViewClient;
.source "BaseAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/ad/BaseAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/ad/BaseAdView;


# direct methods
.method constructor <init>(Lcom/ad_stir/ad/BaseAdView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$8;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v2, "BaseAdView LINK Click"

    invoke-static {v2}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 366
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$8;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v2}, Lcom/ad_stir/ad/BaseAdView;->access$1000(Lcom/ad_stir/ad/BaseAdView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    const/4 v2, 0x1

    .line 372
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    .line 372
    const/4 v2, 0x0

    goto :goto_0
.end method
