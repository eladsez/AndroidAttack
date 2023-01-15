.class public Ljp/beyond/sdk/utilities/ConnectionUtil;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/beyond/sdk/utilities/ConnectionUtil$CookieStoreInterface;,
        Ljp/beyond/sdk/utilities/ConnectionUtil$DefaultHttpConnectionRetryHandler;,
        Ljp/beyond/sdk/utilities/ConnectionUtil$HttpConnectionRetryHandler;,
        Ljp/beyond/sdk/utilities/ConnectionUtil$NetworkChangedReceiver;
    }
.end annotation


# static fields
.field private static final COOKIE_SPLIT_REG:Ljava/lang/String; = "[;,]"

.field public static final EXPIRY_KEY:Ljava/lang/String; = "expiry"

.field private static final TIMEOUT:I = 0x186a0

.field private static mUserAgentString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Ljp/beyond/sdk/utilities/ConnectionUtil;->mUserAgentString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookie()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 530
    .local v1, "cookieText":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 533
    .local v0, "cm":Landroid/webkit/CookieManager;
    const-string v7, ".exit-ad.com"

    invoke-virtual {v0, v7}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 538
    .end local v0    # "cm":Landroid/webkit/CookieManager;
    :goto_0
    if-nez v1, :cond_1

    .line 557
    :cond_0
    return-object v2

    .line 534
    :catch_0
    move-exception v3

    .line 535
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v9, "cookie error"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v7, "[;,]"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 543
    .local v5, "params":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 545
    .restart local v2    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v9, v5

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v4, v5, v7

    .line 547
    .local v4, "param":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 548
    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "values":[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 545
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 554
    :cond_2
    aget-object v10, v6, v8

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static getCookieExpiry(Ljava/util/Map;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .line 568
    .local v2, "expiryTime":J
    const-string v4, "expiry"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 570
    .local v1, "expiryText":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 573
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 577
    const-string v4, "expiry"

    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_0
    :goto_0
    return-wide v2

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    sget-object v4, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v5, "parse error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    const-string v4, "expiry"

    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 576
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v4

    .line 577
    const-string v5, "expiry"

    invoke-interface {p0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    throw v4
.end method

.method private getResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 305
    const-string v2, ""

    .line 306
    .local v2, "entityString":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 309
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 316
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 322
    :goto_0
    return-object v2

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    sget-object v3, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 313
    .local v0, "e":Landroid/net/ParseException;
    :try_start_4
    sget-object v3, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 317
    :catch_3
    move-exception v0

    .line 318
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 316
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 320
    :goto_1
    throw v3

    .line 317
    :catch_4
    move-exception v0

    .line 318
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v5, "response error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 318
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v4, "response error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 95
    sput-object p0, Ljp/beyond/sdk/utilities/ConnectionUtil;->mUserAgentString:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public isNetworkAvailable(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    const/4 v2, 0x0

    .local v2, "isMobile":Z
    const/4 v3, 0x0

    .line 251
    .local v3, "isWifi":Z
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 252
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 256
    .local v1, "infoAvailableNetworks":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 257
    array-length v8, v1

    move v7, v5

    :goto_0
    if-lt v7, v8, :cond_1

    .line 270
    :cond_0
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    :goto_1
    return v5

    .line 257
    :cond_1
    aget-object v4, v1, v7

    .line 259
    .local v4, "network":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v6, :cond_2

    .line 260
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 261
    const/4 v3, 0x1

    .line 263
    :cond_2
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_3

    .line 264
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 265
    const/4 v2, 0x1

    .line 257
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v4    # "network":Landroid/net/NetworkInfo;
    :cond_4
    move v5, v6

    .line 270
    goto :goto_1
.end method

.method public readJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 275
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 277
    .local v5, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 278
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 279
    .local v10, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 280
    .local v9, "statusCode":I
    const/16 v11, 0xc8

    if-ne v9, v11, :cond_1

    .line 281
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 282
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 283
    .local v2, "content":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 285
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 296
    .end local v2    # "content":Ljava/io/InputStream;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "statusCode":I
    .end local v10    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 286
    .restart local v2    # "content":Ljava/io/InputStream;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "statusCode":I
    .restart local v10    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 291
    .end local v2    # "content":Ljava/io/InputStream;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "statusCode":I
    .end local v10    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v3

    .line 292
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 289
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "statusCode":I
    .restart local v10    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_1
    :try_start_2
    const-string v11, "Bead Read JSON"

    const-string v12, "Failed to download file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 293
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "statusCode":I
    .end local v10    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v3

    .line 294
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public request(Landroid/content/Context;Ljava/lang/String;Ljp/beyond/sdk/utilities/ConnectionUtil$CookieStoreInterface;)Ljava/lang/String;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cookieStoreInterface"    # Ljp/beyond/sdk/utilities/ConnectionUtil$CookieStoreInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/HttpHostConnectException;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v16, 0x1

    .line 107
    .local v16, "status":Z
    const/4 v3, 0x0

    .line 108
    .local v3, "attemptNumber":I
    new-instance v8, Ljp/beyond/sdk/utilities/ConnectionUtil$DefaultHttpConnectionRetryHandler;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljp/beyond/sdk/utilities/ConnectionUtil$DefaultHttpConnectionRetryHandler;-><init>(Ljp/beyond/sdk/utilities/ConnectionUtil;)V

    .line 110
    .local v8, "handler":Ljp/beyond/sdk/utilities/ConnectionUtil$HttpConnectionRetryHandler;
    const/4 v15, 0x0

    .line 111
    .local v15, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v4, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 201
    .end local v15    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v15

    .line 115
    .restart local v15    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Ljp/beyond/sdk/utilities/ConnectionUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 118
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 122
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 125
    .local v13, "request":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_2

    .line 126
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Ljp/beyond/sdk/utilities/ConnectionUtil$CookieStoreInterface;->setCookie(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V

    .line 130
    :cond_2
    sget-object v20, Ljp/beyond/sdk/utilities/ConnectionUtil;->mUserAgentString:Ljava/lang/String;

    if-eqz v20, :cond_3

    .line 131
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    .line 132
    .local v11, "param":Lorg/apache/http/params/HttpParams;
    const-string v20, "http.useragent"

    sget-object v21, Ljp/beyond/sdk/utilities/ConnectionUtil;->mUserAgentString:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 136
    .end local v11    # "param":Lorg/apache/http/params/HttpParams;
    :cond_3
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    .line 137
    .local v9, "httpParams":Lorg/apache/http/params/HttpParams;
    const v20, 0x186a0

    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 138
    const v20, 0x186a0

    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 165
    :cond_4
    :goto_1
    if-nez v16, :cond_5

    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 167
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 168
    :try_start_0
    invoke-interface {v5, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 169
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    .line 170
    .local v18, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 171
    .local v17, "statusCode":I
    const/16 v20, 0xc8

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 172
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 173
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 174
    .local v6, "content":Ljava/io/InputStream;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 176
    .local v12, "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 180
    if-eqz p3, :cond_6

    .line 181
    move-object v0, v5

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljp/beyond/sdk/utilities/ConnectionUtil$CookieStoreInterface;->receiveCookie(Landroid/content/Context;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 186
    .end local v6    # "content":Ljava/io/InputStream;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :cond_6
    :goto_3
    const/16 v16, 0x0

    goto :goto_1

    .line 177
    .restart local v6    # "content":Ljava/io/InputStream;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :cond_7
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 187
    .end local v6    # "content":Ljava/io/InputStream;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "statusCode":I
    .end local v18    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v19

    .line 189
    .local v19, "t":Ljava/lang/Throwable;
    if-eqz v8, :cond_9

    .line 190
    move-object/from16 v0, v19

    invoke-interface {v8, v0, v3}, Ljp/beyond/sdk/utilities/ConnectionUtil$HttpConnectionRetryHandler;->shouldRetry(Ljava/lang/Throwable;I)Z

    move-result v16

    .line 191
    if-nez v16, :cond_4

    .line 193
    sget-object v20, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "request error :"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    .end local v19    # "t":Ljava/lang/Throwable;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "statusCode":I
    .restart local v18    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_8
    :try_start_1
    sget-object v20, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v21, "Failed to download JSON file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 197
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "statusCode":I
    .end local v18    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v19    # "t":Ljava/lang/Throwable;
    :cond_9
    sget-object v20, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "request error :"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public requestImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 480
    const/4 v1, 0x0

    .line 482
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v2, v1

    .line 518
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 486
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    .line 490
    .local v3, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 491
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 492
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 493
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 495
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 497
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_2

    .line 499
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 500
    const-string v7, "BEAD HD"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Width="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :cond_2
    if-eqz v3, :cond_3

    .line 514
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    move-object v2, v1

    .line 518
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 508
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 509
    .local v4, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    .line 513
    if-eqz v3, :cond_3

    .line 514
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 510
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    .line 511
    .local v4, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 513
    if-eqz v3, :cond_3

    .line 514
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 512
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 513
    if-eqz v3, :cond_4

    .line 514
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 516
    :cond_4
    throw v7
.end method

.method public saveBitmaptoCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 394
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 396
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 399
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 401
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 402
    const/4 v8, 0x0

    invoke-virtual {p1, p3, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 404
    const/16 v8, 0x800

    new-array v1, v8, [B

    .line 405
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 407
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_2

    .line 410
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 411
    const-string v8, "Bead"

    invoke-static {v8, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 421
    if-eqz v5, :cond_0

    .line 423
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 430
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 415
    :cond_1
    :goto_2
    const/4 v8, 0x1

    .line 437
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_3
    return v8

    .line 408
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_2
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v8, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 416
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 417
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_4
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 421
    if-eqz v5, :cond_3

    .line 423
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 428
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 430
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_5
    move v8, v9

    .line 437
    goto :goto_3

    .line 424
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 425
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 431
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 432
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 424
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v2

    .line 425
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 431
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 432
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 418
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 419
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 421
    if-eqz v5, :cond_5

    .line 423
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 428
    :cond_5
    :goto_6
    if-eqz v3, :cond_4

    .line 430
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    .line 431
    :catch_6
    move-exception v2

    .line 432
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 424
    :catch_7
    move-exception v2

    .line 425
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 420
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 421
    if-eqz v5, :cond_6

    .line 423
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 428
    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 430
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 435
    :cond_7
    :goto_8
    throw v8

    .line 424
    :catch_8
    move-exception v2

    .line 425
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 431
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 432
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method

.method public saveHtml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "htmlFileName"    # Ljava/lang/String;
    .param p3, "imageFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<html><body style=\"padding:0;margin:0\"><img width=\"100%\" src=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"></body></html>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "html":Ljava/lang/String;
    const/4 v1, 0x0

    .line 453
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 454
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    if-eqz v1, :cond_0

    .line 464
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 470
    :cond_1
    :goto_1
    return v3

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 457
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    if-eqz v1, :cond_1

    .line 464
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 465
    :catch_2
    move-exception v0

    .line 466
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 459
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 460
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 462
    if-eqz v1, :cond_1

    .line 464
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 465
    :catch_4
    move-exception v0

    .line 466
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 461
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 462
    if-eqz v1, :cond_2

    .line 464
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 469
    :cond_2
    :goto_2
    throw v3

    .line 465
    :catch_5
    move-exception v0

    .line 466
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public saveImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 335
    const/4 v3, 0x0

    .line 336
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 338
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 340
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 343
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 345
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 346
    const/4 v9, 0x0

    invoke-virtual {p1, p3, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 348
    const/16 v9, 0x800

    new-array v1, v9, [B

    .line 349
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 351
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_3

    .line 354
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    if-eqz v5, :cond_0

    .line 364
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 369
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 371
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 356
    :cond_1
    :goto_2
    const/4 v8, 0x1

    .line 378
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    :cond_2
    :goto_3
    return v8

    .line 352
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_3
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v9, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 357
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_4
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    if-eqz v5, :cond_4

    .line 364
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 369
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_4
    :goto_4
    if-eqz v3, :cond_2

    .line 371
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 372
    :catch_1
    move-exception v2

    .line 373
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 365
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 366
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 372
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 373
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 365
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v2

    .line 366
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 359
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 360
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 362
    if-eqz v5, :cond_5

    .line 364
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 369
    :cond_5
    :goto_5
    if-eqz v3, :cond_2

    .line 371
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 372
    :catch_6
    move-exception v2

    .line 373
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 365
    :catch_7
    move-exception v2

    .line 366
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 361
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 362
    if-eqz v5, :cond_6

    .line 364
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 369
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 371
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 376
    :cond_7
    :goto_7
    throw v8

    .line 365
    :catch_8
    move-exception v2

    .line 366
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 372
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 373
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method
