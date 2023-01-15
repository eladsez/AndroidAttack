.class public Lcom/ad_stir/webview/MraidWebView;
.super Landroid/webkit/WebView;
.source "MraidWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ad_stir/webview/MraidWebView$Listener;,
        Lcom/ad_stir/webview/MraidWebView$MraidDialog;,
        Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI11;,
        Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;,
        Lcom/ad_stir/webview/MraidWebView$Type;
    }
.end annotation


# static fields
.field public static final SDK_VER:I = 0x4e20

.field public static final SUPPORT:[Ljava/lang/String;

.field public static TEST:Z


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adstir:Lcom/ad_stir/webview/AdstirMraidView;

.field private final defaultH:I

.field private final defaultW:I

.field private dialog:Landroid/app/Dialog;

.field private final dialogListener:Ljava/lang/Runnable;

.field private init:Z

.field public listener:Lcom/ad_stir/webview/MraidWebView$Listener;

.field private loading:Z

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mraid:Z

.field private final readyString:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sendJSList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shown:Z

.field private wv2:Lcom/ad_stir/webview/MraidWebView;

.field private final wv2Listener:Lcom/ad_stir/webview/MraidWebView$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lcom/ad_stir/webview/MraidWebView;->TEST:Z

    .line 47
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "init"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "useMraid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "resize"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "openModalThisWebView"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "openModalNewWebView"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "openBrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "openVideo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "closeWebView"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "reload"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ad_stir/webview/MraidWebView;->SUPPORT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/ad_stir/webview/AdstirMraidView;Lcom/ad_stir/webview/MraidWebView$Type;IIZ)V
    .locals 9
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "owner"    # Lcom/ad_stir/webview/AdstirMraidView;
    .param p3, "type"    # Lcom/ad_stir/webview/MraidWebView$Type;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "button"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 131
    iput-boolean v5, p0, Lcom/ad_stir/webview/MraidWebView;->shown:Z

    .line 240
    new-instance v2, Lcom/ad_stir/webview/MraidWebView$2;

    invoke-direct {v2, p0}, Lcom/ad_stir/webview/MraidWebView$2;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    iput-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 346
    iput-boolean v5, p0, Lcom/ad_stir/webview/MraidWebView;->mraid:Z

    .line 347
    iput-boolean v5, p0, Lcom/ad_stir/webview/MraidWebView;->loading:Z

    .line 348
    iput-object v7, p0, Lcom/ad_stir/webview/MraidWebView;->sendJSList:Ljava/util/Queue;

    .line 349
    iput-boolean v5, p0, Lcom/ad_stir/webview/MraidWebView;->init:Z

    .line 597
    new-instance v2, Lcom/ad_stir/webview/MraidWebView$4;

    invoke-direct {v2, p0}, Lcom/ad_stir/webview/MraidWebView$4;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    iput-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->wv2Listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    .line 626
    new-instance v2, Lcom/ad_stir/webview/MraidWebView$5;

    invoke-direct {v2, p0}, Lcom/ad_stir/webview/MraidWebView$5;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    iput-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->dialogListener:Ljava/lang/Runnable;

    .line 667
    iput-object v7, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    .line 90
    iput-object p1, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    .line 91
    iput-object p2, p0, Lcom/ad_stir/webview/MraidWebView;->adstir:Lcom/ad_stir/webview/AdstirMraidView;

    .line 92
    iput p5, p0, Lcom/ad_stir/webview/MraidWebView;->defaultH:I

    .line 93
    iput p4, p0, Lcom/ad_stir/webview/MraidWebView;->defaultW:I

    .line 94
    invoke-direct {p0, p4, p5}, Lcom/ad_stir/webview/MraidWebView;->size(II)V

    .line 95
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->isShown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ad_stir/webview/MraidWebView;->shown:Z

    .line 97
    const-string v1, "ready({"

    .line 98
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sdk:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/ad_stir/webview/MraidWebView$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "customCloseButton:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p6, :cond_2

    const-string v2, "true"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "defaultWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "defaultHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 104
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deviceWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/ad_stir/webview/MraidWebView;->pxDip(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deviceHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/ad_stir/webview/MraidWebView;->pxDip(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "})"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    iput-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->readyString:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 111
    invoke-virtual {p0, v5}, Lcom/ad_stir/webview/MraidWebView;->setScrollBarStyle(I)V

    .line 112
    invoke-virtual {p0, v5}, Lcom/ad_stir/webview/MraidWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 113
    invoke-virtual {p0, v5}, Lcom/ad_stir/webview/MraidWebView;->setBackgroundColor(I)V

    .line 114
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-wide/32 v3, 0x100000

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_0

    .line 118
    invoke-virtual {p0, v6, v7}, Lcom/ad_stir/webview/MraidWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 120
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 123
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_3

    .line 124
    new-instance v2, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI11;

    invoke-direct {v2, p0}, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI11;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    invoke-virtual {p0, v2}, Lcom/ad_stir/webview/MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    :goto_1
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v2}, Lcom/ad_stir/webview/MraidWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 129
    return-void

    .line 100
    .end local v0    # "display":Landroid/view/Display;
    :cond_2
    const-string v2, "false"

    goto/16 :goto_0

    .line 126
    .restart local v0    # "display":Landroid/view/Display;
    :cond_3
    new-instance v2, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;

    invoke-direct {v2, p0}, Lcom/ad_stir/webview/MraidWebView$WebViewClientAPI10;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    invoke-virtual {p0, v2}, Lcom/ad_stir/webview/MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 131
    iput-boolean v1, p0, Lcom/ad_stir/webview/MraidWebView;->shown:Z

    .line 240
    new-instance v0, Lcom/ad_stir/webview/MraidWebView$2;

    invoke-direct {v0, p0}, Lcom/ad_stir/webview/MraidWebView$2;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 346
    iput-boolean v1, p0, Lcom/ad_stir/webview/MraidWebView;->mraid:Z

    .line 347
    iput-boolean v1, p0, Lcom/ad_stir/webview/MraidWebView;->loading:Z

    .line 348
    iput-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->sendJSList:Ljava/util/Queue;

    .line 349
    iput-boolean v1, p0, Lcom/ad_stir/webview/MraidWebView;->init:Z

    .line 597
    new-instance v0, Lcom/ad_stir/webview/MraidWebView$4;

    invoke-direct {v0, p0}, Lcom/ad_stir/webview/MraidWebView$4;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->wv2Listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    .line 626
    new-instance v0, Lcom/ad_stir/webview/MraidWebView$5;

    invoke-direct {v0, p0}, Lcom/ad_stir/webview/MraidWebView$5;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->dialogListener:Ljava/lang/Runnable;

    .line 667
    iput-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    .line 78
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/ad_stir/webview/MraidWebView;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->sendJSList:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ad_stir/webview/MraidWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->init:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/ad_stir/webview/MraidWebView;IIZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ad_stir/webview/MraidWebView;->openModalNewWebView(IIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ad_stir/webview/MraidWebView;->openVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ad_stir/webview/MraidWebView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ad_stir/webview/MraidWebView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ad_stir/webview/MraidWebView;->pxDip(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/ad_stir/webview/MraidWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->loading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/ad_stir/webview/MraidWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/ad_stir/webview/MraidWebView;->loading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/ad_stir/webview/MraidWebView;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ad_stir/webview/MraidWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->mraid:Z

    return v0
.end method

.method static synthetic access$500(Lcom/ad_stir/webview/MraidWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ad_stir/webview/MraidWebView;->openBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ad_stir/webview/MraidWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ad_stir/webview/MraidWebView;->init()V

    return-void
.end method

.method static synthetic access$700(Lcom/ad_stir/webview/MraidWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ad_stir/webview/MraidWebView;->useMraid()V

    return-void
.end method

.method static synthetic access$800(Lcom/ad_stir/webview/MraidWebView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/ad_stir/webview/MraidWebView;->resize(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/ad_stir/webview/MraidWebView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/MraidWebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/ad_stir/webview/MraidWebView;->openModalThisWebView(II)V

    return-void
.end method

.method private dipPx(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/ad_stir/common/Dip;->dipToPx(Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method public static gerMraidJS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/ad_stir/webview/MraidWebView;->TEST:Z

    if-eqz v0, :cond_0

    const-string v0, "http://test.ad-stir.com/tmp/mraidjs_android.php2"

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://js.ad-stir.com/js/mraid_android.js"

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->init:Z

    .line 497
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->readyString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    .line 498
    iget-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->shown:Z

    if-eqz v0, :cond_1

    .line 499
    const-string v0, "setViewable(true)"

    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v0}, Lcom/ad_stir/webview/MraidWebView$Listener;->mraidInit()V

    .line 506
    :cond_0
    return-void

    .line 501
    :cond_1
    const-string v0, "setViewable(false)"

    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final mraidOn()Z
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 647
    const-string v0, "android.intent.action.VIEW"

    const-string v1, "text/html"

    invoke-direct {p0, v0, p1, v1}, Lcom/ad_stir/webview/MraidWebView;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method private openModalNewWebView(IIZLjava/lang/String;)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "button"    # Z
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 581
    new-instance v0, Lcom/ad_stir/webview/MraidWebView;

    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    sget-object v3, Lcom/ad_stir/webview/MraidWebView$Type;->inline2:Lcom/ad_stir/webview/MraidWebView$Type;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ad_stir/webview/MraidWebView;-><init>(Landroid/app/Activity;Lcom/ad_stir/webview/AdstirMraidView;Lcom/ad_stir/webview/MraidWebView$Type;IIZ)V

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->wv2:Lcom/ad_stir/webview/MraidWebView;

    .line 584
    new-instance v0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;

    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->wv2:Lcom/ad_stir/webview/MraidWebView;

    iget-object v3, p0, Lcom/ad_stir/webview/MraidWebView;->dialogListener:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/ad_stir/webview/MraidWebView$MraidDialog;-><init>(Landroid/app/Activity;Lcom/ad_stir/webview/MraidWebView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->dialog:Landroid/app/Dialog;

    .line 585
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->wv2:Lcom/ad_stir/webview/MraidWebView;

    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->wv2Listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    iput-object v1, v0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    .line 587
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->wv2:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v0, p4}, Lcom/ad_stir/webview/MraidWebView;->loadUrl(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->wv2:Lcom/ad_stir/webview/MraidWebView;

    invoke-direct {v0, p1, p2}, Lcom/ad_stir/webview/MraidWebView;->size(II)V

    .line 591
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 593
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v0}, Lcom/ad_stir/webview/MraidWebView$Listener;->openModal()V

    .line 595
    :cond_0
    return-void
.end method

.method private openModalThisWebView(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 517
    new-instance v0, Lcom/ad_stir/webview/MraidWebView$MraidDialog;

    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->dialogListener:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p0, v2}, Lcom/ad_stir/webview/MraidWebView$MraidDialog;-><init>(Landroid/app/Activity;Lcom/ad_stir/webview/MraidWebView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->dialog:Landroid/app/Dialog;

    .line 519
    invoke-direct {p0, p1, p2}, Lcom/ad_stir/webview/MraidWebView;->size(II)V

    .line 521
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 523
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v0}, Lcom/ad_stir/webview/MraidWebView$Listener;->openModal()V

    .line 525
    :cond_0
    return-void
.end method

.method private openVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 651
    const-string v0, "android.intent.action.VIEW"

    const-string v1, "video/mp4"

    invoke-direct {p0, v0, p1, v1}, Lcom/ad_stir/webview/MraidWebView;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method private pxDip(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/ad_stir/common/Dip;->pxToDip(Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 530
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->receiver:Landroid/content/BroadcastReceiver;

    .line 533
    new-instance v1, Lcom/ad_stir/webview/MraidWebView$3;

    invoke-direct {v1, p0}, Lcom/ad_stir/webview/MraidWebView$3;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    iput-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->receiver:Landroid/content/BroadcastReceiver;

    .line 543
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 544
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 546
    return-void
.end method

.method private resize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/ad_stir/webview/MraidWebView;->size(II)V

    .line 380
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->adstir:Lcom/ad_stir/webview/AdstirMraidView;

    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 382
    .local v0, "p":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 383
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "p":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->adstir:Lcom/ad_stir/webview/AdstirMraidView;

    invoke-virtual {v2, p0}, Lcom/ad_stir/webview/AdstirMraidView;->addView(Landroid/view/View;)V

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->wv2:Lcom/ad_stir/webview/MraidWebView;

    if-eqz v2, :cond_3

    .line 389
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->wv2:Lcom/ad_stir/webview/MraidWebView;

    .line 390
    .local v1, "wv2":Lcom/ad_stir/webview/MraidWebView;
    invoke-virtual {v1}, Lcom/ad_stir/webview/MraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 391
    .restart local v0    # "p":Landroid/view/ViewParent;
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 392
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "p":Landroid/view/ViewParent;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    :cond_2
    iput-object v3, p0, Lcom/ad_stir/webview/MraidWebView;->wv2:Lcom/ad_stir/webview/MraidWebView;

    .line 395
    invoke-virtual {v1}, Lcom/ad_stir/webview/MraidWebView;->destroy()V

    .line 397
    .end local v1    # "wv2":Lcom/ad_stir/webview/MraidWebView;
    :cond_3
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_5

    .line 398
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v2, :cond_4

    .line 399
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v2}, Lcom/ad_stir/webview/MraidWebView$Listener;->returnApp()V

    .line 400
    :cond_4
    iget-object v2, p0, Lcom/ad_stir/webview/MraidWebView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 401
    iput-object v3, p0, Lcom/ad_stir/webview/MraidWebView;->dialog:Landroid/app/Dialog;

    .line 403
    :cond_5
    return-void
.end method

.method private sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "mime"    # Ljava/lang/String;

    .prologue
    .line 635
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_1

    .line 637
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 642
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v1}, Lcom/ad_stir/webview/MraidWebView$Listener;->openOther()V

    .line 644
    :cond_0
    return-void

    .line 639
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private size(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 69
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/ad_stir/webview/MraidWebView;->dipPx(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/ad_stir/webview/MraidWebView;->dipPx(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/MraidWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ad_stir/webview/MraidWebView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 550
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->receiver:Landroid/content/BroadcastReceiver;

    .line 551
    return-void
.end method

.method private useMraid()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->mraid:Z

    .line 374
    return-void
.end method


# virtual methods
.method public closeWebView()V
    .locals 1

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->stop()V

    .line 658
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v0}, Lcom/ad_stir/webview/MraidWebView$Listener;->returnApp()V

    .line 660
    :cond_0
    return-void
.end method

.method public injectJS()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ad_stir/webview/MraidWebView$1;

    invoke-direct {v1, p0}, Lcom/ad_stir/webview/MraidWebView$1;-><init>(Lcom/ad_stir/webview/MraidWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public isDialog()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 361
    iput-boolean v1, p0, Lcom/ad_stir/webview/MraidWebView;->mraid:Z

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->loading:Z

    .line 363
    iput-boolean v1, p0, Lcom/ad_stir/webview/MraidWebView;->init:Z

    .line 364
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->sendJSList:Ljava/util/Queue;

    .line 365
    const-string v3, "text/html"

    const-string v4, "UTF8"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public loadJS(Ljava/lang/String;)V
    .locals 0
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 353
    iput-boolean v1, p0, Lcom/ad_stir/webview/MraidWebView;->mraid:Z

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->loading:Z

    .line 355
    iput-boolean v1, p0, Lcom/ad_stir/webview/MraidWebView;->init:Z

    .line 356
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->sendJSList:Ljava/util/Queue;

    .line 357
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/ad_stir/webview/MraidWebView;->unregisterReceiver()V

    .line 567
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 568
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 136
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 137
    iget-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->shown:Z

    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->isShown()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 138
    iget-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->shown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->shown:Z

    .line 139
    iget-boolean v0, p0, Lcom/ad_stir/webview/MraidWebView;->shown:Z

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "setViewable(true)"

    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_1
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "setViewable(false)"

    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/MraidWebView;->queueJS(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 556
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 557
    if-nez p1, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/ad_stir/webview/MraidWebView;->registerReceiver()V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/ad_stir/webview/MraidWebView;->unregisterReceiver()V

    goto :goto_0
.end method

.method public queueJS(Ljava/lang/String;)V
    .locals 1
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->sendJSList:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->sendJSList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->injectJS()V

    .line 151
    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 1
    .param p1, "reloadparam"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    invoke-interface {v0, p1}, Lcom/ad_stir/webview/MraidWebView$Listener;->reload(Ljava/lang/String;)V

    .line 665
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->stopLoading()V

    .line 671
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/MraidWebView;->loadUrl(Ljava/lang/String;)V

    .line 672
    iget v0, p0, Lcom/ad_stir/webview/MraidWebView;->defaultW:I

    iget v1, p0, Lcom/ad_stir/webview/MraidWebView;->defaultH:I

    invoke-direct {p0, v0, v1}, Lcom/ad_stir/webview/MraidWebView;->resize(II)V

    .line 673
    invoke-virtual {p0}, Lcom/ad_stir/webview/MraidWebView;->stopLoading()V

    .line 674
    return-void
.end method
