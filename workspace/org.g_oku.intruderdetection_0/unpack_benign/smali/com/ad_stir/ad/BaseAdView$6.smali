.class Lcom/ad_stir/ad/BaseAdView$6;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/ad/BaseAdView;->setWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad_stir/ad/BaseAdView;

.field final synthetic val$html:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ad_stir/ad/BaseAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    iput-object p2, p0, Lcom/ad_stir/ad/BaseAdView$6;->val$html:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 277
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v2}, Lcom/ad_stir/ad/BaseAdView;->access$1000(Lcom/ad_stir/ad/BaseAdView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ad_stir/ad/BaseAdView;->access$902(Lcom/ad_stir/ad/BaseAdView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 282
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 283
    .local v6, "SOFTWARE":Ljava/lang/Object;
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v1}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v6    # "SOFTWARE":Ljava/lang/Object;
    :goto_0
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 290
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 292
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-virtual {v1}, Lcom/ad_stir/ad/BaseAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 294
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 295
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v1}, Lcom/ad_stir/ad/BaseAdView;->access$1100(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 296
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v1}, Lcom/ad_stir/ad/BaseAdView;->access$1200(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 297
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-wide/32 v1, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 299
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v1}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ad_stir/ad/BaseAdView;->addView(Landroid/view/View;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView$6;->this$0:Lcom/ad_stir/ad/BaseAdView;

    invoke-static {v0}, Lcom/ad_stir/ad/BaseAdView;->access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "http://adp.ad-stir.com/"

    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView$6;->val$html:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 285
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
