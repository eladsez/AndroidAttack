.class public Lcom/parse/signpost/signature/SignatureBaseString;
.super Ljava/lang/Object;
.source "SignatureBaseString.java"


# instance fields
.field private request:Lcom/parse/signpost/http/HttpRequest;

.field private requestParameters:Lcom/parse/signpost/http/HttpParameters;


# direct methods
.method public constructor <init>(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)V
    .locals 0
    .param p1, "request"    # Lcom/parse/signpost/http/HttpRequest;
    .param p2, "requestParameters"    # Lcom/parse/signpost/http/HttpParameters;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/parse/signpost/signature/SignatureBaseString;->request:Lcom/parse/signpost/http/HttpRequest;

    .line 42
    iput-object p2, p0, Lcom/parse/signpost/signature/SignatureBaseString;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    .line 43
    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/signpost/signature/SignatureBaseString;->normalizeRequestUrl()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "normalizedUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/signpost/signature/SignatureBaseString;->normalizeRequestParameters()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "normalizedParams":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/parse/signpost/signature/SignatureBaseString;->request:Lcom/parse/signpost/http/HttpRequest;

    invoke-interface {v4}, Lcom/parse/signpost/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    invoke-static {v1}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 60
    .end local v1    # "normalizedParams":Ljava/lang/String;
    .end local v2    # "normalizedUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/parse/signpost/exception/OAuthMessageSignerException;

    invoke-direct {v3, v0}, Lcom/parse/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public normalizeRequestParameters()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v4, p0, Lcom/parse/signpost/signature/SignatureBaseString;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    if-nez v4, :cond_0

    .line 97
    const-string v4, ""

    .line 116
    :goto_0
    return-object v4

    .line 100
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/parse/signpost/signature/SignatureBaseString;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {v4}, Lcom/parse/signpost/http/HttpParameters;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "param":Ljava/lang/String;
    const-string v4, "oauth_signature"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "realm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_3
    if-lez v0, :cond_4

    .line 111
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_4
    iget-object v4, p0, Lcom/parse/signpost/signature/SignatureBaseString;->requestParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {v4, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public normalizeRequestUrl()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 66
    new-instance v5, Ljava/net/URI;

    iget-object v7, p0, Lcom/parse/signpost/signature/SignatureBaseString;->request:Lcom/parse/signpost/http/HttpRequest;

    invoke-interface {v7}, Lcom/parse/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 67
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "authority":Ljava/lang/String;
    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v7

    const/16 v8, 0x50

    if-eq v7, v8, :cond_5

    .line 70
    :cond_0
    const-string v7, "https"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v7

    const/16 v8, 0x1bb

    if-eq v7, v8, :cond_5

    :cond_1
    move v1, v6

    .line 71
    .local v1, "dropPort":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 73
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 75
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 78
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {v5}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    .line 80
    :cond_3
    const-string v3, "/"

    .line 83
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 70
    .end local v1    # "dropPort":Z
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method
