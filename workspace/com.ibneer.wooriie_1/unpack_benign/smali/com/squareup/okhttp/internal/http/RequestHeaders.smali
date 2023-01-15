.class public final Lcom/squareup/okhttp/internal/http/RequestHeaders;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private acceptEncoding:Ljava/lang/String;

.field private connection:Ljava/lang/String;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private hasAuthorization:Z

.field private final headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private host:Ljava/lang/String;

.field private ifModifiedSince:Ljava/lang/String;

.field private ifNoneMatch:Ljava/lang/String;

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private onlyIfCached:Z

.field private proxyAuthorization:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "headers"    # Lcom/squareup/okhttp/internal/http/RawHeaders;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxAgeSeconds:I

    .line 32
    iput v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxStaleSeconds:I

    .line 33
    iput v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->minFreshSeconds:I

    .line 51
    iput v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:I

    .line 63
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->uri:Ljava/net/URI;

    .line 64
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 66
    new-instance v1, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;

    invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;-><init>(Lcom/squareup/okhttp/internal/http/RequestHeaders;)V

    .line 82
    .local v1, "handler":Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 83
    invoke-virtual {p2, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-static {v3, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;)V

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const-string v4, "Pragma"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    const-string v4, "no-cache"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iput-boolean v5, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->noCache:Z

    goto :goto_1

    .line 91
    :cond_2
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    goto :goto_1

    .line 93
    :cond_3
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_4
    const-string v4, "Authorization"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    iput-boolean v5, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasAuthorization:Z

    goto :goto_1

    .line 97
    :cond_5
    const-string v4, "Content-Length"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v4

    goto :goto_1

    .line 102
    :cond_6
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 103
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_7
    const-string v4, "User-Agent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 105
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    goto :goto_1

    .line 106
    :cond_8
    const-string v4, "Host"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 107
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->host:Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_9
    const-string v4, "Connection"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 109
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_a
    const-string v4, "Accept-Encoding"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 111
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_b
    const-string v4, "Content-Type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 113
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    goto/16 :goto_1

    .line 114
    :cond_c
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    goto/16 :goto_1

    .line 118
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method static synthetic access$002(Lcom/squareup/okhttp/internal/http/RequestHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxStaleSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->minFreshSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/squareup/okhttp/internal/http/RequestHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->onlyIfCached:Z

    return p1
.end method


# virtual methods
.method public addCookies(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "allCookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    .local v2, "key":Ljava/lang/String;
    const-string v3, "Cookie"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Cookie2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 289
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getAcceptEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIfModifiedSince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public getIfNoneMatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getMaxStaleSeconds()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxStaleSeconds:I

    return v0
.end method

.method public getMinFreshSeconds()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->minFreshSeconds:I

    return v0
.end method

.method public getProxyAuthorization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorization()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasAuthorization:Z

    return v0
.end method

.method public hasConditions()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .prologue
    .line 125
    const-string v0, "close"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    .line 121
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->noCache:Z

    return v0
.end method

.method public isOnlyIfCached()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->onlyIfCached:Z

    return v0
.end method

.method public setAcceptEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setChunked()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "chunked"

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "connection"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Connection"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setContentLength(I)V
    .locals 3
    .param p1, "contentLength"    # I

    .prologue
    .line 209
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:I

    .line 214
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->host:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "formattedDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifNoneMatch"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    .line 222
    return-void
.end method
