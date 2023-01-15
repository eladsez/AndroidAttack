.class public Lcom/ievyhrdnoniovof/AdWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;,
        Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;
    }
.end annotation


# instance fields
.field private synthetic A:Landroid/app/ProgressDialog;

.field private synthetic B:Landroid/widget/RelativeLayout;

.field private synthetic E:Z

.field private synthetic G:Lorg/json/JSONObject;

.field private synthetic H:Z

.field private synthetic I:Ljava/lang/String;

.field private synthetic M:Landroid/webkit/WebSettings;

.field private synthetic b:Landroid/content/Context;

.field private synthetic d:Lcom/ievyhrdnoniovof/AdController;

.field private synthetic g:Lcom/ievyhrdnoniovof/AdListener;

.field private synthetic k:Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;

.field private synthetic l:Z

.field private synthetic m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->l:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->H:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    iput v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->m:I

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/ievyhrdnoniovof/AdWebView;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->l:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->H:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    iput v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->m:I

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/ievyhrdnoniovof/AdWebView;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdController;ZLcom/ievyhrdnoniovof/AdListener;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdController;
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Lcom/ievyhrdnoniovof/AdListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->l:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->H:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    iput v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->m:I

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdWebView;->d:Lcom/ievyhrdnoniovof/AdController;

    iput-boolean p3, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    iput-object p4, p0, Lcom/ievyhrdnoniovof/AdWebView;->g:Lcom/ievyhrdnoniovof/AdListener;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdWebView;->l()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdController;ZLcom/ievyhrdnoniovof/AdListener;Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdController;
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Lcom/ievyhrdnoniovof/AdListener;
    .param p5, "arg4"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->l:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->H:Z

    iput-boolean v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    iput v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->m:I

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdWebView;->d:Lcom/ievyhrdnoniovof/AdController;

    iput-boolean p3, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    iput-object p4, p0, Lcom/ievyhrdnoniovof/AdWebView;->g:Lcom/ievyhrdnoniovof/AdListener;

    iput-object p5, p0, Lcom/ievyhrdnoniovof/AdWebView;->B:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdWebView;->l()V

    return-void
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdWebView;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->G:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic A(Lcom/ievyhrdnoniovof/AdWebView;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;
    .param p1, "arg1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    return p1
.end method

.method static synthetic D(Lcom/ievyhrdnoniovof/AdWebView;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    return v0
.end method

.method static synthetic F(Lcom/ievyhrdnoniovof/AdWebView;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->H:Z

    return v0
.end method

.method static synthetic G(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->A:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic I(Lcom/ievyhrdnoniovof/AdWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic L(Lcom/ievyhrdnoniovof/AdWebView;)I
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    iget v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->m:I

    return v0
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;
    .param p1, "arg1"    # Landroid/app/ProgressDialog;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->A:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->I:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic l()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->M:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->M:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->M:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->M:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    new-instance v0, Lcom/ievyhrdnoniovof/AdJSInterface;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdWebView;->d:Lcom/ievyhrdnoniovof/AdController;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdWebView;->g:Lcom/ievyhrdnoniovof/AdListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/ievyhrdnoniovof/AdJSInterface;-><init>(Landroid/content/Context;Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdListener;)V

    const-string v1, "?\u0001<\u0016\'"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ievyhrdnoniovof/AdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->M:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    :cond_0
    new-instance v0, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdWebView;->B:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/ievyhrdnoniovof/AdWebView$AdWebChromeClient;-><init>(Lcom/ievyhrdnoniovof/AdWebView;Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->d:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {v0, p0, v1, p0}, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;-><init>(Lcom/ievyhrdnoniovof/AdWebView;Lcom/ievyhrdnoniovof/AdController;Lcom/ievyhrdnoniovof/AdWebView;)V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->k:Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->k:Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;

    invoke-virtual {p0, v0}, Lcom/ievyhrdnoniovof/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private synthetic l(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "arg0"    # Landroid/util/AttributeSet;

    .prologue
    if-eqz p1, :cond_0

    new-instance v1, Lcom/ievyhrdnoniovof/AdController;

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    const-string v3, "\u0000&\u00107\u001a,\u001d*\u0017"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ievyhrdnoniovof/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdWebView;->d:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Lcom/ievyhrdnoniovof/AdWebView;->l()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/ievyhrdnoniovof/AdWebView;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;
    .param p1, "arg1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->H:Z

    return p1
.end method

.method static synthetic m(Lcom/ievyhrdnoniovof/AdWebView;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/ievyhrdnoniovof/AdWebView;

    .prologue
    iget-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->l:Z

    return v0
.end method


# virtual methods
.method public setLoadingURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->I:Ljava/lang/String;

    return-void
.end method

.method public setResults(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "arg0"    # Lorg/json/JSONObject;

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->k:Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdWebView$AdWebClient;->reset()V

    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdWebView;->G:Lorg/json/JSONObject;

    :try_start_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->G:Lorg/json/JSONObject;

    const-string v1, "\"\u0017+\u0007.\u001f"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z

    :try_start_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->G:Lorg/json/JSONObject;

    const-string v1, "\u00060\u0016-\u00127\u001a5\u0016"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "B"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->E:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->G:Lorg/json/JSONObject;

    const-string v1, "\u0012\'\u001e\"\u000b \u001f*\u0010(\u0001&\u0017*\u0001&\u00107\u0000"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->m:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public showAd()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdWebView;->d:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->loadAd()V

    return-void
.end method
