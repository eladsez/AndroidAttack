.class public Lcom/parse/signpost/signature/QueryStringSigningStrategy;
.super Ljava/lang/Object;
.source "QueryStringSigningStrategy.java"

# interfaces
.implements Lcom/parse/signpost/signature/SigningStrategy;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeSignature(Ljava/lang/String;Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)Ljava/lang/String;
    .locals 6
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/parse/signpost/http/HttpRequest;
    .param p3, "requestParameters"    # Lcom/parse/signpost/http/HttpParameters;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/parse/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 26
    const-string v5, "oauth_signature"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 25
    invoke-static {v2, v3}, Lcom/parse/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "oauth_token"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "oauth_token"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_0
    const-string v2, "oauth_callback"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "oauth_callback"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_1
    const-string v2, "oauth_verifier"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "oauth_verifier"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_2
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "oauth_consumer_key"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, "oauth_version"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "oauth_signature_method"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "oauth_timestamp"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "oauth_nonce"

    invoke-virtual {p3, v2}, Lcom/parse/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "signedUrl":Ljava/lang/String;
    invoke-interface {p2, v1}, Lcom/parse/signpost/http/HttpRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 58
    return-object v1
.end method
