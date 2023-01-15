.class public Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;
.super Ljava/lang/Object;
.source "BeadCookieStoreRunnable.java"

# interfaces
.implements Ljp/beyond/sdk/utilities/ConnectionUtil$CookieStoreInterface;


# static fields
.field private static final COOKIE_PATH:Ljava/lang/String; = "/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private saveCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 97
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "cookieString":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    const-string v3, ".exit-ad.com"

    invoke-virtual {v2, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expiry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    const-string v3, ".exit-ad.com"

    invoke-virtual {v2, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "cookieString":Ljava/lang/String;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljp/beyond/sdk/Bead;->TAG:Ljava/lang/String;

    const-string v3, "cookie error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public receiveCookie(Landroid/content/Context;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 76
    invoke-virtual {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    .line 78
    .local v1, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v1, :cond_1

    .line 88
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 86
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-direct {p0, v0}, Ljp/beyond/sdk/utilities/BeadCookieStoreRunnable;->saveCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0
.end method

.method public setCookie(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 116
    invoke-static {}, Ljp/beyond/sdk/utilities/ConnectionUtil;->getCookie()Ljava/util/Map;

    move-result-object v2

    .line 118
    .local v2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 143
    :cond_0
    return-void

    .line 123
    :cond_1
    const/4 v3, 0x0

    .line 124
    .local v3, "expiryDate":Ljava/util/Date;
    invoke-static {v2}, Ljp/beyond/sdk/utilities/ConnectionUtil;->getCookieExpiry(Ljava/util/Map;)J

    move-result-wide v4

    .line 126
    .local v4, "expiryTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 127
    new-instance v3, Ljava/util/Date;

    .end local v3    # "expiryDate":Ljava/util/Date;
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 130
    .restart local v3    # "expiryDate":Ljava/util/Date;
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    .local v1, "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "bcc":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v6, ".exit-ad.com"

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 135
    const-string v6, "/"

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 137
    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    :cond_3
    move-object v6, p2

    .line 141
    check-cast v6, Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0
.end method

.method public setCookie(Landroid/content/Context;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 40
    invoke-static {}, Ljp/beyond/sdk/utilities/ConnectionUtil;->getCookie()Ljava/util/Map;

    move-result-object v2

    .line 42
    .local v2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 67
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v3, 0x0

    .line 48
    .local v3, "expiryDate":Ljava/util/Date;
    invoke-static {v2}, Ljp/beyond/sdk/utilities/ConnectionUtil;->getCookieExpiry(Ljava/util/Map;)J

    move-result-wide v4

    .line 50
    .local v4, "expiryTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 51
    new-instance v3, Ljava/util/Date;

    .end local v3    # "expiryDate":Ljava/util/Date;
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 54
    .restart local v3    # "expiryDate":Ljava/util/Date;
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    .local v1, "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "bcc":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v6, ".exit-ad.com"

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 59
    const-string v6, "/"

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 61
    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 65
    :cond_3
    invoke-virtual {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0
.end method
