.class public Lcom/parse/signpost/basic/DefaultOAuthProvider;
.super Lcom/parse/signpost/AbstractOAuthProvider;
.source "DefaultOAuthProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestTokenEndpointUrl"    # Ljava/lang/String;
    .param p2, "accessTokenEndpointUrl"    # Ljava/lang/String;
    .param p3, "authorizationWebsiteUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/signpost/AbstractOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    .locals 1
    .param p1, "request"    # Lcom/parse/signpost/http/HttpRequest;
    .param p2, "response"    # Lcom/parse/signpost/http/HttpResponse;

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/parse/signpost/http/HttpRequest;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 57
    .local v0, "connection":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 60
    :cond_0
    return-void
.end method

.method protected createRequest(Ljava/lang/String;)Lcom/parse/signpost/http/HttpRequest;
    .locals 3
    .param p1, "endpointUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 42
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 44
    const-string v1, "Content-Length"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/parse/signpost/basic/HttpURLConnectionRequestAdapter;

    invoke-direct {v1, v0}, Lcom/parse/signpost/basic/HttpURLConnectionRequestAdapter;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v1
.end method

.method protected sendRequest(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpResponse;
    .locals 2
    .param p1, "request"    # Lcom/parse/signpost/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/parse/signpost/http/HttpRequest;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 50
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 51
    new-instance v1, Lcom/parse/signpost/basic/HttpURLConnectionResponseAdapter;

    invoke-direct {v1, v0}, Lcom/parse/signpost/basic/HttpURLConnectionResponseAdapter;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v1
.end method
