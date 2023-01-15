.class public Lcom/google/android/gms/internal/ads/sm;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sr;
.implements Lcom/google/android/gms/internal/ads/st;
.implements Lcom/google/android/gms/internal/ads/sv;
.implements Lcom/google/android/gms/internal/ads/sw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field protected final a:Landroid/webkit/WebViewClient;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/sr;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/sw;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/st;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/sv;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/sb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sb;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->b:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->c:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->d:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sm;->f:Lcom/google/android/gms/internal/ads/sb;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/sm;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/sm;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->g()Lcom/google/android/gms/internal/ads/kc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/sm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/kc;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/sm;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/sm;->removeJavascriptInterface(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/sm;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to enable Javascript."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/sm;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/sn;

    invoke-direct {p1, p0, p0, p0, p0}, Lcom/google/android/gms/internal/ads/sn;-><init>(Lcom/google/android/gms/internal/ads/sr;Lcom/google/android/gms/internal/ads/sw;Lcom/google/android/gms/internal/ads/st;Lcom/google/android/gms/internal/ads/sv;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sm;->a:Landroid/webkit/WebViewClient;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sm;->a:Landroid/webkit/WebViewClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method protected final K()Lcom/google/android/gms/internal/ads/sb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->f:Lcom/google/android/gms/internal/ads/sb;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/ads/so;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sv;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/sv;->a(Lcom/google/android/gms/internal/ads/so;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/st;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "Ignore addJavascriptInterface due to low Android version."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/so;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/st;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/st;->b(Lcom/google/android/gms/internal/ads/so;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/ss;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/so;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sr;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/sr;->c(Lcom/google/android/gms/internal/ads/so;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/so;)Landroid/webkit/WebResourceResponse;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sw;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/sw;->d(Lcom/google/android/gms/internal/ads/so;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->i()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    const-string v1, "CoreWebView.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jn;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    return-void
.end method
