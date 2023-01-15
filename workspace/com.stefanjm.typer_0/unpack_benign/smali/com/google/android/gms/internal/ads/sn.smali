.class final Lcom/google/android/gms/internal/ads/sn;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sr;

.field private final b:Lcom/google/android/gms/internal/ads/sw;

.field private final c:Lcom/google/android/gms/internal/ads/st;

.field private final d:Lcom/google/android/gms/internal/ads/sv;

.field private final e:Lcom/google/android/gms/internal/ads/sx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sr;Lcom/google/android/gms/internal/ads/sw;Lcom/google/android/gms/internal/ads/st;Lcom/google/android/gms/internal/ads/sv;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/sx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sn;->e:Lcom/google/android/gms/internal/ads/sx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sn;->a:Lcom/google/android/gms/internal/ads/sr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sn;->b:Lcom/google/android/gms/internal/ads/sw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sn;->c:Lcom/google/android/gms/internal/ads/st;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/sn;->d:Lcom/google/android/gms/internal/ads/sv;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/so;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sn;->a:Lcom/google/android/gms/internal/ads/sr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/sr;->c(Lcom/google/android/gms/internal/ads/so;)Z

    move-result p1

    return p1
.end method

.method private final b(Lcom/google/android/gms/internal/ads/so;)Landroid/webkit/WebResourceResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sn;->b:Lcom/google/android/gms/internal/ads/sw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/sw;->d(Lcom/google/android/gms/internal/ads/so;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sn;->c:Lcom/google/android/gms/internal/ads/st;

    new-instance v0, Lcom/google/android/gms/internal/ads/so;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/so;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/st;->b(Lcom/google/android/gms/internal/ads/so;)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sn;->d:Lcom/google/android/gms/internal/ads/sv;

    new-instance v0, Lcom/google/android/gms/internal/ads/so;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/so;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/sv;->a(Lcom/google/android/gms/internal/ads/so;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sn;->e:Lcom/google/android/gms/internal/ads/sx;

    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/ads/sx;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sn;->e:Lcom/google/android/gms/internal/ads/sx;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/sx;->a(Landroid/net/http/SslError;)V

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/so;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/so;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sn;->b(Lcom/google/android/gms/internal/ads/so;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/so;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/so;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sn;->b(Lcom/google/android/gms/internal/ads/so;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/so;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/so;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sn;->a(Lcom/google/android/gms/internal/ads/so;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/so;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/so;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/sn;->a(Lcom/google/android/gms/internal/ads/so;)Z

    move-result p1

    return p1
.end method
