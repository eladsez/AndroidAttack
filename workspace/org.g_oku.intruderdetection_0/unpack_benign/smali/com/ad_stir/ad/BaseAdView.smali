.class public abstract Lcom/ad_stir/ad/BaseAdView;
.super Landroid/widget/LinearLayout;
.source "BaseAdView.java"


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x3c

.field private static FAILED:I = 0x0

.field private static final MIN_INTERVAL:I = 0x1e

.field private static NONE:I = 0x0

.field public static final NO_INTERVAL:I = 0x0

.field private static RECEIVED:I = 0x0

.field private static final TIMEOUT:I = 0xa


# instance fields
.field private adStatus:I

.field private center:Z

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private interval:J

.field private listener:Lcom/ad_stir/ad/AdListener;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private service:Ljava/util/concurrent/ScheduledExecutorService;

.field private ua:Ljava/lang/String;

.field private wv:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    sput v0, Lcom/ad_stir/ad/BaseAdView;->RECEIVED:I

    .line 209
    const/4 v0, -0x1

    sput v0, Lcom/ad_stir/ad/BaseAdView;->FAILED:I

    .line 210
    const/4 v0, 0x0

    sput v0, Lcom/ad_stir/ad/BaseAdView;->NONE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, "Android"

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->ua:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    .line 65
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    .line 211
    sget v0, Lcom/ad_stir/ad/BaseAdView;->NONE:I

    iput v0, p0, Lcom/ad_stir/ad/BaseAdView;->adStatus:I

    .line 323
    new-instance v0, Lcom/ad_stir/ad/BaseAdView$7;

    invoke-direct {v0, p0}, Lcom/ad_stir/ad/BaseAdView$7;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 360
    new-instance v0, Lcom/ad_stir/ad/BaseAdView$8;

    invoke-direct {v0, p0}, Lcom/ad_stir/ad/BaseAdView$8;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ad_stir/ad/BaseAdView;->center:Z

    .line 44
    invoke-static {p1}, Lcom/ad_stir/common/Http;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->ua:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v0, "Android"

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->ua:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    .line 65
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    .line 211
    sget v0, Lcom/ad_stir/ad/BaseAdView;->NONE:I

    iput v0, p0, Lcom/ad_stir/ad/BaseAdView;->adStatus:I

    .line 323
    new-instance v0, Lcom/ad_stir/ad/BaseAdView$7;

    invoke-direct {v0, p0}, Lcom/ad_stir/ad/BaseAdView$7;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 360
    new-instance v0, Lcom/ad_stir/ad/BaseAdView$8;

    invoke-direct {v0, p0}, Lcom/ad_stir/ad/BaseAdView$8;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ad_stir/ad/BaseAdView;->center:Z

    .line 50
    invoke-static {p1}, Lcom/ad_stir/common/Http;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->ua:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->handler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/ad_stir/ad/BaseAdView;)I
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 32
    iget v0, p0, Lcom/ad_stir/ad/BaseAdView;->adStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/ad_stir/ad/BaseAdView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/ad_stir/ad/BaseAdView;->adStatus:I

    return p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/ad_stir/ad/BaseAdView;->NONE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/ad_stir/ad/BaseAdView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebViewClient;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebChromeClient;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/ad_stir/ad/BaseAdView;->FAILED:I

    return v0
.end method

