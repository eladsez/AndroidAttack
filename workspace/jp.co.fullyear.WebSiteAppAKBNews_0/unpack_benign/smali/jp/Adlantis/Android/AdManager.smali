.class public Ljp/Adlantis/Android/AdManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;,
        Ljp/Adlantis/Android/AdManager$AdlantisInvalidPublisherIDException;,
        Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;,
        Ljp/Adlantis/Android/AdManager$AdManagerCallback;,
        Ljp/Adlantis/Android/AdManager$AdManagerHolder;
    }
.end annotation


# static fields
.field private static DEBUG_TASK:Ljava/lang/String; = null

.field public static final byline:Ljava/lang/String; = "Ads by AdLantis"


# instance fields
.field private _adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

.field private _defaultParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _testAdRequestUrls:[Ljava/lang/String;

.field public adDisplayInterval:J

.field public adFetchInterval:J

.field public adIndex:I

.field private ads:[Ljp/Adlantis/Android/AdlantisAd;

.field private asyncImageLoader:Ljp/Adlantis/Android/AsyncImageLoader;

.field private connectionChangeReceiverRegistered:Z

.field private conversionTag:Ljava/lang/String;

.field private conversionTagSent:Z

.field private isDoingAdRequest:Z

.field private keywords:Ljava/lang/String;

.field private publisherID:Ljava/lang/String;

.field private testAdRequestUrlIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AdManager"

    sput-object v0, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Ljp/Adlantis/Android/AdManager;->adIndex:I

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Ljp/Adlantis/Android/AdManager;->adFetchInterval:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ljp/Adlantis/Android/AdManager;->adDisplayInterval:J

    new-instance v0, Ljp/Adlantis/Android/AsyncImageLoader;

    invoke-direct {v0}, Ljp/Adlantis/Android/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Ljp/Adlantis/Android/AdManager;->asyncImageLoader:Ljp/Adlantis/Android/AsyncImageLoader;

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/Adlantis/Android/AdManager;->conversionTag:Ljava/lang/String;

    iput-boolean v2, p0, Ljp/Adlantis/Android/AdManager;->conversionTagSent:Z

    iput-boolean v2, p0, Ljp/Adlantis/Android/AdManager;->connectionChangeReceiverRegistered:Z

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->isGreeSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljp/Adlantis/Android/GreeAdConnection;

    invoke-direct {v0}, Ljp/Adlantis/Android/GreeAdConnection;-><init>()V

    iput-object v0, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljp/Adlantis/Android/AdLantisConnection;

    invoke-direct {v0}, Ljp/Adlantis/Android/AdLantisConnection;-><init>()V

    iput-object v0, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljp/Adlantis/Android/AdManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljp/Adlantis/Android/AdManager;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljp/Adlantis/Android/AdManager;)Z
    .locals 1

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdManager;->conversionTagSent:Z

    return v0
.end method

.method static synthetic access$302(Ljp/Adlantis/Android/AdManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljp/Adlantis/Android/AdManager;->conversionTagSent:Z

    return p1
.end method

.method static synthetic access$400(Ljp/Adlantis/Android/AdManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->conversionTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Ljp/Adlantis/Android/AdManager;Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljp/Adlantis/Android/AdManager;->doAdRequest(Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)Z

    move-result v0

    return v0
.end method

.method public static adCountForOrientation([Ljp/Adlantis/Android/AdlantisAd;I)I
    .locals 1

    invoke-static {p0, p1}, Ljp/Adlantis/Android/AdManager;->filteredAdsForOrientation([Ljp/Adlantis/Android/AdlantisAd;I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public static adsFromJSONInputStream(Ljava/io/InputStream;)[Ljp/Adlantis/Android/AdlantisAd;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    new-instance v1, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v1}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    instance-of v1, p0, Lorg/json/simple/JSONArray;

    if-eqz v1, :cond_0

    check-cast p0, Lorg/json/simple/JSONArray;

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v2

    new-array v3, v2, [Ljp/Adlantis/Android/AdlantisAd;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    new-instance v5, Ljp/Adlantis/Android/AdlantisAd;

    invoke-direct {v5, p0}, Ljp/Adlantis/Android/AdlantisAd;-><init>(Ljava/util/HashMap;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v3

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lorg/json/simple/JSONObject;

    if-eqz v1, :cond_4

    check-cast p0, Lorg/json/simple/JSONObject;

    const-string v1, "ads"

    invoke-virtual {p0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONArray;

    move-object v1, p0

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :cond_2
    sget-object v1, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    const-string v2, "Adlantis: no ads received (this is not an error)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v1, v3

    goto :goto_1
.end method

.method private defaultRequestBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljp/Adlantis/Android/AdManager;->defaultRequestBuilder(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method private doAdRequest(Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdManager;->isDoingAdRequest:Z

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    iput-boolean v9, p0, Ljp/Adlantis/Android/AdManager;->isDoingAdRequest:Z

    const-string v0, "3263"

    const-string v1, "0315"

    iget-object v2, p0, Ljp/Adlantis/Android/AdManager;->_testAdRequestUrls:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljp/Adlantis/Android/AdManager;->_testAdRequestUrls:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdManager;->adRequestURI(Landroid/content/Context;)Landroid/net/Uri;

    iget-object v2, p0, Ljp/Adlantis/Android/AdManager;->_testAdRequestUrls:[Ljava/lang/String;

    iget v3, p0, Ljp/Adlantis/Android/AdManager;->testAdRequestUrlIndex:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Ljp/Adlantis/Android/AdManager;->testAdRequestUrlIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ljp/Adlantis/Android/AdManager;->_testAdRequestUrls:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Ljp/Adlantis/Android/AdManager;->testAdRequestUrlIndex:I

    :goto_1
    :try_start_0
    new-instance v3, Ljp/Adlantis/Android/AdManager$1;

    invoke-direct {v3, p0}, Ljp/Adlantis/Android/AdManager$1;-><init>(Ljp/Adlantis/Android/AdManager;)V

    new-instance v4, Lorg/apache/http/HttpHost;

    iget-object v5, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v5}, Ljp/Adlantis/Android/AdNetworkConnection;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v6}, Ljp/Adlantis/Android/AdNetworkConnection;->getPort()I

    move-result v6

    const-string v7, "http"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v3

    new-instance v6, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-direct {v6, v7, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6, v4}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljp/Adlantis/Android/AdManager;->adsFromJSONInputStream(Ljava/io/InputStream;)[Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v0

    iput-object v0, p0, Ljp/Adlantis/Android/AdManager;->ads:[Ljp/Adlantis/Android/AdlantisAd;

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->ads:[Ljp/Adlantis/Android/AdlantisAd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->ads:[Ljp/Adlantis/Android/AdlantisAd;

    array-length v0, v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v0, :cond_2

    move v0, v9

    :goto_2
    iput-boolean v8, p0, Ljp/Adlantis/Android/AdManager;->isDoingAdRequest:Z

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdManager;->adRequestURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v8

    goto :goto_2
.end method

.method public static filteredAdsForOrientation([Ljp/Adlantis/Android/AdlantisAd;I)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljp/Adlantis/Android/AdlantisAd;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Ljp/Adlantis/Android/AdlantisAd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljp/Adlantis/Android/AdlantisAd;->hasAdForOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private filteredAdsForOrientation(I)[Ljp/Adlantis/Android/AdlantisAd;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->ads:[Ljp/Adlantis/Android/AdlantisAd;

    invoke-static {v0, p1}, Ljp/Adlantis/Android/AdManager;->filteredAdsForOrientation([Ljp/Adlantis/Android/AdlantisAd;I)Ljava/util/Vector;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljp/Adlantis/Android/AdlantisAd;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance()Ljp/Adlantis/Android/AdManager;
    .locals 1

    invoke-static {}, Ljp/Adlantis/Android/AdManager$AdManagerHolder;->access$100()Ljp/Adlantis/Android/AdManager;

    move-result-object v0

    return-object v0
.end method

.method private handleHttpClickRequest(Ljava/lang/String;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V
    .locals 2

    new-instance v0, Ljp/Adlantis/Android/AdManager$5;

    invoke-direct {v0, p0, p2}, Ljp/Adlantis/Android/AdManager$5;-><init>(Ljp/Adlantis/Android/AdManager;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V

    new-instance v1, Ljp/Adlantis/Android/AdManager$6;

    invoke-direct {v1, p0, v0}, Ljp/Adlantis/Android/AdManager$6;-><init>(Ljp/Adlantis/Android/AdManager;Landroid/os/Handler;)V

    new-instance v0, Ljp/Adlantis/Android/AdManager$7;

    invoke-direct {v0, p0, v1, p1}, Ljp/Adlantis/Android/AdManager$7;-><init>(Ljp/Adlantis/Android/AdManager;Lorg/apache/http/impl/client/DefaultRedirectHandler;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdManager$7;->start()V

    return-void
.end method

.method public static isGreeSdk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v3

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljp/Adlantis/Android/AdManager;

    invoke-direct {v0}, Ljp/Adlantis/Android/AdManager;-><init>()V

    invoke-virtual {v0, v1, v1}, Ljp/Adlantis/Android/AdManager;->connect(Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)V

    return-void
.end method

.method private md5_uniqueID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdManager;->uniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static sdkBuild()Ljava/lang/String;
    .locals 1

    const-string v0, "233"

    return-object v0
.end method

.method public static sdkFullVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->isGreeSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GREE Ad SDK"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->sdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->sdkBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "AdLantis SDK"

    goto :goto_0
.end method

.method public static sdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.1"

    return-object v0
.end method

.method private sendConversionTagInternal(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->conversionTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Ljp/Adlantis/Android/AdManager;->conversionTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/Adlantis/Android/AdManager;->conversionTagSent:Z

    :cond_0
    iget-boolean v0, p0, Ljp/Adlantis/Android/AdManager;->conversionTagSent:Z

    if-nez v0, :cond_1

    new-instance v0, Ljp/Adlantis/Android/AdManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Ljp/Adlantis/Android/AdManager$2;-><init>(Ljp/Adlantis/Android/AdManager;Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdManager$2;->start()V

    :cond_1
    return-void
.end method

.method private uniqueID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public adCountForOrientation(I)I
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->ads:[Ljp/Adlantis/Android/AdlantisAd;

    invoke-static {v0, p1}, Ljp/Adlantis/Android/AdManager;->adCountForOrientation([Ljp/Adlantis/Android/AdlantisAd;I)I

    move-result v0

    return v0
.end method

.method public adRequestURI(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdManager;->defaultRequestBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdNetworkConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "/sp/load_app_ads"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "callbackid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "zid"

    iget-object v2, p0, Ljp/Adlantis/Android/AdManager;->publisherID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "adl_app_flg"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager;->keywords:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "keywords"

    iget-object v2, p0, Ljp/Adlantis/Android/AdManager;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v2, "displaySize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "displayDensity"

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public adsForOrientation(I)[Ljp/Adlantis/Android/AdlantisAd;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdManager;->filteredAdsForOrientation(I)[Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljp/Adlantis/Android/AdManager;->filteredAdsForOrientation(I)[Ljp/Adlantis/Android/AdlantisAd;

    move-result-object v0

    goto :goto_0
.end method

.method public asyncImageLoader()Ljp/Adlantis/Android/AsyncImageLoader;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->asyncImageLoader:Ljp/Adlantis/Android/AsyncImageLoader;

    return-object v0
.end method

.method public clearAds()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ljp/Adlantis/Android/AdManager;->ads:[Ljp/Adlantis/Android/AdlantisAd;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)V
    .locals 4

    iget-boolean v0, p0, Ljp/Adlantis/Android/AdManager;->connectionChangeReceiverRegistered:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljp/Adlantis/Android/AdManager$ConnectionChangeReceiver;-><init>(Ljp/Adlantis/Android/AdManager;Ljp/Adlantis/Android/AdManager$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/Adlantis/Android/AdManager;->connectionChangeReceiverRegistered:Z

    :cond_0
    new-instance v0, Ljp/Adlantis/Android/AdManager$3;

    invoke-direct {v0, p0, p2}, Ljp/Adlantis/Android/AdManager$3;-><init>(Ljp/Adlantis/Android/AdManager;Ljp/Adlantis/Android/AdManager$AdManagerCallback;)V

    new-instance v1, Ljp/Adlantis/Android/AdManager$4;

    invoke-direct {v1, p0, p1, p2, v0}, Ljp/Adlantis/Android/AdManager$4;-><init>(Ljp/Adlantis/Android/AdManager;Landroid/content/Context;Ljp/Adlantis/Android/AdManager$AdManagerCallback;Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljp/Adlantis/Android/AdManager$4;->start()V

    return-void
.end method

.method public conversionTagRequestUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3

    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdManager;->defaultRequestBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljp/Adlantis/Android/AdManager;->getConversionTagTestHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "/ctt"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    const-string v1, "tid"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "output"

    const-string v2, "js"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljp/Adlantis/Android/AdManager;->getConversionTagHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "/sp/conv"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method defaultParameters(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v1, "appIdentifier"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v1, "deviceClass"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v2, "deviceOsVersionFull"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v2, "deviceOsVersion"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "simulator"

    :cond_3
    iget-object v1, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v2, "deviceFamily"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v1, "deviceBrand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v1, "deviceName"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-direct {p0, p1}, Ljp/Adlantis/Android/AdManager;->md5_uniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v2, "udid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v1, "sdkVersion"

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->sdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    const-string v1, "sdkBuild"

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->sdkBuild()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_defaultParamMap:Ljava/util/HashMap;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public defaultRequestBuilder(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri$Builder;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1}, Ljp/Adlantis/Android/AdManager;->defaultParameters(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Ljp/Adlantis/Android/AdlantisUtils;->setUriParamsFromMap(Landroid/net/Uri$Builder;Ljava/util/Map;)V

    iget-object v1, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v1, v0}, Ljp/Adlantis/Android/AdNetworkConnection;->appendParameters(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    goto :goto_0
.end method

.method public getAdNetworkConnection()Ljp/Adlantis/Android/AdNetworkConnection;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    return-object v0
.end method

.method public getConversionTagHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdNetworkConnection;->getConversionTagHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversionTagTestHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdNetworkConnection;->getConversionTagTestHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdNetworkConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->publisherID:Ljava/lang/String;

    return-object v0
.end method

.method public getTestAdRequestUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_testAdRequestUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public handleClickRequest(Ljava/lang/String;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-direct {p0, p1, p2}, Ljp/Adlantis/Android/AdManager;->handleHttpClickRequest(Ljava/lang/String;Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p2, :cond_1

    iget-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-interface {p2, p0}, Ljp/Adlantis/Android/AdManager$AdManagerRedirectUrlProcessedCallback;->redirectProcessed(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public publisherIDMetadataKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v0}, Ljp/Adlantis/Android/AdNetworkConnection;->publisherIDMetadataKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendConversionTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljp/Adlantis/Android/AdManager;->sendConversionTagInternal(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public sendConversionTagTest(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljp/Adlantis/Android/AdManager;->sendConversionTagInternal(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setAdNetworkConnection(Ljp/Adlantis/Android/AdNetworkConnection;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    return-void
.end method

.method public setGapPublisherID(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->isGreeSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager;->publisherID:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljp/Adlantis/Android/AdManager$AdlantisInvalidPublisherIDException;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdManager$AdlantisInvalidPublisherIDException;-><init>(Ljp/Adlantis/Android/AdManager;)V

    throw v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdManager;->_adNetworkConnection:Ljp/Adlantis/Android/AdNetworkConnection;

    invoke-virtual {v0, p1}, Ljp/Adlantis/Android/AdNetworkConnection;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setPublisherID(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljp/Adlantis/Android/AdManager;->isGreeSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljp/Adlantis/Android/AdManager$AdlantisInvalidPublisherIDException;

    invoke-direct {v0, p0}, Ljp/Adlantis/Android/AdManager$AdlantisInvalidPublisherIDException;-><init>(Ljp/Adlantis/Android/AdManager;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljp/Adlantis/Android/AdManager;->publisherID:Ljava/lang/String;

    return-void
.end method

.method public setTestAdRequestUrls([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljp/Adlantis/Android/AdManager;->DEBUG_TASK:Ljava/lang/String;

    const-string v1, "setting test AdRequestUrls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Ljp/Adlantis/Android/AdManager;->_testAdRequestUrls:[Ljava/lang/String;

    return-void
.end method
