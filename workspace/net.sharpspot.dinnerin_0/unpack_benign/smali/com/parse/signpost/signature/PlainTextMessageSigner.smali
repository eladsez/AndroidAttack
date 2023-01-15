.class public Lcom/parse/signpost/signature/PlainTextMessageSigner;
.super Lcom/parse/signpost/signature/OAuthMessageSigner;
.source "PlainTextMessageSigner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parse/signpost/signature/OAuthMessageSigner;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "PLAINTEXT"

    return-object v0
.end method

.method public sign(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpParameters;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Lcom/parse/signpost/http/HttpRequest;
    .param p2, "requestParams"    # Lcom/parse/signpost/http/HttpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/parse/signpost/signature/PlainTextMessageSigner;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/parse/signpost/signature/PlainTextMessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