.method static synthetic access$300(Lcom/ad_stir/ad/BaseAdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ad_stir/ad/BaseAdView;->getHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/ad_stir/ad/BaseAdView;->RECEIVED:I

    return v0
.end method

.method static synthetic access$500(Lcom/ad_stir/ad/BaseAdView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ad_stir/ad/BaseAdView;->setWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ad_stir/ad/BaseAdView;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ad_stir/ad/BaseAdView;->load()V

    return-void
.end method

.method static synthetic access$700(Lcom/ad_stir/ad/BaseAdView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ad_stir/ad/BaseAdView;)Lcom/ad_stir/ad/AdListener;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->listener:Lcom/ad_stir/ad/AdListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ad_stir/ad/BaseAdView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/ad_stir/ad/BaseAdView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/ad/BaseAdView;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    return-object p1
.end method

.method private getHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v7, 0x0

    .line 240
    .local v7, "ret":Ljava/lang/String;
    const/4 v5, 0x0

    .line 242
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 243
    .local v9, "url_value":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 244
    .local v2, "conn":Ljava/net/URLConnection;
    instance-of v10, v2, Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_0

    .line 245
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 246
    .local v4, "httpconn":Ljava/net/HttpURLConnection;
    const-string v10, "User-Agent"

    iget-object v11, p0, Lcom/ad_stir/ad/BaseAdView;->ua:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v4    # "httpconn":Ljava/net/HttpURLConnection;
    :cond_0
    const/16 v10, 0x2710

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 249
    const/16 v10, 0x2710

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 251
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v1, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 255
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    const-string v10, "\n"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 259
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v8    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 260
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "url_value":Ljava/net/URL;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 268
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v7

    .line 258
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "url_value":Ljava/net/URL;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 263
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move-object v5, v6

    .line 266
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 264
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 265
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 267
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 264
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "url_value":Ljava/net/URL;
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 265
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 262
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 263
    :goto_3
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 266
    :cond_4
    :goto_4
    throw v10

    .line 264
    :catch_3
    move-exception v3

    .line 265
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 262
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "url_value":Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 259
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v9    # "url_value":Ljava/net/URL;
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method private load()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v0, "BaseAdView load"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->context:Landroid/content/Context;

    new-instance v1, Lcom/ad_stir/ad/BaseAdView$2;

    invoke-direct {v1, p0}, Lcom/ad_stir/ad/BaseAdView$2;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    invoke-static {v0, v1}, Lcom/ad_stir/common/GooglePlayId;->getGooglePlayId(Landroid/content/Context;Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;)V

    .line 192
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/ad_stir/ad/BaseAdView$3;

    invoke-direct {v1, p0}, Lcom/ad_stir/ad/BaseAdView$3;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    iget-wide v2, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ad_stir/ad/BaseAdView;->receiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v1, Lcom/ad_stir/ad/BaseAdView$1;

    invoke-direct {v1, p0}, Lcom/ad_stir/ad/BaseAdView$1;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    iput-object v1, p0, Lcom/ad_stir/ad/BaseAdView;->receiver:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ad_stir/ad/BaseAdView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method private setWebView(Ljava/lang/String;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ad_stir/ad/BaseAdView$6;

    invoke-direct {v1, p0, p1}, Lcom/ad_stir/ad/BaseAdView$6;-><init>(Lcom/ad_stir/ad/BaseAdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ad_stir/ad/BaseAdView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->receiver:Landroid/content/BroadcastReceiver;

    .line 122
    return-void
.end method


# virtual methods
.method public getInterval()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    return-wide v0
.end method

.method protected abstract getUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public isCenter()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/ad_stir/ad/BaseAdView;->center:Z

    return v0
.end method

.method protected makeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 388
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 413
    :goto_0
    return-object v1

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<!DOCTYPE html>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, "<html>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v1, "<head>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, "<meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, "<title></title>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "<style>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, "html{margin:0;padding:0;}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v1, "body{margin:0;padding:0;}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v1, "body > div > * {vertical-align:bottom;} \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Lcom/ad_stir/ad/BaseAdView;->isCenter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const-string v1, "body > div {text-align:center;} \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, "body > div > * {text-align:left;} \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_1
    const-string v1, "</style>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, "</head>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, "<div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, "</div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, "<script>window.addEventListener(\"load\",function(){window.setTimeout(function(){var ele=document.createElement(\"div\");ele.style.position=\"absolute\";ele.style.top=\"0px\";ele.style.left=\"0px\";ele.style.height=\"3px\";ele.style.width=\"3px\";ele.style.background=\"black\";ele.style.opacity=\"0.05\";document.body.appendChild(ele);window.setTimeout(function(){document.body.removeChild(ele);},1000);},1000);});</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, "</body>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/ad_stir/ad/BaseAdView;->stop()V

    .line 127
    invoke-direct {p0}, Lcom/ad_stir/ad/BaseAdView;->unregisterReceiver()V

    .line 128
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 129
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 87
    if-nez p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/ad_stir/ad/BaseAdView;->registerReceiver()V

    .line 89
    invoke-virtual {p0}, Lcom/ad_stir/ad/BaseAdView;->start()V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/ad_stir/ad/BaseAdView;->unregisterReceiver()V

    .line 92
    invoke-virtual {p0}, Lcom/ad_stir/ad/BaseAdView;->stop()V

    goto :goto_0
.end method

.method public setAdStatus(I)V
    .locals 2
    .param p1, "jsStatus"    # I

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseAdView setAdStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 216
    iget v0, p0, Lcom/ad_stir/ad/BaseAdView;->adStatus:I

    sget v1, Lcom/ad_stir/ad/BaseAdView;->NONE:I

    if-eq v0, v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iput p1, p0, Lcom/ad_stir/ad/BaseAdView;->adStatus:I

    .line 219
    iget v0, p0, Lcom/ad_stir/ad/BaseAdView;->adStatus:I

    sget v1, Lcom/ad_stir/ad/BaseAdView;->RECEIVED:I

    if-ne v0, v1, :cond_2

    .line 220
    const-string v0, "BaseAdView Loaded Ad"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ad_stir/ad/BaseAdView$4;

    invoke-direct {v1, p0}, Lcom/ad_stir/ad/BaseAdView$4;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 227
    :cond_2
    iget v0, p0, Lcom/ad_stir/ad/BaseAdView;->adStatus:I

    sget v1, Lcom/ad_stir/ad/BaseAdView;->FAILED:I

    if-ne v0, v1, :cond_0

    .line 228
    const-string v0, "BaseAdView No fill"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ad_stir/ad/BaseAdView$5;

    invoke-direct {v1, p0}, Lcom/ad_stir/ad/BaseAdView$5;-><init>(Lcom/ad_stir/ad/BaseAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCenter(Z)V
    .locals 0
    .param p1, "center"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/ad_stir/ad/BaseAdView;->center:Z

    .line 383
    return-void
.end method

.method public setInterval(J)V
    .locals 5
    .param p1, "sec"    # J

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x1e

    .line 72
    cmp-long v0, v3, p1

    if-nez v0, :cond_0

    .line 73
    iput-wide v3, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    .line 81
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseAdView interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 82
    return-void

    .line 74
    :cond_0
    cmp-long v0, v1, p1

    if-gez v0, :cond_1

    .line 75
    iput-wide p1, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    goto :goto_0

    .line 76
    :cond_1
    cmp-long v0, v1, p1

    if-gez v0, :cond_2

    .line 77
    iput-wide p1, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    goto :goto_0

    .line 79
    :cond_2
    iput-wide v1, p0, Lcom/ad_stir/ad/BaseAdView;->interval:J

    goto :goto_0
.end method

.method public setListener(Lcom/ad_stir/ad/AdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ad_stir/ad/AdListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ad_stir/ad/BaseAdView;->listener:Lcom/ad_stir/ad/AdListener;

    .line 63
    return-void
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, "BaseAdView start"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 135
    invoke-direct {p0}, Lcom/ad_stir/ad/BaseAdView;->load()V

    goto :goto_0
.end method

.method protected stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    const-string v0, "BaseAdView stop"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 312
    iput-object v1, p0, Lcom/ad_stir/ad/BaseAdView;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/ad_stir/ad/BaseAdView;->removeView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 316
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 317
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 318
    iget-object v0, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 319
    iput-object v1, p0, Lcom/ad_stir/ad/BaseAdView;->wv:Landroid/webkit/WebView;

    .line 321
    :cond_2
    return-void
.end method
