.class public Lanywheresoftware/b4a/http/HttpClientWrapper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$CheckForReinitialize;


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "HttpClient"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 1.36f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;,
        Lanywheresoftware/b4a/http/HttpClientWrapper$HttpResponeWrapper;,
        Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;,
        Lanywheresoftware/b4a/http/HttpClientWrapper$NaiveTrustManager;
    }
.end annotation


# static fields
.field private static final maxConnectionToRoute:I = 0x5


# instance fields
.field public client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field

.field private eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LIBRARY_DOC()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/http/HttpClientWrapper;Ljava/lang/Runnable;Lorg/apache/http/client/methods/HttpUriRequest;Lanywheresoftware/b4a/BA;I)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Lanywheresoftware/b4a/http/HttpClientWrapper;->executeWithTimeout(Ljava/lang/Runnable;Lorg/apache/http/client/methods/HttpUriRequest;Lanywheresoftware/b4a/BA;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/http/HttpClientWrapper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method private executeWithTimeout(Ljava/lang/Runnable;Lorg/apache/http/client/methods/HttpUriRequest;Lanywheresoftware/b4a/BA;I)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "handler"    # Ljava/lang/Runnable;
    .param p2, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "ba"    # Lanywheresoftware/b4a/BA;
    .param p4, "TaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    :try_start_0
    iget-object v2, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "response":Lorg/apache/http/HttpResponse;
    move-object v2, v1

    .line 326
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 318
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 319
    .local v0, "cpte":Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    sget-object v2, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v3, Lanywheresoftware/b4a/http/HttpClientWrapper$2;

    invoke-direct {v3, p0, p1, p4}, Lanywheresoftware/b4a/http/HttpClientWrapper$2;-><init>(Lanywheresoftware/b4a/http/HttpClientWrapper;Ljava/lang/Runnable;I)V

    .line 324
    const-wide/16 v4, 0x7d0

    .line 319
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initializeShared(Ljava/lang/String;Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 7
    .param p1, "EventName"    # Ljava/lang/String;
    .param p2, "ssl"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .prologue
    .line 103
    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->eventName:Ljava/lang/String;

    .line 104
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 106
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 105
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 108
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, p2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 107
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 109
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 110
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    new-instance v3, Lanywheresoftware/b4a/http/HttpClientWrapper$1;

    invoke-direct {v3, p0}, Lanywheresoftware/b4a/http/HttpClientWrapper$1;-><init>(Lanywheresoftware/b4a/http/HttpClientWrapper;)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 117
    const-wide/16 v3, 0x64

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 118
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 120
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 121
    return-void
.end method


# virtual methods
.method public Execute(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;I)Z
    .locals 6
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "HttpRequest"    # Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;
    .param p3, "TaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/http/HttpClientWrapper;->ExecuteCredentials(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ExecuteCredentials(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "HttpRequest"    # Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;
    .param p3, "TaskId"    # I
    .param p4, "UserName"    # Ljava/lang/String;
    .param p5, "Password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {p0, p3}, Lanywheresoftware/b4a/BA;->isTaskRunning(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 184
    :goto_0
    return v1

    .line 182
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lanywheresoftware/b4a/http/HttpClientWrapper$ExecuteHelper;-><init>(Lanywheresoftware/b4a/http/HttpClientWrapper;Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/http/HttpClientWrapper$HttpUriRequestWrapper;ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0, p0, p3}, Lanywheresoftware/b4a/BA;->submitRunnable(Ljava/lang/Runnable;Ljava/lang/Object;I)Ljava/util/concurrent/Future;

    .line 184
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public Initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "EventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/http/HttpClientWrapper;->initializeShared(Ljava/lang/String;Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    .line 101
    return-void
.end method

.method public InitializeAcceptAll(Ljava/lang/String;)V
    .locals 9
    .param p1, "EventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    new-array v3, v8, [Ljavax/net/ssl/TrustManager;

    new-instance v4, Lanywheresoftware/b4a/http/HttpClientWrapper$NaiveTrustManager;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lanywheresoftware/b4a/http/HttpClientWrapper$NaiveTrustManager;-><init>(Lanywheresoftware/b4a/http/HttpClientWrapper$NaiveTrustManager;)V

    aput-object v4, v3, v7

    .line 128
    .local v3, "tm":[Ljavax/net/ssl/TrustManager;
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 129
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    new-array v4, v7, [Ljavax/net/ssl/KeyManager;

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v4, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 130
    const-class v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljavax/net/ssl/SSLSocketFactory;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 131
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/apache/http/conn/ssl/SSLSocketFactory;>;"
    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 132
    .local v2, "ssl":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 133
    invoke-direct {p0, p1, v2}, Lanywheresoftware/b4a/http/HttpClientWrapper;->initializeShared(Ljava/lang/String;Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    .line 135
    return-void
.end method

.method public IsInitialized()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetHttpParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "Name"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/Object;

    .prologue
    .line 144
    iget-object v0, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 145
    return-void
.end method

.method public SetProxy(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "Host"    # Ljava/lang/String;
    .param p2, "Port"    # I
    .param p3, "Scheme"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    .local v0, "hh":Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 155
    return-void
.end method

.method public SetProxy2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "Host"    # Ljava/lang/String;
    .param p2, "Port"    # I
    .param p3, "Scheme"    # Ljava/lang/String;
    .param p4, "Username"    # Ljava/lang/String;
    .param p5, "Password"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    .local v0, "hh":Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    new-instance v2, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 162
    new-instance v3, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v3, p4, p5}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 163
    iget-object v1, p0, Lanywheresoftware/b4a/http/HttpClientWrapper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 164
    return-void
.end method
